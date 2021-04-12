import 'package:flutter/material.dart';
import 'package:foodapp/pages/product/subcategory.dart';
class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var my_arrproduct=[{
    'cat_id':'1',
    'cat_name':'Burgers',
    'cat_image':'images/product/Bur.jpeg'
  },
    {
      'cat_id':'2',
      'cat_name':'Offers',
      'cat_image':'images/product/Offers.jpeg'
    },
    {
      'cat_id':'5',
      'cat_name':'Offers',
      'cat_image':'images/product/images1.jpeg'
    },
    {
      'cat_id':'4',
      'cat_name':'Offers',
      'cat_image':'images/product/images2.jpeg'
    },
    {
      'cat_id':'3',
      'cat_name':'Pizza',
      'cat_image':'images/product/Piz.jpeg'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('قائمة الماكولات',style: TextStyle(color: Colors.black),),
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
            itemCount: my_arrproduct.length,
            //scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index ){
              return SingleCategoey(cat_id:my_arrproduct[index]['cat_id'] ,
                cat_name:my_arrproduct[index]['cat_name'] ,cat_image: my_arrproduct[index]['cat_image'],);
            }),
      ),
    );
  }
}
class SingleCategoey extends StatelessWidget{
  final String cat_id,cat_name,cat_image;
  SingleCategoey({this.cat_id,this.cat_name,this.cat_image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(right: 10),
      child:Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>SubCategory(cat_id: cat_id,cat_name: cat_name,)));
            },
            child: ListTile(
               leading: Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red[100]
                  ),
                  child: Image.asset(cat_image,),
                ),
                title:Text(cat_name,style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.arrow_forward_ios),

            ),
          ),
          Divider()
        ],
      ),
    );
  }

}
