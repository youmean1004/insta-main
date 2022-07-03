import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.menu),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
            body: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:EdgeInsets.all(20),
                      child:CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('/images/profile_img.png'),
                          backgroundColor: Colors.white),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You Mean',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                        ),
                        Text('앱린이/고양이집사/직딩',
                          style:TextStyle(fontSize:17)
                        ),
                        Text('플러터 공부中..'),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [Text('50',style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)),Text('Posts')],
                      ),
                    ),
                    SizedBox(width: 1, height: 50,child: Container(color: Colors.grey),),
                    Expanded(
                      child: Column(
                        children: [Text('10',style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)), Text('Likes')],
                      ),
                    ),
                    SizedBox(width: 1, height: 50,child: Container(color: Colors.grey),),
                    Expanded(
                        child: Column(
                      children: [Text('3',style:TextStyle(fontSize:17,fontWeight:FontWeight.bold)), Text('Share')],
                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {}, child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('Follow'),
                            )),
                      ),
                      SizedBox(width: 10, height: 10,),
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text('Message'),
                              )))
                    ],
                  ),
                ),
                DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(
                                  icon: Icon(Icons.car_crash),
                                ),
                                Tab(
                                  icon: Icon(Icons.subway),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: 400, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child:Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset('/images/cont01.jpg'),
                                              ),
                                            ),
                                            Expanded(
                                              child:Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset('/images/profile_img.png'),
                                              ),
                                            ),
                                            Expanded(
                                              child:Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset('/images/cont01.jpg'),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child:Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset('/images/profile_img.png'),
                                              ),
                                            ),
                                            Expanded(
                                              child:Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset('/images/cont01.jpg'),
                                              ),
                                            ),
                                            Expanded(
                                              child:Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Image.asset('/images/profile_img.png'),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Display Tab 2',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ]))
                        ])),
              ],
            )));
  }
}
