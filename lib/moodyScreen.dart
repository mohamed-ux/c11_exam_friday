import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';

class MoodyScreen extends StatelessWidget {
  static const String routeName = 'moody';
  List<String> imojes = [
    'assets/images/f1.png',
    'assets/images/f2.png',
    'assets/images/f3.png',
    'assets/images/f4.png',
  ];
  List<String> exerciseImages = [
    'assets/images/e1.png',
    'assets/images/e2.png',
    'assets/images/e3.png',
    'assets/images/e4.png',
  ];
  List<String> name = ['Love', 'Cool', 'Happy', 'Sad'];
  List<String> exerciseName = ['Relaxation', 'Meditation', 'Breathing', 'yoga'];

  MoodyScreen({super.key});

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
              Image.asset(
                'assets/images/logo.png',
                height: 30,
                width: 30,
              ),
              Text(
                'Moody',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        actions: [
          badges.Badge(
            //showBadge: _badgeCount==0?false:true,
            animationType: BadgeAnimationType.slide,
            position: BadgePosition.topEnd(top: 0, end: 3),
            badgeContent: Text(
              '',
              //style: TextStyle(color: Colors.white),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '.'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: '.'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: '.'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '.'),
        ],
        iconSize: 35,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),



        
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Hallo,',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Sara Rose',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'How are you felling today ?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                //padding:EdgeInsets.all(10) ,
                height: 130,
                width: 500,
                child: ListView.builder(
                    itemCount: imojes.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              margin: EdgeInsets.all(10),
                              //height: 5,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                                //borderRadius: BorderRadius.circular(15),
                              ),
                              child: Image.asset(imojes[index]),
                            ),
                            //SizedBox(height: 5,),
                            Text(name[index])
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feature',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.green),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(18),
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xFFECFDF3), borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Positive vibes',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Boost your mood with ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'positive vibes',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height:40 ,),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/b.png',
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              '10 mins',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/photo5.png',
                      width: 90,
                      height: 200,
                    ),

                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,width: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(width: 3,),
                  Container(
                    height: 8,width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(width: 3,),
                  Container(
                    height: 8,width: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exercise',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.green),
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: exerciseImages.length,
    itemBuilder: (context,index){
  return Container(
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(8),
    height: 100,width: 150,
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(15)
    ),
    child: Row(
      children: [
          Image.asset(exerciseImages[index],height: 50,width: 50,),
          Text(exerciseName[index])
      ],
    ),
  );

    },
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, mainAxisExtent: 70),)
            ],
          ),
        ),
      ),
    );
  }
}
