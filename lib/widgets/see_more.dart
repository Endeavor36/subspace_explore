import 'package:flutter/material.dart';

import '../colors.dart';

class SeeMore extends StatelessWidget {
  final String title;
  const SeeMore({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: fontGreyColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
            child: const Text(
              'See More',
              style: TextStyle(color: fontYellowColor, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
