import 'package:flutter/material.dart';
import 'package:task1_ieee/resources/text_styles.dart';

import 'color_container.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "T-Shirt GM-144MG ",
                style: TextStyles.tshirtDescrition,
              ),

              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Text("4.9", style: TextStyles.rateText),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            '''Sporty comfort meets modern style Perfect for workouts or casual everyday wear.'''
                '',
            style: TextStyles.subRateText,
          ),

          ListTile(
            contentPadding: EdgeInsets.only(top: 10),
            leading: Icon(Icons.event_note),
            title: Text(
              "Product Specifications",
              style: TextStyles.subRateText,
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 24),
          ),
          Divider(height: 20, color: Colors.grey),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.color_lens, size: 24),
              Text("Colors", style: TextStyles.subRateText),
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: Row(
                  children: [
                    ColorContainer(color: Colors.black87),
                    ColorContainer(color: Colors.black12),
                    ColorContainer(color: Color(0xFDFDFDFF)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$349.99", style: TextStyles.tshirtDescrition),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                    ,backgroundColor: Color(0xFF02B475E)
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Add To Card ",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
