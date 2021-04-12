import 'package:flutter/material.dart';
import 'package:foodapp/pages/product/productdetails.dart';
 class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var my_category=[{
    'pro_id':'1',
    'pro_name':'cat1',
    'pro_desc':'nice',
    'pro_image':'images/category/images 1.jpeg',
     'pro_offer':'1'
  },
    {
      'pro_id':'2',
      'pro_name':'cat2',
      'pro_desc':'very good',
      'pro_image':'images/category/images2.jpeg',
      'pro_offer':'1'
    },
    {
      'pro_id':'2',
      'pro_name':'cat2',
      'pro_desc':'very good',
      'pro_image':'images/category/images2.jpeg',
      'pro_offer':'1'
    },
    {
      'pro_id':'2',
      'pro_name':'cat2',
      'pro_desc':'very good',
      'pro_image':'images/category/images2.jpeg',
      'pro_offer':'1'
    },
    {
      'pro_id':'2',
      'pro_name':'cat2',
      'pro_desc':'very good',
      'pro_image':'images/category/images2.jpeg',
      'pro_offer':'1'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(child: Scaffold(
      body: Container(
        child:  ListView.builder(
            itemCount: my_category.length,


            itemBuilder: (BuildContext context,int index ){
              return SingleProduct(pro_id:my_category[index]['pro_id'] ,
                  pro_name: my_category[index]['pro_name'] ,pro_desc: my_category[index]['pro_desc'],
                  pro_image :my_category[index]['pro_image'],pro_offer: my_category[index]['pro_offer'],);
            }),
      ),
    ),);
  }
}
class SingleProduct extends StatelessWidget{
  final String pro_id,pro_name,pro_image,pro_desc,pro_offer;
  SingleProduct({this.pro_id,this.pro_name,this.pro_desc,this.pro_image,this.pro_offer});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetails()));
      },
      child: Container(
        // alignment: Alignment.bottomRight,
        //padding: EdgeInsets.all(10),
        child:Row(
          children: [
            Container(decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(pro_image)
              )
            ),),
            Column(children: [
              Text(pro_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text(pro_desc,style: TextStyle(fontSize: 16,color: Colors.grey),),
              Text(pro_desc,style: TextStyle(fontSize: 16,color: Colors.grey),)
            ],),
            Column(
              children: [
                Icon(Icons.favorite_border),
                Expanded(child: Text('')),
                Text(pro_offer)
              ],
            )
          ],
        )

      ),
    );
  }

}