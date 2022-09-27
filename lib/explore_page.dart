import 'package:flutter/material.dart';
import 'package:subspace_explore/colors.dart';

import '../widgets/coin_container.dart';
import '../widgets/explore_carousel.dart';
import '../widgets/see_more.dart';
import '../widgets/subscription_list.dart';
import '../widgets/public_group_list.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CoinContainer(),
          const ExploreCarousel(),
          const SeeMore(
            title: 'All Subscriptions',
          ),
          const SubscriptionList(),
          const SeeMore(
            title: 'Public Groups',
          ),
          const PublicGroupList(),
          Container(
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD78407), width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'Show All Public Groups',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[500],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 150,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(color: containerColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What do you want us to list next?',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Suggest us a subscription',
                  style: TextStyle(fontSize: 12.0),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Give your suggestion',
                          fillColor: textFieldColor,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.send),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
