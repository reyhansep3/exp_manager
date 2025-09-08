import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:exp_manager/core/utils/app_fonts.dart';
import 'package:exp_manager/presentation/transaction/widgets/transaction_items.dart';
import 'package:flutter/material.dart';
 
class TransactionSection extends StatefulWidget {
  const TransactionSection({super.key});

  @override
  State<TransactionSection> createState() => _TransactionSectionState();
}

class _TransactionSectionState extends State<TransactionSection> {
  bool isExpenseSelected = true;
  final List<Map<String, dynamic>> _items = [
    {'icon': "🛍️", 'text': 'Shopping'},
    {'icon': "🍽️", 'text': 'Food'},
  ];



void _addCategory() {
  String? selectedIcon;
  String? categoryText;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Add New Category"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Category Name'),
              onChanged: (value) {
                categoryText = value;
              },
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Emoji Icon'),
              onTap: () async {
                // Open the emoji picker
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return EmojiPicker(
                      onEmojiSelected: (category, emoji) {
                        setState(() {
                          selectedIcon = emoji.emoji;
                        });
                        Navigator.pop(context); // Close emoji picker
                      },
                      
                    );
                  },
                );
              },
              controller: TextEditingController(text: selectedIcon),
              readOnly: true, // Make the field read-only so users can only pick through the picker
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _showConfirmationDialog(selectedIcon, categoryText);
            },
            child: const Text("Add"),
          ),
        ],
      );
    },
  );
}



  void _showConfirmationDialog(String? selectedIcon, String? categoryText) {
    if (selectedIcon != null && categoryText != null && categoryText.isNotEmpty) {
      setState(() {
        _items.add({'icon': selectedIcon, 'text': categoryText});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Close",
                  style: AppFontStyle.largeText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _addCategory,
                child: Text(
                  "Add Category",
                  style: AppFontStyle.largeText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: TransactionItems(items: _items),
          ),
        ],
      ),
    );
  }
}
