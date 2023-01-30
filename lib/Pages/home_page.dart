import 'package:flutter/material.dart';
import 'package:netro_mart/constant/Bottom_nav.dart';
import 'package:netro_mart/constant/banner_card.dart';
import 'package:netro_mart/constant/best_selling_card.dart';
import 'package:netro_mart/constant/carosal_card.dart';
import 'package:netro_mart/constant/flash_card.dart';
import 'package:netro_mart/constant/grid_card.dart';
import 'package:netro_mart/constant/sponsord_card.dart';
import 'package:netro_mart/widget/appbar_widget.dart';
import 'package:netro_mart/widget/categories.dart';
import 'package:netro_mart/widget/indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController controller = PageController();
  List<String> images = [
    "assets/images/Image.jpg",
    "assets/images/Image.jpg",
    "assets/images/Image.jpg",
  ];

  List<String> imageList = [
    "assets/images/Image.jpg",
    "assets/images/Image.jpg",
    "assets/images/Image.jpg",
  ];

  List<String> categoryName = [
    'All',
    'Clothing',
    'WinterSpecial',
    'Clothing',
    'Shoes',
    'Watches',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNav(),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (ctx, constrains) {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBarView(),
                    SizedBox(
                      height: 16,
                    ),
                    FittedBox(
                      child: SizedBox(
                        height: 144,
                        width: MediaQuery.of(context).size.width,
                        child: PageView.builder(onPageChanged: (index) {
                          setState(() {
                            _currentIndex = index % images.length;
                          });
                        }, itemBuilder: ((context, index) {
                          return SizedBox(
                            height: 144,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(6.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          images[index % images.length]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    0,
                                    17,
                                    5,
                                    12,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Nike Shoes Air Max',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.grey[600],
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Men\'s Shoes',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xFF2A9D8F)),
                                              child: Center(
                                                child: Text(
                                                  'Shop now',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ))
                                        ],
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/images/juta.png',
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),
                      ),
                    ),
                    
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < images.length; i++)
                          buildIndicator(_currentIndex == i)
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 16,
                              color: Color(0xFF264653),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 12,
                                  color: Color(0xFF2A9D8F),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF2A9D8F),
                            )
                          ],
                        )
                      ],
                    ),
                    
                    SizedBox(
                      height: 15,
                    ),
                    Category(),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Flash Sale',
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 16,
                              color: Color(0xFF264653),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 12,
                                  color: Color(0xFF2A9D8F),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF2A9D8F),
                            )
                          ],
                        ),
                      ],
                    ),
                    
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      child: Row(
                        children: [
                          FlashCard(
                            title: 'Nike running shoe',
                            image: 'assets/images/new_shoes.png',
                          ),
                          FlashCard(
                            title: 'Smartphone',
                            image: 'assets/images/new_phone.png',
                          ),
                          FlashCard(
                            title: 'Watch for Men',
                            image: 'assets/images/new_watch.png',
                          )
                        ],
                      ),
                    ),
                   
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Selling',
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 16,
                              color: Color(0xFF264653),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 12,
                                  color: Color(0xFF2A9D8F),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF2A9D8F),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      BestSellingcard(
                          image: 'assets/images/pink_shoes1.png',
                          price: '421.99',
                          title: 'Running shoe'),
                      BestSellingcard(
                          image: 'assets/images/black_watch1.png',
                          price: '19.99',
                          title: 'Watch for men'),
                      BestSellingcard(
                          image: 'assets/images/black_jacket1.png',
                          price: '199.95',
                          title: 'Coat down...')
                    ]),
                   
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          FittedBox(
                            child: Row(
                              children: [
                                BannerCard(),
                                BannerCard(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Products',
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 16,
                              color: Color(0xFF264653),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 12,
                                  color: Color(0xFF2A9D8F),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF2A9D8F),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      BestSellingcard(
                          image: 'assets/images/yellow_jacket.png',
                          price: '199.99',
                          title: 'Casual hoodies'),
                      BestSellingcard(
                          image: 'assets/images/red_jacket.png',
                          price: '49.99',
                          title: 'Hoodies for men'),
                      BestSellingcard(
                          image: 'assets/images/watccc.png',
                          price: '19.95',
                          title: 'Watch for men')
                    ]),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 124,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CarosalCard(image: 'assets/images/new_juta.png'),
                          CarosalCard(image: 'assets/images/new_juta.png'),
                          CarosalCard(image: 'assets/images/new_juta.png')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sponsored',
                          style: TextStyle(
                              fontFamily: "Sora",
                              fontSize: 16,
                              color: Color(0xFF264653),
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              'See more',
                              style: TextStyle(
                                  fontFamily: "Sora",
                                  fontSize: 12,
                                  color: Color(0xFF2A9D8F),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF2A9D8F),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      SponsoredCard(
                          image: 'assets/images/sponsord_watch.png',
                          price: '19.99',
                          title: 'Tommy Hilfigar'),
                      SponsoredCard(
                          image: 'assets/images/sponsord_jacket.png',
                          price: '79.99',
                          title: 'Redwolf Jacket'),
                      SponsoredCard(
                          image: 'assets/images/sponsord_shoes.png',
                          price: '149.99',
                          title: 'Addidas Shoe')
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: categoryName.length,
                        itemBuilder: (context, index) {
                          return Text(
                            categoryName[index] + "   ",
                            style: TextStyle(
                                fontFamily: "Sora",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: index == 0
                                    ? Color(0xFF2A9D8F)
                                    : Color(0xFF264653)),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 400,
                      width: double.infinity,
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 2,
                        scrollDirection: Axis.vertical,
                        children: [
                          GridCard(
                              image: 'assets/images/grid_watch.png',
                              price: '199.99',
                              title: 'Tommy watch for..'),
                          GridCard(
                              image: 'assets/images/grid_shirt.png',
                              price: '49.99',
                              title: 'Sleeve T-Shirt'),
                          GridCard(
                              image: 'assets/images/grid_shoe.png',
                              price: '19.95',
                              title: 'Man running shoe'),
                          GridCard(
                              image: 'assets/images/grid_hoodie.png',
                              price: '19.95',
                              title: 'Redwolf sleeve Hoodie..'),
                          GridCard(
                              image: 'assets/images/grid_shirt2.png',
                              price: '199.99',
                              title: 'Sleeve T-Shirt'),
                          GridCard(
                              image: 'assets/images/grid_shirt3.png',
                              price: '199.99',
                              title: 'T-Shirt for men..'),
                        ],
                      ),
                    )
                  ]);
            },
          ),
        ),
      ),
    ));
  }
}
