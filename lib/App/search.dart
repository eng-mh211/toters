import 'package:flutter/material.dart';

class searching extends StatefulWidget {
  const searching({Key? key}) : super(key: key);

  @override
  State<searching> createState() => _searchingState();
}

class _searchingState extends State<searching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search,color: Colors.black,),
                      SizedBox(width: 10,),
                      Text(
                        "Search for Store or Item",
                        style: TextStyle(color: Colors.black,fontSize: 14),
                      ),
                    ],
                  ),
                ))
          ],
        ),

      ),
      body: Column(
        children: [
          Expanded(child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(padding: EdgeInsets.only(left: 20),
              child: Text("Collections",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,),
              Items()
            ],
          ))
        ],
      ),
    );
  }
  Container Items(){
    return Container(
      padding: EdgeInsets.only(top: 20,left: 10,right: 10,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          blocks1(
            "Happy Hour 😍",
            "assets/images/Food-Delivery.png",
            "50 Stroes",
            "no dinner tonight",
            "assets/foods/noodles.jpg",
            "20 Stroes",
          ),
          SizedBox(height: 5,),
          blocks1(
            "Happy Hour 😍",
            "assets/images/Food-Delivery.png",
            "50 Stroes",
            "no dinner tonight",
            "assets/foods/noodles.jpg",
            "20 Stroes",
          ),
          SizedBox(height: 5,),
          blocks1(
            "Happy Hour 😍",
            "assets/images/Food-Delivery.png",
            "50 Stroes",
            "no dinner tonight",
            "assets/foods/noodles.jpg",
            "20 Stroes",
          ),

        ],
      ),
    );
  }
  Row blocks1(String text1,String image1,String dis1,String text2,String image2,String dis2)
  {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadiusDirectional.circular(20),
                image: DecorationImage(
                    image : AssetImage(image1),
                    fit: BoxFit.contain
                )
              ),
            ),
            SizedBox(height: 10,),
            Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
            Text(dis1,style: TextStyle(fontSize: 12,),),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadiusDirectional.circular(20),
                  image: DecorationImage(
                      image : AssetImage(image2),
                    fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 10,),
            Text(text2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
            Text(dis2,style: TextStyle(fontSize: 12,),),
          ],
        ),



      ],
    );
  }

}


