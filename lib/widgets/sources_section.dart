import 'package:flutter/material.dart';
import 'package:perplexityclone/sevice/chat_web_service.dart';
import 'package:perplexityclone/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  bool isLoading = true;
  // List<Map<String, dynamic>> searchResults = [
  //   // {
  //   //   'title': 'Ind vs Aus Live Score 4th Test',
  //   //   'url':
  //   //       'https://www.moneycontrol.com/sports/cricket/ind-vs-aus-live-score-4th-test-shubman-gill-dropped-australia-win-toss-opt-to-bat-liveblog-12897631.html',
  //   // },
  //   // {
  //   //   'title': 'Ind vs Aus Live Boxing Day Test',
  //   //   'url':
  //   //       'https://timesofindia.indiatimes.com/sports/cricket/india-vs-australia-live-score-boxing-day-test-2024-ind-vs-aus-4th-test-day-1-live-streaming-online/liveblog/116663401.cms',
  //   // },
  //   // {
  //   //   'title': 'Ind vs Aus - 4 Australian Batters Score Half Centuries',
  //   //   'url':
  //   //       'https://economictimes.indiatimes.com/news/sports/ind-vs-aus-four-australian-batters-score-half-centuries-in-boxing-day-test-jasprit-bumrah-leads-indias-fightback/articleshow/116674365.cms',
  //   // },
  // ];
List searchResults = [
    {
      'title': 'Ind vs Aus Live Score 4th Test',
      'url':
          'https://www.moneycontrol.com/sports/cricket/ind-vs-aus-live-score-4th-test-shubman-gill-dropped-australia-win-toss-opt-to-bat-liveblog-12897631.html',
    },
    {
      'title': 'Ind vs Aus Live Boxing Day Test',
      'url':
          'https://timesofindia.indiatimes.com/sports/cricket/india-vs-australia-live-score-boxing-day-test-2024-ind-vs-aus-4th-test-day-1-live-streaming-online/liveblog/116663401.cms',
    },
    {
      'title': 'Ind vs Aus - 4 Australian Batters Score Half Centuries',
      'url':
          'https://economictimes.indiatimes.com/news/sports/ind-vs-aus-four-australian-batters-score-half-centuries-in-boxing-day-test-jasprit-bumrah-leads-indias-fightback/articleshow/116674365.cms',
    },
];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().searchResultStream.listen((data){
      setState(() {
        searchResults = data['data'];
        isLoading = false;

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.source_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Sources",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Skeletonizer(
          enabled: isLoading,
          effect: ShimmerEffect(
            baseColor: Colors.grey,
            highlightColor: Colors.grey.withOpacity(0.4),
            duration: Duration(seconds: 1)
          ),
          child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: searchResults.map((res) {
                return Container(
                  width: 150,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        res['title'],
                        style: TextStyle(fontWeight: FontWeight.w500,),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8,),
                      Text(
                        res['url'],
                        style: TextStyle(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              }).toList()),
        )
      ],
    );
  }
}
