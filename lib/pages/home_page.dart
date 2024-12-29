import 'package:flutter/material.dart';
import 'package:perplexityclone/theme/colors.dart';

import '../widgets/search_section.dart';
import '../widgets/sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          //side navbar
          SideBar(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: SearchSection(),
                ),

                Container(height: 20,),
                //footer
              ],
            ),
          )
        ],
      ),
    );
  }
}
