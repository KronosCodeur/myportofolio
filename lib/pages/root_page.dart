import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportofolio/pages/about_page.dart';
import 'package:myportofolio/pages/contact_page.dart';
import 'package:myportofolio/pages/home_page.dart';
import 'package:myportofolio/pages/portfolio_page.dart';
import 'package:myportofolio/pages/service_pages.dart';
import 'package:myportofolio/pages/skills_page.dart';
class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  ScrollController _scrollController = ScrollController();
  void turnOff (int index){
    setState(() {
      listOfTabs.forEach((tab) {
        tab['active']=false;
      });
      listOfTabs[index]['active']=true;
    });
  }
  List listOfTabs = [
    {'name':'Home','active':true,},
    {'name':'About','active':false},
    {'name':'Skills','active':false},
    {'name':'Services','active':false},
    {'name':'Portfolio','active':false},
    {'name':'Contact','active':false},
  ];
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final double height = _scrollController.offset;
    int index = (height~/MediaQuery.of(context).size.height);
    turnOff(index);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        backgroundColor: CupertinoColors.systemFill,
        elevation: 0,
        leading: screenWidth>850?Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("M y P o r t f o l i o.",style: GoogleFonts.beauRivage(
              color: CupertinoColors.systemOrange,
              fontSize: 40,
              fontWeight: FontWeight.bold),
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            selectionColor: Colors.transparent,
          ),
        ):null,
        actions: [
          for(int index=0;index<listOfTabs.length;index++)
          TextButton(
          onPressed: (){
            turnOff(index);
          _scrollController.animateTo(
          // La position du widget spécifique
          screenHeight*index, // changez la valeur selon votre cas
          duration: Duration(milliseconds: 500), // la durée de l'animation
          curve: Curves.easeInOut,
          );
          },
          child: Text(
            "${listOfTabs[index]['name']}",
            style: GoogleFonts.cinzel(
                color:listOfTabs[index]['active']?
                Colors.orange:
                Colors.white,
                fontSize: screenWidth>900?screenWidth*0.015:screenWidth*0.020,
                fontWeight: FontWeight.w400
            ),
          )
          ),
          SizedBox(width: screenWidth*0.009,)
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            HomePage(),
            AboutPage(),
            SkillsPage(),
            ServicesPages(),
            PortfolioPage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}

