import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myportofolio/github_service.dart';
import 'package:myportofolio/pages/github.dart';
class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  List result = [];
  int nbItems=0;
  @override
  void initState() {
    setState(() {
      fetchGitHubProjects("KronosCodeur");
    });
  }
  Future<List<dynamic>> fetchGitHubProjects(String username) async {
    final response = await http.get(
      Uri.parse('https://api.github.com/users/$username/repos'),
      headers: {
        'Authorization': '',
      },
    );

    if (response.statusCode == 200) {
      List<dynamic> data = [];
      List projects = [];
      data = jsonDecode(response.body);
      for (var item in data) {
        final name = item['name'];
        final url = item['html_url'];
        final description = item['description'] ?? '';
        final language=item['language'];
        final readmeUrl = Uri.https('raw.githubusercontent.com', '$username/${name}/main/README.md');
        final readmeResponse = await http.get(readmeUrl);
        final readmeData = readmeResponse.body;
        final photoUrls = extractPhotoUrls(readmeData);
        if(language=="Dart") {
          projects.add({
            "name": name,
            "url": url,
            "description": description,
            "language": language,
            "photos":photoUrls
          });
        }
      }
      setState(() {
        result+=projects;
        print(result);
      });
      nbItems+=projects.length;
      return projects;
    } else {
      throw Exception('Failed to fetch GitHub projects');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.symmetric(
        horizontal: size.height*0.05,
        vertical:size.width*0.05,
      ),
      decoration: BoxDecoration(
          border: Border.symmetric(horizontal: BorderSide(width: 2,color: Colors.white))
      ),
      child: result.isNotEmpty?SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(int index=0;index<nbItems~/2;index++)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: CupertinoColors.systemOrange)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                border: Border.all(color: Colors.deepOrange,width: 2)
                            ),
                          ),
                          Text("${result[index]["name"]}"),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int j=(nbItems~/2)+1;j<nbItems;j++)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: CupertinoColors.systemOrange)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.teal,
                              ),
                            ),
                            Text("${result[j]["language"]}"),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ):CircularProgressIndicator(color: CupertinoColors.systemOrange,strokeWidth: 2,),
    );
  }


}
