import 'package:flutter/material.dart';
import 'package:shamoshoes/theme.dart';

class ProductCard extends StatelessWidget {
  
  final img;
  final subtitle;
  final title;
  final price;

  ProductCard({this.img, this.subtitle, this.price, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: primaryTextColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            img,
            width: 215,
            height: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  subtitle,
                  style: greyTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  title,
                  style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$$price',
                  style: priceTextStyle.copyWith(fontSize: 14,fontWeight: medium),
                ),
              ],
            ),
            
          )
        ],
      ),
    );
  }
}
