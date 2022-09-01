import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OpCollegeScreen extends StatefulWidget {
  OpCollegeScreen({Key? key}) : super(key: key);

  @override
  State<OpCollegeScreen> createState() => _OpCollegeScreenState();
}

class _OpCollegeScreenState extends State<OpCollegeScreen>
    with TickerProviderStateMixin {
  var rating = 0.0;
  int activeIndex = 0;
  final urlImages = [
    'https://images.unsplash.com/photo-1623625434462-e5e42318ae49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80',
    'https://images.unsplash.com/photo-1595526114035-0d45ed16cfbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1566665797739-1674de7a421a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
    'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
  ];
  ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  _scrollListener() {
    Future.delayed(Duration.zero, () {
      setState(() {
        _scrollPosition = _scrollController.position.pixels;
      });
    });

    
  }
  @override
    void dispose() {
      _scrollController.dispose();
      
      super.dispose();
    }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return SafeArea(
      child: Scaffold(
        appBar: _scrollPosition == 0
            ? AppBar(
                backgroundColor: Color.fromRGBO(4, 60, 110, 1),
                actions: [
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(right: 230),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.blue,
                              ))),
                      Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.bookmark_border,
                                color: Colors.black,
                              ))),
                    ],
                  )
                ],
              )
            : AppBar(
                title: Text("GHJK Engineering college"),
                backgroundColor: Color.fromRGBO(4, 60, 110, 1),
              ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 270,
                    width: double.infinity,
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          child: Image.network(
                            "https://images.unsplash.com/photo-1562774053-701939374585?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1186&q=80",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 17, right: 85),
                            child: Text(
                              "GHJK Engineering college",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 27),
                                width: 227,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                                  style: TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w300),
                                  textAlign: TextAlign.start,
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 6, right: 8, top: 10, bottom: 8),
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "4.3",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        controller: _tabController,
                        isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(horizontal: 12),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Tab(
                            child: Text(
                              "About College",
                            ),
                          ),
                          Tab(
                            child: Text("Hostel Facility"),
                          ),
                          Tab(
                            child: Text("Q & A"),
                          ),
                          Tab(
                            child: Text("Events"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 630,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerique eget lectus ullamcorper a placerat. Porta cras at pretium varius purus curus. Morbi justo commodo habitant morbi quis pharetra posuere mausis, Morbi sit risus, diam amet volutapat quis. Nisl pallenteqse nec fcacilsis ultrices",
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, bottom: 15),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              height: 200,
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/images/location.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 10),
                              child: Text(
                                "Student Review",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(left: 21, right: 10),
                                  child: Card(
                                    elevation: 8.0,
                                    child: Image.network(
                                        'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  height: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80'),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  height: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 50,
                                  height: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                      right: 50, top: 10, bottom: 25),
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    "+12",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 260),
                                    child: Text(
                                      "Arun Sai",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 10),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus maleusada in facilisis a.",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.star,
                                            color: Colors.yellow),
                                      ),
                                      Container(
                                        child: Icon(Icons.star,
                                            color: Colors.yellow),
                                      ),
                                      Container(
                                        child: Icon(Icons.star,
                                            color: Colors.yellow),
                                      ),
                                      Container(
                                        child: Icon(Icons.star_half,
                                            color: Colors.yellow),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 25, left: 15),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        color: Color.fromRGBO(14, 60, 110, 1)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 12),
                                          child: Icon(
                                            Icons.bed,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "4",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            color: Colors.blueAccent)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: Icon(
                                            Icons.bed,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "3",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            color: Colors.blueAccent)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: Icon(
                                            Icons.bed,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "2",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    margin: EdgeInsets.symmetric(horizontal: 6),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            color: Colors.blueAccent)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 8),
                                          child: Icon(
                                            Icons.bed,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CarouselSlider.builder(
                              options: CarouselOptions(
                                height: 140,
                                enlargeCenterPage: true,
                                // autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                // autoPlayAnimationDuration: Duration(milliseconds: 800),
                                viewportFraction: 0.4,

                                // onPageChanged: (index, reason) {
                                //   setState(() {
                                //     activeIndex = index;
                                //   });
                                // }
                              ),
                              itemCount: urlImages.length,
                              itemBuilder: (context, index, realIndex) {
                                final urlImage = urlImages[index];

                                return buildImage(urlImage, index);
                              },
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            buildIndicator(),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 25, left: 25),
                                  child: Text(
                                    "GHJK Engineering Hostel",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 30),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.lightGreen),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          "4.3",
                                          style: (TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 15)),
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, top: 10),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.place,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 25),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 260, top: 25),
                              child: Text(
                                "Facilities",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 25),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.maps_home_work,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "College in 400mtrs",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 25),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.bathroom,
                                      color: Colors.lightBlue,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "bathrooms: 2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Text("Question and answer screen"),
                        Text("Event screen"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Material(
          color: Color.fromRGBO(14, 60, 110, 1),
          child: InkWell(
            onTap: () {
              //print('called on tap');
            },
            child: const SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Apply Now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
      );
}
