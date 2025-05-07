import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
List  <bool> isselected = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset( "assets/instagram.png" , fit: BoxFit.fill,height: 100, width: 100,),leadingWidth: 0,
        actions: [
          Icon(CupertinoIcons.heart , size: 30,),
              SizedBox(width: 10,),
              Icon(Icons.message, size: 30,),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 7.0),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFEDA77),
                              Color(0xFFF58529),
                              Color(0xFFDD2A7B),
                              Color(0xFF8134AF),
                              Color(0xFF515BD4),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0), // White border thickness
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white, // Inner white border
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(3.0), // Profile image padding
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/profile1.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text("your story")
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            height: 600,
            child: ListView.builder(
              itemCount: isselected.length,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width : 40,
                        height: 40,
                        decoration : BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFEDA77),
                              Color(0xFFF58529),
                              Color(0xFFDD2A7B),
                              Color(0xFF8134AF),
                              Color(0xFF515BD4),
                            ],
                          ),
                        ),

                        child: Padding(
                          padding:  EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white

                            ),
                          child: Padding(
                            padding:  EdgeInsets.all(3.0),

                              child: CircleAvatar(

                                backgroundImage: AssetImage("assets/profile1.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("username"),
                      Spacer(),
                     IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                    ],
                  ),
                  Image.asset("assets/profile1.jpg" ),
                  Row(
                    children: [
                      IconButton(onPressed: () {
                        setState(() {
                          if(isselected[index] == false ){
                            isselected[index] = true;
                          }
                          else {
                            isselected[index] = false;
                          }
                        });

                      }, icon: Icon(isselected[index]? Icons.favorite : CupertinoIcons.heart , color: isselected[index]? Colors.red : Colors.black,)),
                      Text("233"),

                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.mode_comment_outlined)),
                      Text("233"),

                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.send_outlined)),
                      Spacer(),
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.save_alt_outlined))
                    ],
                  )
                ],
              );
            },),
          )
        ],
      ),


    );
  }
}
