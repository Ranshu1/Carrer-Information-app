import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/about_coll.dart';
import 'package:flutter_task/college.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  int _value = 0;
  int _selectedItem = 0;
  bool navigateToPage = false;
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(17)),
                      color: Color.fromRGBO(4, 60, 110, 1)),
                  height: 200,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 49, left: 37),
                            child: Text(
                              "Find your own way",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.symmetric(horizontal: 90),
                            padding: EdgeInsets.only(right: 10, left: 130),
                            child: Icon(
                              Icons.notifications_active,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(top: 8, left: 27),
                        child: Text(
                          "Search in 600 college around!",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              // margin: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                              margin:
                                  EdgeInsets.only(top: 20, left: 21, right: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.search),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText:
                                            "search for colleges and schools...",
                                        hintStyle: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300)),
                                  )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              margin: EdgeInsets.only(right: 25, top: 20),
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white),
                              child: Icon(
                                Icons.mic,
                                color: Colors.blueAccent,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
              Container(
                // height: 150,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _typesCollege(context);
                        },
                        child: Card(
                          // margin: EdgeInsets.all(30),
                          margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0.0,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1525921429624-479b6a26d84d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 20, left: 25),
                                      child: Text(
                                        "Top Colleges",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.start,
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          right: 50, left: 20, top: 5),
                                      child: Text(
                                        "Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ))
                                ],
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(12)),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Text(
                                          "+125",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Colleges",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                // height: 150,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _typesCollege(context);
                        },
                        child: Card(
                          // margin: EdgeInsets.all(30),
                          margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0.0,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1588072432836-e10032774350?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 20, left: 25),
                                      child: Text(
                                        "Top Schools",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.start,
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          right: 50, left: 20, top: 5),
                                      child: Text(
                                        "Searching for the best school for you just got easier! With out Advanced School Search, you can easily filter out the schools that are fit for you",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ))
                                ],
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(12)),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Text(
                                          "+106",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Schools",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                // height: 150,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _typesCollege(context);
                        },
                        child: Card(
                          // margin: EdgeInsets.all(30),
                          margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 0.0,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1565022536102-f7645c84354a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1173&q=80",
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 150,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 20, left: 25),
                                      child: Text(
                                        "Exams",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.start,
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(
                                          right: 50, left: 20, top: 5),
                                      child: Text(
                                        "Find an end to end information about the exams that are happening in India",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ))
                                ],
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(12)),
                                        color: Colors.white),
                                    child: Row(
                                      children: [
                                        Text(
                                          "+16",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Exams",
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color.fromRGBO(187, 187, 187, 1),
              ),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_sharp,
                color: Color.fromRGBO(187, 187, 187, 1),
              ),
              label: 'saved',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.saved_search_outlined,
                  color: Color.fromRGBO(
                    187,
                    187,
                    187,
                    1,
                  ),
                ),
                label: 'saved'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
                label: 'account'),
          ],
          currentIndex:  _selectedItem,
          onTap: (setValue){
            setState(() {
              _selectedItem = setValue;
            });
          },
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }

  void _typesCollege(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        context: context,
        builder: (BuildContext bc) {
          return Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: MediaQuery.of(context).size.height * .45,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 260, top: 20),
                    child: Text(
                      "Sort by",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    height: 50,
                    thickness: 0.1,
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value as int;
                            navigateToPage = true;
                          });
                          if (navigateToPage) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return CollegeScreen();
                            }));
                          }
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.school),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bachelor of Technology",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value as int;
                            navigateToPage = true;
                          });
                          if (navigateToPage) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return CollegeScreen();
                            }));
                          }
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.architecture),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Bachelor of Architecture",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: 3,
                        onChanged: (value) {
                          setState(() {
                            _value = value as int;
                            navigateToPage = true;
                          });
                          if (navigateToPage) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return CollegeScreen();
                            }));
                          }
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.local_pharmacy),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pharmacy",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 4,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value as int;
                            navigateToPage = true;
                          });
                          if (navigateToPage) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return CollegeScreen();
                            }));
                          }
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.personal_injury),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Law",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 5,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value as int;
                            navigateToPage = true;
                          });
                          if (navigateToPage) {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return CollegeScreen();
                            }));
                          }
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.settings_accessibility),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Management",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                ],
              ));
        });
  }
}
