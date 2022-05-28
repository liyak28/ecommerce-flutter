import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_flutter/style/theme.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int currentIndex = 0;
  bool isWishlist = false;

  List productDetailImageList = [
    'assets/img_product_detail.png',
    'assets/img_shoes_sample.png',
    'assets/img_product_detail.png',
  ];

  List productFamiliarImageList = [
    'assets/img_product_detail.png',
    'assets/img_shoes_sample.png',
    'assets/img_product_detail.png',
    'assets/img_shoes_sample.png',
    'assets/img_product_detail.png',
    'assets/img_shoes_sample.png',
    'assets/img_product_detail.png',
  ];

  String description =
      "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.";

  @override
  Widget build(BuildContext context) {
    Widget indicatorSlider(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? primaryColor : textSecondaryColor),
      );
    }

    Widget productCarouselSlider() {
      int index = -1;
      return Container(
        height: 310,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: productDetailImageList
                  .map(
                    (image) => Image.asset(
                      image,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: productDetailImageList.map((e) {
                index++;
                return indicatorSlider(index);
              }).toList(),
            ),
          ],
        ),
      );
    }

    Widget productFamiliarCard(String imageUrl) {
      return Container(
        height: 64,
        width: 64,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imageUrl)),
          borderRadius: BorderRadius.circular(6),
          color: bg6Color,
        ),
      );
    }

    Widget productFamiliar() {
      int index = 1;

      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Fimiliar Shoes',
                style: textHeaderStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: productFamiliarImageList.map((imageUrl) {
                      index++;
                      return Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? defaultMargin : 0),
                        child: productFamiliarCard(imageUrl),
                      );
                    }).toList(),
                  )),
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left)),
                Icon(
                  Icons.shopping_bag,
                  color: bg1Color,
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Produk Disini',
                              style: textHeaderStyle,
                            ),
                            Text(
                              'Category',
                              style: textSecondaryStyle,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isWishlist = !isWishlist;
                          });
                          // SNACKBAR
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor:
                                  isWishlist ? secondaryColor : alertColor,
                              content: Text(
                                isWishlist
                                    ? 'Has been added to the Whitslist'
                                    : 'Has been removed from the Whitslist',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        child: Image.asset(
                          isWishlist
                              ? 'assets/ic_love_active_border_circle.png'
                              : 'assets/ic_love_border_circle.png',
                          width: 46,
                          height: 46,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: bg2Color,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price starts from',
                          style: textPrimaryStyle,
                        ),
                        Text(
                          '\$ 2000',
                          style: textPriceStyle.copyWith(
                              fontWeight: bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  // === NOTE DESCRIPTION ===
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Description',
                    style: textHeaderStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    description,
                    style: textSecondaryStyle.copyWith(fontWeight: light),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * defaultMargin),
          child: AlertDialog(
            backgroundColor: bg3Color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: whiteColor,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/ic_success.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Hooree',
                    style: textPrimaryStyle.copyWith(
                        fontWeight: semi_bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Item added successfully',
                    style: textSecondaryStyle,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    width: 154,
                    height: 44,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/cart');
                        },
                        style: buttonPrimaryStyle,
                        child: Text(
                          'View My Cart',
                          style: textButtonStyle,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Row(
          children: [
            Container(
              width: 54,
              height: 54,
              child: Image.asset(
                'assets/ic_chat_btn.png',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                height: 54,
                child: TextButton(
                  onPressed: () {
                    showSuccessDialog();
                  },
                  style: buttonPrimaryStyle,
                  child: Text(
                    'Add To Cart',
                    style: textButtonStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: bg6Color,
        body: ListView(
          children: [
            header(),
            productCarouselSlider(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                color: bg1Color,
              ),
              child: Column(
                children: [
                  content(),
                  productFamiliar(),
                  const SizedBox(
                    height: 30,
                  ),
                  button(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
