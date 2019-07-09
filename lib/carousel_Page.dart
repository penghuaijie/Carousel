import 'package:flutter/material.dart';

import 'package:flutter_carousel/banner_model.dart';
import 'package:flutter_carousel/carousel_widget.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  var model = BannerModel(null,  image: 'assets/lye/LYE1.jpg');
  var model1 = BannerModel(null, image: 'assets/lye/LYE2.jpg');
  var model2 = BannerModel(null, image: 'assets/lye/LYE3.jpg');
  var model3 = BannerModel(null, image: 'assets/lye/LYE4.jpg');

  List<BannerModel> banners = List();

  void initState() {
    super.initState();
    banners..add(model)
      ..add(model1)
      ..add(model2)
      ..add(model3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 100,),
            Container(
              width:double.maxFinite,
              height: 300,
              child: Carousel(
                banners: banners,
                onTap: (model){
                  print(model.image);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
