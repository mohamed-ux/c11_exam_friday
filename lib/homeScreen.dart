import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  List<String> categories=[
    'Art','Business','Comedy','Drama','Action'
  ];

  List<String> images=[
   'assets/images/photo3.png',
   'assets/images/photo2.png',
    'assets/images/photo3.png',
    'assets/images/photo2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset('assets/images/photo4.png',
              height: 30,width: 30,),
              Text('Audi',style: TextStyle(
                color: Colors.purple,
                fontSize: 24,
                fontWeight: FontWeight.w700
              ),),
              Text('Book',style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24,
                  fontWeight: FontWeight.w300),
              )],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings,color: Colors.purple,),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: 'Library'),
        ],
        iconSize: 35,
        selectedItemColor: Colors.purple,
      ),
      body: Padding(

        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),),
                Text('See more',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  color: Colors.purple
                ),),

              ],
            ),
            SizedBox(height: 20,),
            Container(
              //padding:EdgeInsets.all(10) ,
              height: 60,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                return Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  margin: EdgeInsets.all(10),
                  //height: 5,
                  width: 100,
                  decoration: BoxDecoration(

                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(categories[index],style: TextStyle(
                    fontSize: 16
                  ),),
                );
              }),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reccomended For You',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),),
                Text('See more',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.purple
                ),),

              ],
            ),
            Container(

              //color: Colors.red,
              height: 380,
              child: CarouselSlider.builder(itemCount: images.length,
                  itemBuilder: (BuildContext,itemIndex,pageViewIndex)=>
                  Image.asset(images[itemIndex],fit: BoxFit.fill,height: 350,width:double.infinity,),
                  options: CarouselOptions(
                    height: 350,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (index, _) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  ))
            ),
            Center(
              child: AnimatedSmoothIndicator(activeIndex: currentIndex,
                  count: images.length,
              effect: JumpingDotEffect(
                activeDotColor: Colors.purple,
                //offset: 5,
                dotWidth: 8
              )),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Best Seller',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16
                ),),
                Text('See more',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.purple
                ),),

              ],
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/photo1.png',height: 120,width: 120,),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text('Light Mage',style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        //color: Colors.grey[200]
                      ),),
                      SizedBox(height: 10,),
                      Text('Laurie Forest',style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey[500]
                      ),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
