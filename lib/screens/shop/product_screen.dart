import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../data/firestore_provider.dart';
import '../home/home_screen.dart';
import '../profile/profile.dart';
import 'widgets/product_widget.dart';

class Product_Screen extends StatefulWidget {
  const Product_Screen({Key? key}) : super(key: key);

  @override
  State<Product_Screen> createState() => _Product_Screen();
}

class _Product_Screen extends State<Product_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset('assets/images/MainScreen1.png',fit: BoxFit.cover,width: 376.w,height: 196.h,),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                child:const Text('All Clothes',style: TextStyle(color: Colors.white,fontSize: 34),)
              ),
            ]
          ),
          SizedBox(
            height: 540.h,
            child: Consumer<FireStoreProvider>(
              builder: (x,provider,y) {
                return provider.products == null?
                const Center(child: CircularProgressIndicator(),):

                ListView.builder(
                  itemCount: provider.products!.length,
                  itemBuilder: (BuildContext context, int index){
                    return Product_Widget(provider.products![index]);
                  }
                );
              }
            ),
          ),
        ],
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
                  child: Image.asset('assets/icons/homeg.png',width: 24.w,height: 24.h,),
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
                  child: Image.asset('assets/icons/cart.png',width: 24.w,height: 24.h,),
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
