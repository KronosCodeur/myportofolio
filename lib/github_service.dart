import 'package:http/http.dart' as http;
import 'dart:convert';
class Project {
  final String name;
  final String url;
  final String description;
  final List<String> photos;

  @override
  String toString() {
    return 'Project{name: $name, url: $url, description: $description, photos: $photos}';
  }

  Project({
    required this.name,
    required this.url,
    required this.description,
    required this.photos,
  });
}

Future<List<Project>> fetchingGitHubProjects(String username) async {
  final url = Uri.https('api.github.com', '/users/$username/repos');
  final response = await http.get(
    url,
    headers: {
      'Authorization': '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',
    },
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);

    List<Project> projects = [];

    for (var item in data) {
      final name = item['name'];
      final url = item['html_url'];
      final description = item['description'] ?? '';
      final readmeUrl = Uri.https('raw.githubusercontent.com', '$username/${name}/main/README.md');

      // fetch README
      final readmeResponse = await http.get(readmeUrl);

      if (readmeResponse.statusCode == 200) {
        final readmeData = readmeResponse.body;
        final photoUrls = extractPhotoUrls(readmeData);
        final project = Project(
          name: name,
          url: url,
          description: description,
          photos: photoUrls,
        );

        projects.add(project);
      }
    }
    projects.forEach((element) {
      print(element.toString());
    });
    return projects;
  } else {
    throw Exception('Failed to load projects');
  }
}

List<String> extractPhotoUrls(String readmeData) {
  final pattern = RegExp(r'!\[(.*?)\]\((.*?)\)');
  final matches = pattern.allMatches(readmeData);

  List<String> photoUrls = [];

  for (Match match in matches) {
    final url = match.group(2);
    photoUrls.add(url!);
  }

  return photoUrls;
}
