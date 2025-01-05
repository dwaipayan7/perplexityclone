import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplexityclone/theme/colors.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  String fullResponse = '''
Australia has emerged victorious against India in the fifth Test of the Border-Gavaskar Trophy, clinching the series with a 3-1 win. Here are the key details of the match:

## Match Summary
- **Date**: January 3, 2025
- **Location**: Sydney Cricket Ground (SCG)
- **Result**: Australia won by 6 wickets

## Innings Breakdown
- **India's First Innings**: 185 all out
  - Top Scorer: Rishabh Pant (40 runs)
  - Notable Bowling Performance from Australia:
    - Scott Boland: 4 wickets for 31 runs
    - Mitchell Starc: 3 wickets for 49 runs

- **Australia's First Innings**: 181 all out
  - Top Scorer: Beau Webster (57 runs)
  - Notable Bowling Performance from India:
    - Prasidh Krishna: 3 wickets for 42 runs
    - Mohammed Siraj: 3 wickets for 51 runs

- **India's Second Innings**: 155 all out
  - Top Scorer: Rishabh Pant (61 runs off just 33 balls)

- **Australia's Second Innings**: Chased down the target, scoring 156 for the loss of 4 wickets.
  - Key Contributions:
    - Usman Khawaja (41 runs)
    - Beau Webster (39 not out)

## Match Highlights
- The match was tightly contested, with a total of **15 wickets falling on Day 2** alone, showcasing a bowler-friendly pitch[2][3].
- India managed a narrow first-innings lead of just **4 runs**, but struggled significantly in their second innings, leading to their eventual defeat[1][7].
- Rishabh Pant's explosive batting in the second innings provided some hope for India, but ultimately it was not enough to secure a win[3][7].

This victory marks Australia's first Border-Gavaskar Trophy win since the 2014-15 series and secures their place in the World Test Championship final against South Africa[1][7].

Citations:
[1] https://www.espncricinfo.com/series/australia-vs-india-2024-25-1426547/australia-vs-india-5th-test-1426559/match-report
[2] https://indianexpress.com/article/sports/cricket/ind-vs-aus-5th-test-day-2-live-score-india-vs-australia-live-cricket-scorecard-updates-sydney-cricket-ground-9758758/lite/
[3] https://indianexpress.com/article/sports/cricket/ind-vs-aus-5th-test-day-3-live-score-india-vs-australia-live-cricket-scorecard-updates-sydney-cricket-ground-9760210/
[4] https://timesofindia.indiatimes.com/sports/cricket/india-vs-australia-5th-test-day-2-live-score-updates-border-gavaskar-trophy-2024-25-ind-vs-aus-live-streaming-online/liveblog/116926639.cms
[5] https://www.espncricinfo.com/series/australia-vs-india-2024-25-1426547/australia-vs-india-4th-test-1426558/live-match-blog
[6] https://timesofindia.indiatimes.com/sports/cricket/india-vs-australia-5th-test-day-3-live-score-updates-border-gavaskar-trophy-2024-25-ind-vs-aus-live-streaming-online/liveblog/116952476.cms
[7] https://www.business-standard.com/cricket/news/india-vs-australia-live-cricket-score-5th-test-streaming-full-scorecard-ind-vs-aus-day-3-highlights-125010400473_1.html
[8] https://www.hindustantimes.com/cricket/live-scorecard-aus-vs-ind-border-gavaskar-trophy-202425-5th-test-australia-vs-india-test-live-score-auin01032025243096
[9] https://www.cricbuzz.com/live-cricket-scores/91814/ind-vs-aus-5th-test-india-tour-of-australia-2024-25
''';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Perplexity",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        // const SizedBox(height: 6),
        Markdown(
          data: fullResponse,
          shrinkWrap: true,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            codeblockDecoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            code: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
