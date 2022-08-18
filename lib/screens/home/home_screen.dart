import 'package:e_commerce_client/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shop/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                  width: 376.w,
                  height: 536.h,
                  child: Image.asset('assets/images/MainScreen.png',fit: BoxFit.cover,),
                ),
                Container(
                  margin:const EdgeInsets.fromLTRB(20, 0, 0, 30),
                  child:const Text('Fashion \nSale',textAlign: TextAlign.start,style: TextStyle(fontSize: 35,color: Colors.white,),)
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('New',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                        return Product_Screen();
                      }));
                    },
                    child: Text('See All',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.black),)
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text("You've never seen it before",style: TextStyle(color: Colors.grey,fontSize: 12),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width:150.w,
                    height: 276.h,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(255, 248, 238, 1.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            SizedBox(
                              width: 156.w,
                              height: 215.h,
                              child: Image.asset('assets/images/f2.png',fit: BoxFit.cover,),
                            ),
                            Container(
                              width: 40.w,
                              height: 24.h,
                              alignment: Alignment.center,
                              margin:const EdgeInsets.fromLTRB(5, 5, 0, 0),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Text('New',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),

                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child:const Text('Blouse',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),textAlign: TextAlign.left,)
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child:const Text('30\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),textAlign: TextAlign.left,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:150.w,
                    height: 276.h,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(255, 248, 238, 1.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            SizedBox(
                              width: 156.w,
                              height: 215.h,
                              child: Image.asset('assets/images/f1.png',fit: BoxFit.cover,),
                            ),
                            Container(
                              width: 40.w,
                              height: 24.h,
                              alignment: Alignment.center,
                              margin:const EdgeInsets.fromLTRB(5, 5, 0, 0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Text('New',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),

                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child:const Text('T-shirt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),textAlign: TextAlign.left,)
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child:const Text('10\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),textAlign: TextAlign.left,)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width:150.w,
                    height: 276.h,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(255, 248, 238, 1.0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            SizedBox(
                              width: 156.w,
                              height: 215.h,
                              child: Image.asset('assets/images/f4.png',fit: BoxFit.cover,),
                            ),
                            Container(
                              width: 40.w,
                              height: 24.h,
                              alignment: Alignment.center,
                              margin:const EdgeInsets.fromLTRB(5, 5, 0, 0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Text('New',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,),

                            ),
                          ],
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child:const Text('Jacket',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),textAlign: TextAlign.left,)
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            margin:const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child:const Text('50\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),textAlign: TextAlign.left,)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80.h,
        width: 375.w,

        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
        ),
        child: Container(
          margin: const EdgeInsets.fromLTRB(20,15,20,25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return HomeScreen();
                  }));
                },
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Image.asset('assets/icons/home.png',width: 24.w,height: 24.h,),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Product_Screen();
                  }));
                },
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Image.asset('assets/icons/cartg.png',width: 24.w,height: 24.h,),
                ),
              ),
              InkWell(
                onTap: (){

                },
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Image.asset('assets/icons/shopg.png',width: 24.w,height: 24.h,),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Profile();
                  }));
                },
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Image.asset('assets/icons/userg.png',width: 24.w,height: 24.h,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
