import 'package:education_gen_ui/chat/bloc/ai_bloc.dart';
import 'package:education_gen_ui/firebase_options.dart';
import 'package:education_gen_ui/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:education_gen_ui/const/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => AiBloc(),
      child: MaterialApp.router(
        title: 'Edutech Gen UI',
        routerConfig: _appRouter.config(),
        theme: MaterialTheme(textTheme).light(),
        darkTheme: MaterialTheme(textTheme).dark(),
        themeMode: ThemeMode.system,
      ),
    );
  }
}
