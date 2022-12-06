import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String? newName;
  const HomePage({this.newName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String moment='Ishlayapman';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("My Profile",style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: (){},
          icon: IconButton(
            onPressed: (){},
            icon: Icon(CupertinoIcons.back),
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.keyboard_control_outlined,size: 30,),
            color: Colors.black,
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //top and bottom panel full
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/img.jpeg')
                                )
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("widget.newName!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text('Senior Designer',style: TextStyle(color: Colors.grey,),),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit_note_outlined,size: 34,),
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('At the Moment: $moment',style: TextStyle(color: Colors.grey,),)
                        ],
                      ),
                    ),
                    Text('My Status',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 10,),
                    //status
                    Container(
                      height: 45,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MaterialButton(
                            onPressed: (){
                              setState(() {
                                moment="Bezovta qilmang";
                              });
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.grey.shade600,
                            child: Text("\u{1f61e} Away",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          SizedBox(width: 10,),
                          MaterialButton(
                            onPressed: (){
                              setState(() {
                                moment="Ishlayapman";
                              });
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.green,
                            child: Text("\u{1f4bb} At Work",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          SizedBox(width: 10,),
                          MaterialButton(
                            onPressed: (){
                              setState(() {
                                moment="Dam olish vaqtida man";
                              });
                            },
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            color: Colors.deepOrangeAccent,
                            child: Text("\u{1f3ae} Away",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text('Dashboard',style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 5,),
                    //dashboard
                    Container(
                      height: 270,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: (){},
                            height: 60,
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            highlightElevation: 0,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Colors.green,
                                      child: Icon(Icons.payment_outlined,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text('Payments',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Container(
                                  height: 26,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      color: Colors.blue.shade700,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('2 New',style: TextStyle(color: Colors.white),),
                                          Icon(CupertinoIcons.right_chevron,color: Colors.white,size: 15,)
                                        ],
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){},
                            height: 60,
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            highlightElevation: 0,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Colors.yellow,
                                      child: Icon(Icons.settings,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text('Achievements',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Icon(CupertinoIcons.right_chevron,size: 15,)
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){},
                            height: 60,
                            padding: EdgeInsets.zero,
                            elevation: 0,
                            highlightElevation: 0,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 27,
                                      backgroundColor: Colors.grey.shade400,
                                      child: Icon(Icons.privacy_tip_outlined,color: Colors.white,),
                                    ),
                                    SizedBox(width: 10,),
                                    Text('Privacy',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Container(
                                  height: 26,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Center(
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('Actions Needed',style: TextStyle(color: Colors.white),),
                                          Icon(CupertinoIcons.right_chevron,color: Colors.white,size: 13,)
                                        ],
                                      )
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('My Account',style: TextStyle(color: Colors.grey),),
                  ],
                ),
                //acount
                TextButton(
                  onPressed: () {},
                  child: Text('Switch to Other Account',style: TextStyle(color: Colors.blue,fontSize: 17),),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Log Out',style: TextStyle(color: Colors.deepOrange,fontSize: 17),),
                ),

              ],
            ),
          ),
        ),
      )
    );
  }
}
