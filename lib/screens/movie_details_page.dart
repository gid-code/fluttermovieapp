import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({ Key? key }) : super(key: key);

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(500),
      //   child: Stack(
      //     children: [
      //       Container(
      //         width: MediaQuery.of(context).size.width,
      //         child: Image.asset('assets/imgs/movie_img_1.jpeg',
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       Container(
      //         decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //             colors: [
      //               Colors.transparent,
      //               Colors.black
      //             ],
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //             tileMode: TileMode.mirror
      //           )
      //         ),
      //         // child: Text('1h 20min'),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Align(
      //           alignment: Alignment.bottomRight,
      //           child: Text('1h 20min',
      //             style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.w600
      //             ),
      //           ),
      //         ),
      //       ),
      //       Align(
      //         alignment: Alignment.center,
      //         child: Container(
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(25),
      //             color: Theme.of(context).primaryColor
      //           ),
      //           child: Icon(Icons.play_arrow_rounded,size: 35),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: NestedScrollView(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                          fontSize: 16,
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
                          fontSize: 16,
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
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Icon(CupertinoIcons.plus_app,size: 30),
                  Icon(CupertinoIcons.paperplane,size: 30),
                ],
              ),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Space Jam: A New Legacy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("When LeBron and his young son Dom are trapped in a digital space by a rogue A.I., LeBron must get them home safe by leading Bugs, Lola Bunny and the whole gang of notoriously undisciplined Looney Tunes to victory over the A.I.'s digitized champions on the court. It's Tunes versus Goons in the highest-stakes challenge of his life.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                ),
              ),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Cast',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/cast_1.jpeg'),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text('Lebron James',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text('Lebron James',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/cast_2.jpeg'),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text('Don Cheadle',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text('AI G. Rhythm',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/imgs/cast_3.jpeg'),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text('Cedric Joe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text("Dominic 'Dom' James",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ), 
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) { 
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              expandedHeight: 400,
              floating: true,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Space Jam: A New Legacy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
                background: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/imgs/movie_img_1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          tileMode: TileMode.clamp
                        )
                      ),
                      // child: Text('1h 20min'),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Align(
                    //     alignment: Alignment.bottomRight,
                    //     child: Text('1h 20min',
                    //       style: TextStyle(
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.w600
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Theme.of(context).primaryColor
                        ),
                        child: Icon(Icons.play_arrow_rounded,size: 35),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ];
        },
      ),
    );
  }
}