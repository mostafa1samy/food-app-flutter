import 'package:flutter/material.dart';
import 'package:foodapp/pages/product/product.dart';
class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;
  SubCategory({this.cat_id,this.cat_name});



  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var my_arrproduct=[{
    'cat_id':'1',
    'cat_name':'Burgers',
    'cat_image':'images/product/Bur.jpeg',
    'cat_count':'2'
  },
    {
      'cat_id':'2',
      'cat_name':'Offers',
      'cat_image':'images/product/Offers.jpeg',
      'cat_count':'2'
    },
    {
      'cat_id':'5',
      'cat_name':'مقبلات',
      'cat_image':'images/product/images1.jpeg',
      'cat_count':'2'
    },
    {
      'cat_id':'4',
      'cat_name':'مشاوى',
      'cat_image':'images/product/images2.jpeg',
      'cat_count':'2'
    },
    {
      'cat_id':'3',
      'cat_name':'ماكولات بحرية',
      'cat_image':'images/product/Piz.jpeg',
      'cat_count':'2'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(widget.cat_name,style: TextStyle(color: Colors.black),),
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
                cat_name:my_arrproduct[index]['cat_name'] ,cat_image: my_arrproduct[index]['cat_image'],cat_count: my_arrproduct[index]['cat_count'],);
            }),
      ),
    );
  }
}
class SingleCategoey extends StatelessWidget{
  final String cat_id,cat_name,cat_image,cat_count;
  SingleCategoey({this.cat_id,this.cat_name,this.cat_image,this.cat_count});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(right: 10),
      child:Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Product()));
            },
            child: ListTile(
              subtitle: Text(cat_count),
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
