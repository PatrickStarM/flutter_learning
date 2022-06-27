import 'package:flutter/material.dart';

const greenColor = Color(0xFF0C9869);

class PlantShop extends StatelessWidget {
  const PlantShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: greenColor,
          actions: const [
            Icon(
              Icons.code,
              color: Colors.white,
            ),
          ],
        ),
        body: buildContainer(context),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.extension,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.sentiment_satisfied,
                ),
                label: '',
              ),
            ],
            onTap: (index) {
              _currentIndex = index;
            }),
      );
  }

  SingleChildScrollView buildContainer(context) {
    return  SingleChildScrollView(
      child: Container(
        // height: ,
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: greenColor,
                ),
                child: Container(
                  margin: EdgeInsetsDirectional.only(start: 30, end: 30, top: 20),
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Hi 小鹿扫描！',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            ClipOval(
                                child: Image.network(
                                    "https://patrick-file.oss-cn-shanghai.aliyuncs.com/img/puff.png",
                                    width: 80.0,
                                    height: 80.0)),
                          ]),
                      Container(
                        height: 50,
                        child: Align(
                          alignment: Alignment(0, 5),
                          child: Container(
                            width: 300,
                            height: 40,
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: new Border.all(
                                  color: greenColor), // border
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Search',
                                  style: TextStyle(
                                      fontSize: 20, color: greenColor),
                                ),
                                Icon(Icons.search),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //白底
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 30, top: 50, end: 30),
              child: Column(
                children: [
                  aaa(
                    text: "热门推荐",
                    title: "更多",
                  ),
                  Container(
                    height: 260,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: const <Widget>[
                        RecommendPlantCard(
                          image: "images/plant1.jpg",
                          title: '君⼦兰',
                          country: '中国',
                          price: 440,
                        ),
                        RecommendPlantCard(
                          image: "images/plant2.jpg",
                          title: '当归',
                          country: '中国',
                          price: 440,
                        ),
                        RecommendPlantCard(
                          image: "images/plant3.jpg",
                          title: '萨曼沙',
                          country: '俄罗斯',
                          price: 440,
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: 30),
                  aaa(
                    text: "特色植物",
                    title: "更多",
                  ),
                  Container(
                    height: 260,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: const <Widget>[
                        RecommendPlantCard(
                          image: "images/plant1.jpg",
                          title: '君⼦兰',
                          country: '中国',
                          price: 440,
                        ),
                        RecommendPlantCard(
                          image: "images/plant2.jpg",
                          title: '当归',
                          country: '中国',
                          price: 440,
                        ),
                        RecommendPlantCard(
                          image: "images/plant3.jpg",
                          title: '萨曼沙',
                          country: '俄罗斯',
                          price: 440,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ) ;
    //   ],
    // );
  }

  Text buildText() => Text('文本组件');
}
// class RecommendsPlants extends StatelessWidget{
//   const RecommendsPlants(Key?key):super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//
//   }
// }
class aaa extends StatelessWidget{
  const aaa({
    required this.text,
    required this.title,
  });
  final String text,title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(greenColor),
            padding: MaterialStateProperty.all(
                const EdgeInsets.only(left: 24, right: 24)),
            minimumSize:
            MaterialStateProperty.all(const Size(85, 50)),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(24))),
            ),
          ),
        ),
      ],
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });

  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: const EdgeInsets.all(10.0),
      width: size.width * 0.4,
      height: size.height,
      child: Column(
        children: <Widget>[
          Container(
            height: 180,
            child:Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: Colors.indigo.withOpacity(0.66),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      title.toString(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    Text(
                      country.toString(),
                      style: TextStyle(
                        color: Colors.indigo.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  price.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: Colors.green),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
