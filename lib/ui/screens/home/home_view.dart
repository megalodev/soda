import 'package:flutter/material.dart';
import 'package:soda/ui/widgets/slider_widget/slider_widget_page.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(
          40.0,
          10.0,
          40.0,
          20.0,
        ),
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            _buildHeader(),
            SizedBox(
              height: 24.0,
            ),
            _buildGrid(context),
            SizedBox(
              height: 24.0,
            ),
            _text(
              text: 'Promo Menarik',
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            _text(text: 'Kami selalu memberikan promo menarik untuk Anda'),
            SizedBox(
              height: 24.0,
            ),
            SliderWidgetPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    String dummyJohnDoe =
        "https://i.dailymail.co.uk/i/pix/2016/04/07/12/32D7528B00000578-3528116-image-m-65_1460030238035.jpg";
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 9,
            child: Container(
              alignment: Alignment.topCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(
                      "$dummyJohnDoe",
                      scale: 1.0,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _text(
                          text: 'Selamat Datang',
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        _text(
                          text: 'John Doe',
                          fontSize: 24.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    // ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              child: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGrid(BuildContext context) {
    List<String> texts = [
      "Pembiayaan",
      "MAF",
      "APLS",
      "My Wallet",
      "Statistik",
      "UMKM",
    ];

    List<IconData> icons = [
      Icons.card_giftcard,
      Icons.insert_drive_file_outlined,
      Icons.calculate_outlined,
      Icons.account_balance_wallet_outlined,
      Icons.analytics_outlined,
      Icons.store_mall_directory_outlined,
    ];

    List<Color> colors = [
      Colors.lightBlue[400],
      Colors.blue[600],
      Colors.indigoAccent,
      Colors.orange,
      Colors.greenAccent,
      Colors.pink,
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(20.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: texts.length,
        itemBuilder: (c, i) {
          String text = texts[i];

          return _buildMenu(
            text,
            icons[i],
            color: colors[i],
          );
        },
      ),
    );
  }

  Widget _buildMenu(
    String text,
    IconData icon, {
    Color color = Colors.black,
  }) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: color.withOpacity(0.16),
            ),
            padding: EdgeInsets.all(20.0),
            child: Icon(
              icon,
              color: color,
              size: 32.0,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text('$text'),
        ],
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
