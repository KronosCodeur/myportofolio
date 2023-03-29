import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.symmetric(
        horizontal: size.height*0.03,
        vertical:size.width*0.03,
      ),
      decoration: BoxDecoration(
          border: Border.symmetric(horizontal: BorderSide(width: 2,color: Colors.white))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("My Skills",style: GoogleFonts.cinzelDecorative(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.systemOrange,
          ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 215,
                height: 215,
                child: Transform.rotate(
                    angle: 45*pi/180,
                  child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                    child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Languages",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/dart2.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Dart",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/kotlin.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Kotlin",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/html.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Html",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/css2.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("CSS",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 215,
                height: 215,
                child: Transform.rotate(
                    angle: 45*pi/180,
                  child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                    child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Frameworks",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/flutter2.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Flutter",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/spring.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Spring Boot ",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 215,
                height: 215,
                child: Transform.rotate(
                    angle: 45*pi/180,
                  child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                    child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Databases",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/firebase.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Firebase",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/sql.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Mysql",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 215,
                height: 215,
                child: Transform.rotate(
                    angle: 45*pi/180,
                  child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                    child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("IDEs",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/intelliJ2.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("IntelliJ Idea",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/android-studio2.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Android Studio",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/datagrip.jpeg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("DataGrip",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 215,
                  height: 215,
                  child: Transform.rotate(
                    angle: 45*pi/180,
                    child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                      child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("VCS",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: CupertinoColors.systemOrange,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/git.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Git",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/github.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Github",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/gitlab.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("GitLab",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 215,
                  height: 215,
                  child: Transform.rotate(
                    angle: 45*pi/180,
                    child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                      child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Conceptions",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/flutterflow.jpeg"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("FlutterFlow",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: CupertinoColors.systemOrange,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/uml.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Draw.io",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/photoshop.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Photoshop",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 215,
                  height: 215,
                  child: Transform.rotate(
                    angle: 45*pi/180,
                    child: GlassmorphicContainer(
                      width: 215,
                      height: 215,
                      borderRadius: 20,
                      blur: 20,
                      alignment: Alignment.center,
                      border: 2,
                      linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.1),
                          Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ],
                      ),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.9),
                          Color((0xFFFFFFFF)).withOpacity(0.9),
                        ],
                      ),
                      child: Transform.rotate(
                        angle: -45*pi/180,
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("OS",style: GoogleFonts.outfit(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),textAlign: TextAlign.center,),
                              SizedBox(height: 15,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage("assets/windows.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Windows",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(image: AssetImage("assets/linux.png"),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Linux",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 15,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ],
      )
    );
  }
}
