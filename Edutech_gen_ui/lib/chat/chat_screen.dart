import 'package:auto_route/auto_route.dart';
import 'package:education_gen_ui/catalogs/trip_card.dart';
import 'package:education_gen_ui/models/chat_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genui/genui.dart' hide ChatMessage;
import 'package:genui_firebase_ai/genui_firebase_ai.dart';
import 'package:education_gen_ui/chat/bloc/ai_bloc.dart';
import 'package:education_gen_ui/chat/widgets/chat_empty_state.dart';
import 'package:education_gen_ui/chat/widgets/chat_message_input.dart';
import 'package:education_gen_ui/chat/widgets/chat_message_list.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  late final GenUiConversation conversation;

  final List<String> surfaceIds = <String>[];

  @override
  void initState() {
    super.initState();

    final Catalog catalog = CoreCatalogItems.asCatalog();
    final generator = FirebaseAiContentGenerator(
      catalog: catalog,
      systemInstruction: ''' 
      Simulate the full functionality of the "Explain & Learn" app based on the following user request:
      "Explain the concept of quantum entanglement and share a relevant video."
      Your response must follow these steps precisely:
      Explanation: Provide a clear, concise, and easy-to-understand explanation of quantum entanglement.
      Quiz Suggestion: Suggest a quiz is available based on the summary.
      Quiz Generation: Present a 5-question multiple-choice quiz based on the summary/explanation. Provide four options for each question, with the correct answer clearly marked (e.g., using bolding or an asterisk).
      Results Simulation: After the quiz, simulate a hypothetical user score out of 5 and provide a brief, encouraging comment.
      Conclusion & Notes: Conclude by confirming the main explanation and summary have been saved as "Notes" and the quiz results have been saved to "Local Storage."
      When I send a message, generate new UI that displays the travel information I requested.
          ''',
    );
    conversation = GenUiConversation(
      genUiManager: GenUiManager(catalog: catalog),
      contentGenerator: generator,
      onSurfaceAdded: _onSurfaceAdded,
      onSurfaceDeleted: _onSurfaceDeleted,
    );
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onSurfaceAdded(SurfaceAdded surface) {
    setState(() {
      surfaceIds.add(surface.surfaceId);
    });
  }

  void _onSurfaceDeleted(SurfaceRemoved surface) {
    setState(() {
      surfaceIds.remove(surface.surfaceId);
    });
  }

  // void _scrollToBottom() {
  //   if (_scrollController.hasClients) {
  //     WidgetsBinding.instance.addPostFrameCallback((_) {
  //       _scrollController.animateTo(
  //         _scrollController.position.maxScrollExtent,
  //         duration: const Duration(milliseconds: 300),
  //         curve: Curves.easeOut,
  //       );
  //     });
  //   }
  // }

  Future<void> _handleSendMessage(String text) async {
    final msg = text.trim();
    if (msg.isNotEmpty) {
      _messageController.clear();
      return conversation.sendRequest(UserMessage.text(text));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Gen AI'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              context.read<AiBloc>().add(ResetMessagesEvent(context: context));
            },
          ),
        ],
      ),
      body: BlocConsumer<AiBloc, AiState>(
        listener: (context, state) {
          // Auto-scroll when new content arrives during streaming
          if (state is AiLoadingState || state is AiLoadedState) {
            // _scrollToBottom();
          }
        },
        builder: (context, state) {
          List<ChatMessage> messages = [];
          bool isLoading = false;

          if (state is AiLoadedState) {
            messages = state.messages;
          } else if (state is AiLoadingState) {
            messages = state.messages;
            isLoading = true;
          } else if (state is AiErrorState) {
            messages = state.messages;
          } else if (state is AiInitializingState) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              Expanded(
                child: ChatMessageList(
                  messages: messages,
                  isLoading: isLoading,
                  scrollController: _scrollController,
                  surfaceIds: surfaceIds,
                  conversation: conversation,
                ),
              ),
              ChatMessageInput(
                controller: _messageController,
                onSendMessage: _handleSendMessage,
              ),
            ],
          );
        },
      ),
    );
  }
}
