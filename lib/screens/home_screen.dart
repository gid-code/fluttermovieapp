import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  TabController? _tabController;
  TabController? _apptabController;
  int _selectedIndex = 0;  
  int _appSelectedIndex = 1;  

  int _centerIndex = 0;
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

  List<String> appList = [
    'Series','Movies','My List'
  ];

  var moviesList = [
    {
      'img':'assets/imgs/movie_img_2.jpeg',
      'name':'Black Widow',
      'rating':'PG',
      'review':'4.2',
      'genre':'Action'
    },
    {
      'img':'assets/imgs/movie_img_1.jpeg',
      'name':'Space Jam 2',
      'rating':'PG',
      'review':'4.2',
      'genre':'Animation'
    },
    {
      'img':'assets/imgs/movie_img_3.jpeg',
      'name':'The Tomorrow War',
      'rating':'PG',
      'review':'4.2',
      'genre':'Action'
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: list.length, vsync: this);
    _apptabController = TabController(length: appList.length, vsync: this);

    _tabController?.addListener(() { 
      setState(() {
        _selectedIndex = _tabController!.index;
      });
    });
    _apptabController?.addListener(() { 
      setState(() {
        _appSelectedIndex = _apptabController!.index;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: TabBar(
            controller: _apptabController,
            indicator: BoxDecoration(
              color: Colors.transparent
            ),
            tabs: appList.map((e){
              return Text(
                e,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: (_appSelectedIndex == appList.indexOf(e)) ? Theme.of(context).primaryColor : Colors.white
                ),
              );
            }).toList(),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 18,),
                  Text('Coming Soon',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 12,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/imgs/movie_img_big2.jpeg'),
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
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.paperplane,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
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
                  SizedBox(height: 18,),
                  Text('Trending Now',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 10,),
                  CarouselSlider(
                    items: moviesList.map((e){
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'movie_details');
                        },
                        child: Card(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Container(
                                height: 350,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(e['img']!),
                                    fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              
                              SizedBox(height: 8,),
                              if(_centerIndex  ==  moviesList.indexOf(e))...[
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
                                          child: Text(e['rating']!,
                                            style: TextStyle(
                                              fontSize: 15,
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
                                          child: Text(e['genre']!,
                                            style: TextStyle(
                                              fontSize: 15,
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
                                          child: Text('⭐️ ${e['review']}',
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(e['name']!,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700
                                  ),
                                )
                              ]
                              
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      height: 610,
                      viewportFraction: 0.65,
                      enlargeCenterPage: true,
                      onPageChanged: (int i, CarouselPageChangedReason e){
                        // _carouselController.animateToPage(page)
                        setState(() {
                          _centerIndex =  i;
                        });
                        print(i);
                      }
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}