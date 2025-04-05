import 'package:flutter/material.dart';

import '../../presentation.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget({
    super.key,
    required this.content,
    this.headerLeft,
    this.headerText,
    this.backgroundColor = Colors.white,
  });

  final Widget content;
  final Widget? headerLeft;
  final String? headerText;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SizedBox(
          width: 600,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              color: backgroundColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (headerText != null || headerLeft != null)
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lightBlueBackground,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: headerLeft ?? const SizedBox.shrink(),
                          ),
                          Align(
                            child: Text(
                              headerText ?? '',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontFamily: FontFamily.rubik,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const Divider(height: 1, thickness: 1, color: Colors.grey),
                  content,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
