import 'package:flutter/material.dart';
import 'package:flutter_shirt_store_application/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Image.asset('lib/images/gucci.png',height: 300,),
          
              SizedBox(height: 20,),
              // title
              Text("Timeless Elegance, Modern Luxury.",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              
              SizedBox(height: 20,),
          
          
              // sub title
              Text('"Experience the epitome of luxury with this Gucci shirt, where classic design meets contemporary style."',style: TextStyle(fontSize: 14,color: Colors.grey),textAlign: TextAlign.center,),
              
              SizedBox(height: 50,),
          
          
              // button shop now
              GestureDetector(
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(child: Text("Shop Now",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,),)),
                  ),
                
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}