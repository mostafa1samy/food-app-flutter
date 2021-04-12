import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/pages/account/chanepassword.dart';
import 'package:foodapp/pages/account/profile.dart';
import 'package:foodapp/pages/product/category.dart';
class MyDrawer extends StatefulWidget {

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text("Mostafa",style: TextStyle(fontSize: 20,color: Colors.black),)
                , accountEmail:Text("mostafa@gmail.com",style: TextStyle(color: Colors.grey),),currentAccountPicture:
                GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),decoration: BoxDecoration(
                color: Colors.grey[100]
              ),),
              Container(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child:  Column(
                    children: [
                    InkWell(
                    onTap: (){},
                      child: ListTile(
                        title: Text('الرئيسية',style: TextStyle(color: Colors.black,fontSize: 20),),
                        leading: Icon(Icons.home,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                      ),),
                      Divider(color: Colors.grey[500],),
                    ],
                  ),
                ),
              Container(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Category()));
                      },
                      child: ListTile(
                        title: Text('قائمة الماكولات',style: TextStyle(color: Colors.black,fontSize: 20),),
                        leading: Icon(Icons.home,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                      ),),
                    Divider(color: Colors.grey[500],),
                  ],
                ),
              ),


              Theme(
                data: theme,
                child: ExpansionTile(
                  title: Text('حسابى',style: TextStyle(color: Colors.black,fontSize: 20),),
                 children: [

                   Container(
                     padding: const EdgeInsets.only(right: 10,left: 10),
                     child:  Column(
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                           },
                           child: ListTile(
                             title: Text('تغير الاعدادت الشخصية',style: TextStyle(color: Colors.black,fontSize: 16),),
                             leading: Icon(Icons.settings_backup_restore,color: Colors.red,),
                             trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                           ),),
                         Divider(color: Colors.grey[500],),
                       ],
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.only(right: 10,left: 10),
                     child:  Column(
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
                           },
                           child: ListTile(
                             title: Text('تغير كلمة المرور',style: TextStyle(color: Colors.black,fontSize: 16),),
                             leading: Icon(Icons.lock_open,color: Colors.red,),
                             trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                           ),),

                       ],
                     ),
                   ),
                 ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(right: 10,left: 10),
                  child: Divider(color: Colors.grey[500],)),
              Container(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child:  Column(
                    children: [
                    InkWell(
                    onTap: (){},
                child: ListTile(
                        title: Text('مفضلاتى',style: TextStyle(color: Colors.black,fontSize: 20),),
                        leading: Icon(Icons.favorite,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                      ),),
                      Divider(color: Colors.grey[500],),
                    ],
                  ),
                ),

              Container(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child: Column(
                    children: [
                    InkWell(
                    onTap: (){},
                child: ListTile(
                        title: Text('طلباتى',style: TextStyle(color: Colors.black,fontSize: 20),),
                        leading: Icon(Icons.history,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                      ),),
                      Divider(color: Colors.grey[500],),
                    ],
                  ),
                ),
              Container(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                        title: Text('من نحن',style: TextStyle(color: Colors.black,fontSize: 20),),
                        leading: Icon(Icons.message,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                      ),),
                    Divider(color: Colors.grey[500],),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10,left: 10),
                child:  Column(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                        title: Text('مركز الدعم',style: TextStyle(color: Colors.black,fontSize: 20),),
                        leading: Icon(Icons.phone,color: Colors.red,),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 13,),
                      ),),
                    Divider(color: Colors.grey[500],),
                  ],
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
