import 'package:flutter/material.dart';

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<FAQItem> createState() {
    return _FAQItemState();
  }
}

class _FAQItemState extends State<FAQItem> {
  bool _opened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            widget.question,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              setState(() {
                _opened = !_opened;
              });
            },
            icon: _opened
                ? const Icon(Icons.expand_less)
                : const Icon(
                    Icons.expand_more,
                    color: Colors.black,
                  ),
          ),
        ),
        if (_opened)
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              widget.answer,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        if (_opened) const Divider(),
      ],
    );
  }
}
