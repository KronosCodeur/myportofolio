import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
class ServicesPages extends StatelessWidget {
  const ServicesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      padding: EdgeInsets.symmetric(
        horizontal: size.height*0.04,
        vertical:size.width*0.04,
      ),
      decoration: BoxDecoration(
          border: Border.symmetric(horizontal: BorderSide(width: 2,color: Colors.white))
      ),
      child: Column(
        children: [
          Text("My Services",style: GoogleFonts.cinzelDecorative(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.systemOrange,
          ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GlassmorphicContainer(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                width: size.width*0.18,
                height: size.height*0.65,
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
                child: Container(
                  padding: EdgeInsets.all(size.width*0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(CupertinoColors.systemOrange, BlendMode.srcIn),
                              child: Image.asset("assets/mobile-development.png"), // Remplacez "image.png" par le nom de votre fichier PNG
                            ),
                          ),
                          Text("Mobile Development",
                            style: GoogleFonts.cinzelDecorative(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          )
                        ],
                      ),

                      Text("Discover my specialized mobile development services in Flutter, for high-performing and aesthetically pleasing Android and iOS applications. Contact me to create an immersive and unique user experience for your business.",style: GoogleFonts.outfit(
                        color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ],
                  ),
                )
              ),
              GlassmorphicContainer(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                width: size.width*0.18,
                height: size.height*0.65,
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
                child: Container(
                  padding: EdgeInsets.all(size.width*0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(CupertinoColors.systemOrange, BlendMode.srcIn),
                              child: Image.asset("assets/coding.png"), // Remplacez "image.png" par le nom de votre fichier PNG
                            ),
                          ),
                          Text("Web Development",
                            style: GoogleFonts.cinzelDecorative(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          )
                        ],
                      ),

                      Text("Discover my web development services using Flutter for fluid and high-performing applications. Bring your project to life by choosing high-quality expertise.",style: GoogleFonts.outfit(
                        color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ],
                  ),
                )
              ),
              GlassmorphicContainer(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                width: size.width*0.18,
                height: size.height*0.65,
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
                child: Container(
                  padding: EdgeInsets.all(size.width*0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(CupertinoColors.systemOrange, BlendMode.srcIn),
                              child: Image.asset("assets/backend.png"), // Remplacez "image.png" par le nom de votre fichier PNG
                            ),
                          ),
                          Text("Backend Development",
                            style: GoogleFonts.cinzelDecorative(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          )
                        ],
                      ),

                      Text("Discover my backend development services with Spring Boot and let me assist you in creating powerful and scalable solutions for your business. Please do not hesitate to contact me now to discuss your project.",style: GoogleFonts.outfit(
                        color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ],
                  ),
                )
              ),
              GlassmorphicContainer(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3,
                ),
                  width: size.width*0.18,
                  height: size.height*0.65,
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
                child: Container(
                  padding: EdgeInsets.all(size.width*0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(CupertinoColors.systemOrange, BlendMode.srcIn),
                              child: Image.asset("assets/sketch.png"), // Remplacez "image.png" par le nom de votre fichier PNG
                            ),
                          ),
                          Text("Design",
                            style: GoogleFonts.cinzelDecorative(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                            softWrap: true,
                          )
                        ],
                      ),

                      Text("Discover my professional design services with Photoshop. From photo retouching to graphic creation, allow me to assist you in bringing your ideas to life.",style: GoogleFonts.outfit(
                        color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
