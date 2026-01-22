import 'dart:async';

import 'package:flutter/material.dart';

// Function to show a common bottom sheet
Future commonBottomSheet(BuildContext context, {
  double borderRadius = 16,
  double? height,
  double? initialChildSize,
  double? maxChildSize,
  double? minChildSize,
  bool useSpacer = false,
  required FutureOr<dynamic> Function(dynamic) dismissAction,
  EdgeInsets padding = const EdgeInsets.all(20),
  Color color = const Color(0xFFFFFFFF),
  required List<Widget> widgets,
  bool useBottomInsets = true
}) async {
  await showModalBottomSheet(
    isDismissible: true,
    enableDrag: true,
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
    ),
    builder: (context) {
      return Container(
        height: height,
        margin: useBottomInsets 
            ? EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom
              )
            : null,
        decoration: BoxDecoration(
          color: color,
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(borderRadius)),
        ),
        child: DraggableScrollableSheet(
          initialChildSize: initialChildSize ?? 0.99,
          maxChildSize: maxChildSize ?? 0.99,
          minChildSize: minChildSize ?? 0.75,
          builder: (context, scrollController) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  useSpacer
                      ? const Spacer()
                      : const SizedBox.shrink(),
                  ...widgets,
                ]
              ),
            );
          },
        ),
      );
    },
  ).then(dismissAction);
}