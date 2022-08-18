import 'package:e_commerce_client/data/auth_provider.dart';
import 'package:e_commerce_client/router/router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../home/home_screen.dart';
import '../shop/product_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int index = 4;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
        builder: (context,provider,x) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              SizedBox(
                height: 115.h,
                width: 115.w,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/my.jpg"),
                    ),
                    Positioned(
                      right: -16,
                      bottom: 0,
                      child: SizedBox(
                        height: 46.h,
                        width: 46.w,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.white),
                            ),
                            primary: Colors.white,
                            backgroundColor: Color(0xFFF5F6F9),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 60.h,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.deepOrange,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Colors.grey.shade100
                  ),
                  onPressed: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(Icons.perm_identity,size: 30,color: Colors.deepOrange,),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('My Account'.tr(),style: TextStyle(color: Colors.deepOrange,fontSize: 17),)),
                      ],),
                      const Icon(Icons.arrow_forward_ios,size: 25,color: Colors.deepOrange,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.deepOrange,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.grey.shade100
                    ),
                    onPressed: (){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(Icons.notifications,size: 30,color: Colors.deepOrange,),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('Notification'.tr(),style: TextStyle(color: Colors.deepOrange,fontSize: 17),)),
                        ],),
                        const Icon(Icons.arrow_forward_ios,size: 25,color: Colors.deepOrange,),
                      ],
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.deepOrange,
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.grey.shade100
                  ),
                  onPressed: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(Icons.settings,size: 30,color: Colors.deepOrange,),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('Setting'.tr(),style: TextStyle(color: Colors.deepOrange,fontSize: 17),)),
                      ],),
                      const Icon(Icons.arrow_forward_ios,size: 25,color: Colors.deepOrange,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.deepOrange,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.grey.shade100
                    ),
                  onPressed: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(Icons.help,size: 30,color: Colors.deepOrange,),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('Help Center'.tr(),style: TextStyle(color: Colors.deepOrange,fontSize: 17),)),
                      ],),
                      Icon(Icons.arrow_forward_ios,size: 25,color: Colors.deepOrange,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: TextButton(
                    style: TextButton.styleFrom(
                        primary: Colors.deepOrange,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        backgroundColor: Colors.grey.shade100
                    ),
                  onPressed: (){
                    showDialog(context: AppRouter.navKey.currentContext!, builder: (context){
                      return AlertDialog(
                        content: Text('Are you Sure?'),
                        actions: [
                          TextButton(
                            onPressed: (){
                              AppRouter.popRoute();
                            },
                            child: const Text('Cancel',style: TextStyle(color: Colors.deepOrange),),
                          ),
                          TextButton(
                            onPressed: (){
                              provider.signOut();
                            },
                            child: const Text('OK',style: TextStyle(color: Colors.deepOrange),),
                          ),
                        ],
                      );
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        const Icon(Icons.logout_rounded,size: 30,color: Colors.deepOrange,),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('Log out'.tr(),style: TextStyle(color: Colors.deepOrange,fontSize: 17),)),
                      ],),
                      Icon(Icons.arrow_forward_ios,size: 25,color: Colors.deepOrange,),
                    ],
                  ),
                ),
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
                    child: Image.asset('assets/icons/user.png',width: 24.w,height: 24.h,),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    );
  }
}
