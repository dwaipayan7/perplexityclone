import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:perplexityclone/theme/colors.dart';


class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Where Knowledge Begins",
              style: GoogleFonts.ibmPlexMono(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  height: 1.2,
                  letterSpacing: -0.5),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 700,
              decoration: BoxDecoration(
                  color: AppColors.searchBar,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.searchBar, width: 1.5)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search anything...",
                        hintStyle: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SearchBarButton(
                          icon: Icons.auto_awesome_outlined,
                          text: 'Focus',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SearchBarButton(
                          icon: Icons.attach_file_outlined,
                          text: 'Attach',
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            color: AppColors.submitButton,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.background,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
