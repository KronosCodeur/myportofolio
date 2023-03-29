import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportofolio/widgets/autotype_text.dart';
import 'package:myportofolio/widgets/container_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String pdfUrl = 'assets/cv.pdf';
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenSize.height*0.05,
          vertical:screenSize.width*0.05,
      ),
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        //color: CupertinoColors.systemFill,
        border: Border.symmetric(horizontal: BorderSide(width: 2,color: Colors.white))
      ),
      child: Row(
        mainAxisAlignment: screenSize.width>900?MainAxisAlignment.center:MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: screenSize.width>700?screenSize.width*0.4:screenSize.width*0.5,
            height: screenSize.height*0.7,
            child: screenSize.width<570?Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text("Hello, It's Me",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                Text("Sam Arris PIRALI",style: GoogleFonts.outfit(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                SizedBox(height: 5,),
                screenSize.width>700?Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("And I'm a",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                    SizedBox(width: 10,),
                    AnimatedTextExample(),
                  ],
                ):Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("And I'm a",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400)),
                    SizedBox(width: 10,),
                    AnimatedTextExample(),
                  ],
                ),
                SizedBox(height: 5,),
                Wrap(
                  spacing: 5,
                  runAlignment: WrapAlignment.start,
                  alignment: WrapAlignment.center,
                  children: [
                    Text("Créez des ",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("expériences mobiles & webs ",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("innovantes avec mon ",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("expertise Flutter & SpringBoot.",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("Découvrez mes projets et mon savoir-faire sur mon ",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("portfolio",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text(" !",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                  ],
                ),
              ],
            ):Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello, It's Me",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.center),
                SizedBox(height: 5,),
                Text("Sam Arris PIRALI",style: GoogleFonts.outfit(color: Colors.white,fontSize: screenSize.width*0.03,fontWeight: FontWeight.bold),textAlign: TextAlign.center,softWrap: true,),
                SizedBox(height: 5,),
                screenSize.width>900?Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("And I'm a",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.center),
                    SizedBox(width: 10,),
                    AnimatedTextExample(),
                  ],
                ):Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("And I'm a",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),textAlign: TextAlign.center),
                    SizedBox(width: 10,),
                    AnimatedTextExample(),
                  ],
                ),
                SizedBox(height: 5,),
                Wrap(
                  spacing: 5,
                  runAlignment: WrapAlignment.start,
                  alignment: WrapAlignment.center,
                  children: [
                    Text("Créez des ",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("expériences mobiles & webs ",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("innovantes avec mon ",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("expertise Flutter & SpringBoot.",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("Découvrez mes projets et mon savoir-faire sur mon ",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text("portfolio",style: GoogleFonts.outfit(color: Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                    Text(" !",style: GoogleFonts.outfit(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,softWrap:true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          screenSize.width>822?SizedBox(width: screenSize.width*0.15,):SizedBox(width: 0,),
          AnimatedContainerWidget(
            widget: GlassmorphicContainer(
              width: screenSize.width*0.3,
              height: screenSize.height*0.6,
              borderRadius: 20,
              blur: 20,
              alignment: Alignment.center,
              border: 10,
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
                decoration: BoxDecoration(
                  border: Border.all(color: CupertinoColors.systemOrange,width: 2,),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 5.0,
                      color: Colors.grey,
                      offset: Offset(1, 1),
                      blurRadius: 1.2,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage("assets/tof2.jpg"),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                    opacity: 0.6,
                    alignment: Alignment.center
                  )
                ),
                // Ajoutez ici les propriétés du container
              ),
            ),
          ),
          //SizedBox(width: screenSize.width*0.1,)
        ],
      ),
    );
  }
}
