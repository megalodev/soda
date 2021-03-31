import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidgetPage extends StatefulWidget {
  @override
  _SliderWidgetPageState createState() => _SliderWidgetPageState();
}

class _SliderWidgetPageState extends State<SliderWidgetPage> {
  CarouselController carouselController = CarouselController();
  PageController pageController =
      PageController(viewportFraction: 20.0, initialPage: 0);
  int changed = 0;

  List<String> images = [
    "https://image.freepik.com/free-vector/guaranteed-discount-advertisement-promo-banner_124507-3312.jpg",
    "https://www.couponbricks.com/static/country-select-home/img/country-select-home/find.png",
    "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX30030312.jpg",
    "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX36384460.jpg",
    "https://png.pngtree.com/png-clipart/20190925/original/pngtree-big-sale-discount-offer-banner-promotion-png-image_4979820.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _slider(context),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: images
                  .map(
                    (e) => Container(
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 4.0,
                        backgroundColor: changed == images.indexOf(e)
                            ? Colors.green
                            : Colors.grey[300],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _slider(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      child: CarouselSlider(
        items: images
            .map(
              (e) => Container(
                width: w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Stack(
                  children: [
                    Container(
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                            "$e",
                            scale: 1.0,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      left: 0.0,
                      child: Container(
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4.0),
                        child: Column(
                          children: [
                            _text(text: "Discount!!!"),
                            _text(text: "Berlaku hingga 31 Mei 2020")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
        carouselController: carouselController,
        options: CarouselOptions(
            aspectRatio: 19 / 8,
            autoPlay: false,
            initialPage: 0,
            pageSnapping: true,
            viewportFraction: 1.0,
            disableCenter: false,
            enableInfiniteScroll: false,
            onPageChanged: (i, c) {
              setState(() => changed = i);
              print(' I = $i, \n changed because = $c');
            }),
      ),
    );
  }

  _text({
    String text,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    Alignment alignment,
  }) =>
      Container(
        alignment: alignment ?? Alignment.centerLeft,
        // padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Text(
          '$text',
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.justify,
          maxLines: 1,
          style: TextStyle(
            color: color ?? Colors.black,
            fontSize: fontSize ?? 16.0,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      );
}
