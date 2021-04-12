import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Shoping extends StatefulWidget {
  @override
  _ShopingState createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> {
  Widget HeaderBuild() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })),
          Expanded(child: Text('')),
        ],
      ),
    );
  }

  var my_pro = [
    {
      'pro_id': '1',
      'pro_name': 'مشاوى',
      'pro_image': 'images/product/images2.jpeg',
      'pro_qty': '5',
      'pro_price': '100',
    },
    {
      'pro_id': '1',
      'pro_name': 'مشاوى',
      'pro_image': 'images/product/Offers.jpeg',
      'pro_qty': '5',
      'pro_price': '100',
    },
    {
      'pro_id': '3',
      'pro_name': 'مشاوى',
      'pro_image': 'images/product/images1.jpeg',
      'pro_qty': '5',
      'pro_price': '100',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            child: ListView.builder(
                itemCount: my_pro.length,
                itemBuilder: (context, int index) {
                  return SingleProduct(
                    pro_id: my_pro[index]['pro_id'],
                    pro_image: my_pro[index]['pro_image'],
                    pro_name: my_pro[index]['pro_name'],
                    pro_price: my_pro[index]['pro_price'],
                    pro_qty: my_pro[index]['pro_qty'],
                  );
                }),
          ),
          Positioned(
            child: HeaderBuild(),
            top: 0,
            left: 0,
            right: 0,
            height: 100,
          ),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 250,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [Row(
                    children: [
                      Text('اجمالى المبلغ'),
                      Expanded(child: Text('')),
                      Text('100.0')
                    ],
                  ),
                    Divider(color: Colors.black,),
                    Row(
                      children: [
                        Text('دليفرى'),
                        Expanded(child: Text('')),
                        Text('100.0')
                      ],
                    ),
                    Divider(color: Colors.black,),
                    Row(
                      children: [
                        Text('الاجمالى الكلى'),
                        Expanded(child: Text('')),
                        Text('100.0')
                      ],
                    )],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              alignment: Alignment.center,
              child:
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'اضافة الى السلة',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),

              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red,


                  borderRadius: BorderRadius.circular(40)),
            ),
            Container(
              alignment: Alignment.center,
              child:
              GestureDetector(
                onTap: () {},
                child: Text(
                  'تاكيد الطلبية',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red,


                  borderRadius: BorderRadius.circular(40)),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qty;
  final String pro_image;
  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_price,
      this.pro_qty,
      this.pro_image});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.cancel,
              color: Colors.red,
            ),
          ),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          pro_image,
                        ),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
              subtitle: Text(
                pro_price,
              ),
              trailing: Container(
                width: 150,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[100],
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ],
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                              size: 14,
                            ),
                            onPressed: () {})),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Expanded(
                          child: Text(
                        pro_qty,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        textAlign: TextAlign.center,
                      )),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[100],
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1))
                            ],
                            borderRadius: BorderRadius.circular(8)),
                        child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: 14,
                            ),
                            onPressed: () {}))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
