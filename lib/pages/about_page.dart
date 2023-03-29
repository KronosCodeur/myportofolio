import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("About Me",style: GoogleFonts.cinzelDecorative(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: CupertinoColors.systemOrange,
          ),
            textAlign: TextAlign.center,
          ),
      GlassmorphicContainer(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        width: size.width*0.6,
        height: size.height*0.6,
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
          padding: EdgeInsets.all(size.width*0.02),
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 4.0,
            runSpacing: 3.0,
            children: <Widget>[
              Text(
                'I am a Fullstack developer specializing in ',
                style: GoogleFonts.outfit(fontSize:size.width>900?size.width>900?size.width*0.02:size.width*0.03:size.width*0.03,
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                'Flutter',
                style: GoogleFonts.outfit(fontSize:size.width>900?size.width*0.02:size.width*0.03,
                  color: CupertinoColors.systemOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                ' and ',
                style: GoogleFonts.outfit(fontSize:size.width>900?size.width*0.02:size.width*0.03,
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'Spring Boot.',
                style: GoogleFonts.outfit(fontSize:size.width>900?size.width*0.02:size.width*0.03,
                  color: CupertinoColors.systemOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                'At the age of 19, I am passionate about mobile development and enjoy creating innovative applications that meet the needs of my clients. As an infographer and CSS designer, I am also able to bring my ideas to life in a creative way. I look forward to working with you and creating amazing projects together.',
                style: GoogleFonts.outfit(fontSize:size.width>900?size.width*0.02:size.width*0.03,
                  color: CupertinoColors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),

        ],
      ),
    );
  }
}
