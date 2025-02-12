import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/mobile.dart';
import 'package:my_portfolio/widgets/project_section.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';
import '../constants/colors.dart';
import '../constants/sizeCheck.dart';
import '../utils/project_utils.dart';
import '../widgets/desktop.dart';
import '../widgets/header_desktop.dart';
import '../widgets/project_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
          constraints.maxWidth>= minDesktopWidth ?
          null:
          MobileDrawer(onNavItemTap: (int navIndex){
          //   call function
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),

          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navBarKeys.first,),
              //   MAIN
                if(constraints.maxWidth>= minDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex){
                //   call function
                  scrollToSection(navIndex);
                },)
                else
                HeaderMobile(
                  onLogoTap: () {
            
                  },
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
                // Desktop appearance
                if(constraints.maxWidth>= minDesktopWidth)
                const Desktop()
                else
                const Mobile(),

                // SKILLS
                Container(
                  key: navBarKeys[1],
                    width: screenWidth,
                    padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                    color: CustomColor.bgLight1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //   tittle
                       const Text(
                         "What I can handle",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                        const SizedBox(height: 50.0,),
                        //   platform & skills
                        if(constraints.maxWidth >= medDesktopWidth)
                        const SkillDesktop()
                        else
                        const SkillsMobile(),
                      ],
                    )
                ),
                SizedBox(height: 30.0,),
                // PROJECT
                ProjectSection(key: navBarKeys[2],),
                const SizedBox(height: 30),
                // CONTACT
                ContactSection( key: navBarKeys[3],),
              SizedBox(height: 30,),
              //   FOOTER
                const Footer(),
              ],
            ),
          ),
        );
      }
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //   open blog page

      return;
    }
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut
    );
  }
}

