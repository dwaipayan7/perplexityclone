import 'package:flutter/material.dart';
import 'package:perplexityclone/theme/colors.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchBarButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: isHovered ? AppColors.proButton : Colors.transparent,
          ),
          child: Row(
            children: [
              Icon(
                widget.icon,
                color: AppColors.iconGrey,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                widget.text,
                style: TextStyle(color: AppColors.textGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
