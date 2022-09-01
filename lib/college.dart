import 'package:flutter/material.dart';
import 'package:flutter_task/about_coll.dart';
import 'package:like_button/like_button.dart';

class CollegeScreen extends StatefulWidget {
  CollegeScreen({Key? key}) : super(key: key);

  @override
  State<CollegeScreen> createState() => _CollegeScreenState();
}

class _CollegeScreenState extends State<CollegeScreen> {
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
                  height: 140,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          // margin: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                          margin: EdgeInsets.only(top: 20, left: 21, right: 20),
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
                  )),
              Container(
                  height: 80,
                  child: ListView(
                    // physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Text("MVSH Engineering College")),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Text("MVSH Engineering College")),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Text("MVSH Engineering College")),
                    ],
                  )),
              Container(
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey, offset: Offset(0.0,1.0), blurRadius: 6.0,
                    )]
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1562774053-701939374585?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1186&q=80",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: Icon(Icons.share,)),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 17, left: 10),
                            child: Text(
                              "GHJK Engineering college",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(8)),
                          margin: EdgeInsets.only(left: 65, top: 17),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                "4.3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                            width: 200,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.start,
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 6),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return OpCollegeScreen();
                                  }));
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 2),
                                    child: Text("Apply Now",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(14, 60, 110, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                )))
                      ],
                    ),
                    Divider(
                      height: 25,
                      thickness: 0.2,
                      indent: 15,
                      endIndent: 15,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.thumb_up_off_alt_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "More than 1000+ students have been placed",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45),
                          child: Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(169, 169, 169, 1),
                            size: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "468+",
                            style: TextStyle(
                                color: Color.fromRGBO(169, 169, 169, 1),
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey, offset: Offset(0.0,1.0), blurRadius: 6.0,
                    )]
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1592930954854-7d00c87d0cf4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: Icon(Icons.share,)),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 17, left: 10),
                            child: Text(
                              "Bachelor of Technology",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(8)),
                          margin: EdgeInsets.only(left: 80, top: 17),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                "4.3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                            width: 200,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.start,
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 6),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return OpCollegeScreen();
                                  }));
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 2),
                                    child: Text("Apply Now",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(14, 60, 110, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                )))
                      ],
                    ),
                    Divider(
                      height: 25,
                      thickness: 0.2,
                      indent: 15,
                      endIndent: 15,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.thumb_up_off_alt_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectectur adipscing",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(169, 169, 169, 1),
                            size: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "468+",
                            style: TextStyle(
                                color: Color.fromRGBO(169, 169, 169, 1),
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [BoxShadow(
                      color: Colors.grey, offset: Offset(0.0,1.0), blurRadius: 6.0,
                    )]
                    ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1607237138185-eedd9c632b0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: Icon(Icons.share,)),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(top: 10, right: 10),
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white
                              ),
                              child: Icon(Icons.bookmark_border)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 17, left: 10),
                            child: Text(
                              "Institute of Technology",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(8)),
                          margin: EdgeInsets.only(left: 85, top: 17),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                "4.3",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                            width: 200,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w300),
                              textAlign: TextAlign.start,
                            )),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return OpCollegeScreen();
                                  }));
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 2),
                                    child: Text("Apply Now",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500))),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(14, 60, 110, 1),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                )))
                      ],
                    ),
                    Divider(
                      height: 25,
                      thickness: 0.2,
                      indent: 15,
                      endIndent: 15,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.thumb_up_off_alt_outlined,
                            color: Colors.blue,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "More than 1000+ students have been placed",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45),
                          child: Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(169, 169, 169, 1),
                            size: 20,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "468+",
                            style: TextStyle(
                                color: Color.fromRGBO(169, 169, 169, 1),
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
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
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
