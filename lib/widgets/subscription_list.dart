import 'package:flutter/material.dart';

import '../colors.dart';
import '../data/subscription_data.dart';

class SubscriptionList extends StatelessWidget {
  const SubscriptionList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: containerColor,
      ),
      height: 220,
      width: double.infinity,
      child: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: size.width * 0.465,
        ),
        children: subscriptionData
            .map(
              (item) => Stack(
                children: [
                  Container(
                    height: 220,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3.0,
                      vertical: 6.0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        item['background_image'].toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        item['brand_logo'].toString(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3.0,
                    top: 6.0,
                    child: Container(
                      height: 50,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'UPTO',
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            '${item['discount']}%',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'OFF',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 12.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'].toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          'Starting at ${item['cost']}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: fontYellowColor,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
