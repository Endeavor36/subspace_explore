import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:subspace_explore/colors.dart';

import '../data/public_group_data.dart';

class PublicGroupList extends StatelessWidget {
  const PublicGroupList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: publicGroupData.length,
      itemBuilder: ((context, index) {
        return Container(
          height: 80,
          margin: const EdgeInsets.symmetric(vertical: 3.0),
          decoration: const BoxDecoration(color: containerColor),
          child: Stack(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 6.0,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          publicGroupData[index]['brand_logo'].toString(),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                            publicGroupData[index]['author_profile_pic']
                                .toString(),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        publicGroupData[index]['title'].toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        'by ${publicGroupData[index]['author']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        '${publicGroupData[index]['no_of_friends']} friends sharing',
                        style: const TextStyle(
                          color: fontLightBlueColor,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '₹${publicGroupData[index]['amount']}/User/Month',
                        style: const TextStyle(fontSize: 12.0),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        height: 34,
                        width: 120,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueColor,
                          ),
                          onPressed: () {},
                          child: const Text('Join'),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 6.0)
                ],
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 26,
                  width: 64,
                  decoration: const BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '${publicGroupData[index]['no_of_groups']}+ groups',
                      style: const TextStyle(fontSize: 11),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -10,
                bottom: 0,
                child: LinearPercentIndicator(
                  width: size.width,
                  lineHeight: 3.5,
                  percent: double.parse(
                      publicGroupData[index]['percentage'].toString()),
                  progressColor: blueColor,
                  backgroundColor: Colors.grey,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
