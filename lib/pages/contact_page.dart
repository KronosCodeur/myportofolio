import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ContactPage extends StatefulWidget {
   ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List listOfProject = [
    {"nom":"Dashbord Admin","link":"voici mon lien",},
    {"nom":"Dashbord Admin","link":"voici mon lien",},
    {"nom":"Dashbord Admin","link":"voici mon lien",},
    {"nom":"Dashbord Admin","link":"voici mon lien",},
  ];

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
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int index=0;index<listOfProject.length;index++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    width: 300,
                    height: 300,
                    color: Colors.cyan,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            border: Border.all(color: Colors.deepOrange,width: 2)
                          ),
                        ),
                        Text("data"),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
