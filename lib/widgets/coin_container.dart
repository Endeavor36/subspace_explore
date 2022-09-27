import 'package:flutter/material.dart';

class CoinContainer extends StatelessWidget {
  const CoinContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Colors.black, Color.fromARGB(255, 9, 3, 66)],
        ),
        border: Border.all(color: const Color(0xFF3F5062), width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: const [
          CircleAvatar(
            maxRadius: 14,
            backgroundColor: Color(0xFFFFD81F),
            child: Icon(
              Icons.currency_bitcoin,
              color: Colors.white,
              size: 18,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'Play and earn coins',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Spacer(
            flex: 5,
          ),
          Icon(Icons.double_arrow),
        ],
      ),
    );
  }
}
