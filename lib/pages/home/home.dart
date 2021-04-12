import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/pages/drawer/drawer.dart';
import 'package:foodapp/pages/product/productdetails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _globalKey=new GlobalKey<ScaffoldState>();

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

  var my_category=[{
    'pro_id':'1',
    'pro_name':'cat1',
    'pro_desc':'nice',
    'pro_image':'images/category/images 1.jpeg'
  },
    {
      'pro_id':'2',
      'pro_name':'cat2',
      'pro_desc':'very good',
      'pro_image':'images/category/images2.jpeg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: new MyDrawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(top: 30.0),
              padding: EdgeInsets.only(right: 15.0),
              child: Text("توصيل الطلب الى",style: TextStyle(color: Colors.grey),),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text("موقع الزبون",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red,), onPressed: (){})
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),

              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      _globalKey.currentState.openDrawer();
                    },
                    child: Icon(

                      Icons.menu,color: Colors.red,size: 40,),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20.0)
              ),
                      child:
                          TextField(

                            decoration: InputDecoration(
                              hintText: "بحث",
                              suffixIcon: Icon(Icons.search),
                              border: InputBorder.none
                            ),
                          ),

                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: ListView.builder(
                itemCount: my_arrproduct.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context,int index ){
                  return SingleCategoey(cat_id:my_arrproduct[index]['cat_id'] ,
                    cat_name:my_arrproduct[index]['cat_name'] ,cat_image: my_arrproduct[index]['cat_image'],);
                  })
            ),
            Container(
                height: 320,
                width: MediaQuery.of(context).size.width,



                child: ListView.builder(
                    itemCount: my_category.length,


                    itemBuilder: (BuildContext context,int index ){
                      return SingleProduct(pro_id:my_category[index]['pro_id'] ,
                        pro_name: my_category[index]['pro_name'] ,pro_desc: my_category[index]['pro_desc'],
                          pro_image :my_category[index]['pro_image']);
                    })
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.red,
        selectedFontSize: 14,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.notifications,size: 30,),title: Text('الاشعارات')),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu,size: 30,),title: Text('العروض')),
          BottomNavigationBarItem(icon: Icon(Icons.person,size: 30,),title: Text('حسابى'))
        ],
      ),
    );
  }
}
class SingleProduct extends StatelessWidget{
  final String pro_id,pro_name,pro_image,pro_desc;
  SingleProduct({this.pro_id,this.pro_name,this.pro_desc,this.pro_image});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return GestureDetector(
     onTap: (){
       Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetails()));
     },
     child: Container(
        // alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(

                      fit: BoxFit.cover,
                      image: AssetImage(pro_image)

                  )
              ),
            ),
            new Text(
              pro_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            new Text(
              pro_desc,style: TextStyle(color: Colors.grey),
            )
          ],
        ),
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
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red[100]
            ),
            child: Image.asset(cat_image,),
          ),
          Text(cat_name,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }

}