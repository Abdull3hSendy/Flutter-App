 import 'package:bootcamb_1/core/features/HomeScreen/home_drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int totalCoursers=12;
    int totalCertificates=5;
    int person=20;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff133a67),
        title: const Text('Home',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white,
                            letterSpacing: 2
                          )),
        centerTitle: true
      ),
      drawer:const HomeDrawer(),
      body: Column(
        children: [
          //اعلانات
          SizedBox(
            height: 100,
            child: PageView(
              children: [
                bannerCard("","عرض خاص لفتره محددودة"),
                bannerCard("","خصمات تصل ل 50%"),
                bannerCard("","دورات مجانية "),
                bannerCard("","اشتراكات و عضويات دائمة "),
                bannerCard("","high high high "),
                bannerCard("","hhhhhhhhhhhhhhhhhhh"
                )
              ],
            ),
          ),

          const SizedBox(height: 80),

          //رسالة ترحيب

          const Text(
          "Welcome to Our Store ",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight:FontWeight.bold ,
            fontSize: 25,
            letterSpacing:2 ,
            color: Colors.blueAccent
          )),

          const Spacer(),
        // احصائيات
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFF133A67),
              borderRadius: BorderRadius.only(
                topLeft : Radius.circular(20),
                topRight: Radius.circular(20)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 staCard("Microsoft", totalCoursers,Icons.menu_book),
                 staCard("Microsoft", totalCertificates,Icons.book),
                 staCard("Microsoft", person,Icons.person),
              ],
            ),
          )
        ],
      ),
    //  drawer: ,
   //   body: ,
    );
  }


 Widget bannerCard(String ImagePath , String title )
 {
   return Container(
     margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(16),
       image: DecorationImage(
         image: AssetImage(ImagePath),
         fit: BoxFit.cover)),
     child:Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(16),
         color:Colors.black.withOpacity(0.4)),
       child: Center(
         child: Text(title, style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.bold,
           color: Colors.white)
         ),
       ),
     ) ,
   ) ;
 }

 Widget staCard(String title , int value , IconData icon)
 {
   return Column(
     children: [
       Icon(icon,color: Colors.white,size: 36 ),
       const SizedBox(height: 8),
       Text(
         "$value",
         style: const TextStyle(
           fontSize: 22,
           color: Colors.white)
       ),
       Text(
         title,
         style: TextStyle(color: Colors.white70,fontSize: 16),
       )


     ],
   );
 }

}



