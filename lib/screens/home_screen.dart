import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  int _selectedIndex = 0;
  CarouselController _carouselController = CarouselController();

  List<Widget> list = [
    Text('All',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),
    ),
    Text('Action',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),),
    Text('Comedy',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),),
    Text('Romance',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),),
    Text('Fantasy',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600
      ),),
    
  ];

  List<Widget> movieList  = [
    Card(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width*0.6,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/movie_img_2.jpeg'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: 8,),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('PG',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Action',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('⭐️ 4.2',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Text('Black Window',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    ),
    Card(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width*0.6,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/movie_img_1.jpeg'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: 8,),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('PG',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Animation',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('⭐️ 4.2',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Text('Space Jam 2',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    ),
    Card(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            // width: MediaQuery.of(context).size.width*0.6,
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/movie_img_3.jpeg'),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: 8,),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('PG',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Adeventure',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFF303030)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('⭐️ 4.5',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Text('The Tomorrow War',
            maxLines: 3,
            softWrap: true,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: list.length, vsync: this);

    _tabController?.addListener(() { 
      setState(() {
        _selectedIndex = _tabController!.index;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Coming Soon',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/imgs/movie_img_big.jpeg'),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Black Widow',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(CupertinoIcons.paperplane,color: Colors.black,),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                      color: Color(0xFFF61332),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    controller: _tabController,
                    tabs: list,
                  ),
                ),
                SizedBox(height: 12,),
                Text('Trending Now',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: 10,),
                CarouselSlider(
                  items: movieList.map((e){
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'movie_details');
                      },
                      child: e,
                    );
                  }).toList(),
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    height: 610,
                    enlargeCenterPage: true,
                    onPageChanged: (int i, CarouselPageChangedReason e){
                      // _carouselController.animateToPage(page)
                    }
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}