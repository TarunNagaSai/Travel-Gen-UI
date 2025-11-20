import 'package:education_gen_ui/src/chat/widgets/trip_card.dart';
import 'package:genui/genui.dart';
import 'package:json_schema_builder/json_schema_builder.dart';

final tripCard = CatalogItem(
  name: "TripCard",
  dataSchema: _schema,
  widgetBuilder: (CatalogItemContext context) {
    final json = context.data as Map<String, dynamic>;
    final title = json['title'] as String;
    final description = json['description'] as String;
    final imageUrl = json['imageUrl'] as String;
    final activities =
        (json['activities'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [];
    final bestTime = json['bestTimeToVisit'] as String?;

    return TripCard(
      title: title,
      description: description,
      imageUrl: imageUrl,
      activities: activities,
      bestTimeToVisit: bestTime,
    );
  },
);

final _schema = S.object(
  properties: {
    'title': S.string(description: 'Title of the travel destination'),
    'description': S.string(
      description: 'Description of the travel destination',
    ),
    'imageUrl': S.string(
      description: 'URL of an image representing the destination',
    ),
    'bestTimeToVisit': S.string(
      description: 'Best time to visit the destination',
    ),
    'activities': S.list(
      description: 'List of recommended activities at the destination',
      items: S.string(),
    ),
  },
  required: ['title', 'description', 'imageUrl', 'activities'],
);
