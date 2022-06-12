import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const [

          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl: 'https://imagenes.elpais.com/resizer/elGQL0GmeUTR_xUL3rrpOkMVwx8=/1960x1470/filters:focal(1745x609:1755x619)/cloudfront-eu-central-1.images.arcpublishing.com/prisa/7G364PMCSFGIHFZNHHJLNQL4SU.jpg',
            name: 'Messi celebrando gol con la camiseta del barca'
            ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt77d7463744b3cb58/610c2a384404b83387df3480/16c84589a1ceef313e45c4a39b0f28f2cbeaaf85.jpg',
            name: 'Dios que bello es Messi'
            ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl: 'https://elcomercio.pe/resizer/8dmz6mtjwGF0BbIuLrhM18T4MBQ=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/K75F5KBTTZH23H627BRMEEFCEI.jpg'
            ),
          SizedBox(height: 100)

        ],
      )
    );
  }
}

