import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../data/carousel_data.dart';

class ExploreCarousel extends StatelessWidget {
  const ExploreCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 220.0,
        autoPlay: true,
        viewportFraction: 1,
      ),
      items: carouselData.map((item) {
        return Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF3F5062), width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Stack(
            children: [
              Image.network(
                item['image'].toString(),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              if (item['isVideo'].toString() == 'true')
                const Center(
                  child: Icon(
                    Icons.play_circle,
                    size: 60,
                    color: Colors.white70,
                  ),
                ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
