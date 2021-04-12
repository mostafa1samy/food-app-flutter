import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/pages/shopping/shoping.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  Widget HeaderBuild(){
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0,1)
                )],
                borderRadius: BorderRadius.circular(15)

              ),
              child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.red,), onPressed: (){
                Navigator.of(context).pop();
              })),
          Expanded(child: Text('')),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0,1)
                  )],
                  borderRadius: BorderRadius.circular(15)

              ),
              child: IconButton(icon: Icon(Icons.shopping_cart,color: Colors.red,), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoping()));

              }))
        ],
      ),
    );
  }
  Widget imageproduct(){
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
         color: Colors.white,
          boxShadow:[BoxShadow(
              color: Colors.grey[100],
              spreadRadius: 1,
              blurRadius: 0,
              offset: Offset(0,1)
          )],

          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))

      ),
      child: Column(
        children: [
          Image.asset('images/category/images 1.jpeg'),
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow:[BoxShadow(
                          color: Colors.grey[100],
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0,1)
                      )],
                      borderRadius: BorderRadius.circular(15)

                  ),
                  child: IconButton(icon: FaIcon(FontAwesomeIcons.minus,color: Colors.white,), onPressed: (){})),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('1',style: TextStyle(color: Colors.black,fontSize: 25),),
               ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow:[BoxShadow(
                          color: Colors.grey[100],
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0,1)
                      )],
                      borderRadius: BorderRadius.circular(15)

                  ),
                  child: IconButton(icon:FaIcon(FontAwesomeIcons.plus,color: Colors.white,), onPressed: (){}))
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children:[ ListView(
            children: [


                 imageproduct(),
                Container(

                  padding: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('سمك مشوى',style: TextStyle(fontSize: 30),),
                    Row(
                      children: [
                        Icon(Icons.favorite,color: Colors.red,),
                        Text('5',style: TextStyle(fontSize: 16,color: Colors.grey)),
                        Expanded(child: Text("")),
                        Icon(Icons.star,color: Colors.orange,),
                        Text('5 reviews',style: TextStyle(fontSize: 16,color: Colors.grey)),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 15)),
                    Text('سمك مشوى',style: TextStyle(fontSize: 16,color: Colors.grey),),
                  ],
                ))

            ],
          ),
            Positioned(child: HeaderBuild(),top: 0,left: 0,right: 0,height: 120,),
          ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 50,right: 30),
        child: Row(
          children: [
            Text('50',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
            Expanded(child: Text('')),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  boxShadow:[BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0,1)
                  )],
                  borderRadius: BorderRadius.circular(40)

              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left: 10,right: 10),
              child:Text('اضافة الى السلة',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold)),
            ),
            Container(
              child: Icon(Icons.shopping_basket,color: Colors.white,),
            )
          ],

        ),
        height: 75,
        decoration: BoxDecoration(
           // color: Colors.red[300],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.red,Colors.red[300],Colors.red[300]
            ]
          ),
            boxShadow:[BoxShadow(
                color: Colors.grey[100],
                spreadRadius: 7,
                blurRadius: 4,
                offset: Offset(0,3)
            )],
            borderRadius: BorderRadius.circular(40)

        ),

      ),
    );
  }
}
