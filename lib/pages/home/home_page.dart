import 'package:flutter/material.dart';
import 'package:shamoshoes/theme.dart';
import 'package:shamoshoes/widgets/product_card.dart';
import 'package:shamoshoes/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Alex peter sandoria',
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@alexkeinn',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: reguler,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text('All Shoes',
                    style: whiteTextStyle.copyWith(fontSize: 13)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text('Running',
                    style: subtitleTextStyle.copyWith(fontSize: 13)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text('Training',
                    style: subtitleTextStyle.copyWith(fontSize: 13)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text('Basketball',
                    style: subtitleTextStyle.copyWith(fontSize: 13)),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: transparentColor,
                    border: Border.all(color: subtitleColor)),
                child: Text('Hiking',
                    style: subtitleTextStyle.copyWith(fontSize: 13)),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Text(
          'Popular Products',
          style: whiteTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Row(
                children: [
                  ProductCard(
                      img: 'assets/image_shoes.png',
                      price: '58,67',
                      subtitle: 'Hiking',
                      title: 'COURT VISION 2.0',
                      ),
                  ProductCard(
                     img: 'assets/image_shoes2.png',
                      price: '134,98',
                      subtitle: 'Hiking',
                      title: 'TERREX URBAN LOW'
                  ),
                  ProductCard(
                     img: 'assets/image_shoes3.png',
                      price: '115,19',
                      subtitle: 'Training',
                      title: 'SL 72 SHOES'
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget newArrivalTitle(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 14
        ),
        child: Text('New Arrival', style: primaryTextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold
        ),),
      );
    }

    Widget newArrival(){
      return Container(
        margin: EdgeInsets.only(
          top: 24
        ),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        category(),
        popularProductTitle(),
        popularProduct(),
        newArrival()
      ],
    );
  }
}
