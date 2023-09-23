import 'package:flutter/material.dart';
import 'package:shamoshoes/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text('Message Support', style: whiteTextStyle.copyWith(
          fontSize: 18
        ),),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon_headset.png', width: 80,),
              SizedBox(height: 20,),
              Text('Opss no message yet?', style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),),
              SizedBox(height: 5,),
              Text('You have never done a transaction', style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),),
              SizedBox(height: 20,),
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  onPressed: (){}, child: Text('Explore Store', style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),)),
              )
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}