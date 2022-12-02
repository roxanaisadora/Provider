
import 'package:flutter/material.dart';
import 'package:sesion03/pages/page_screen.dart';

class ChallengeWidget extends StatelessWidget {
  const ChallengeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
          slivers: [
            SliverFillRemaining(
            hasScrollBody: false,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 70,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.flight),  
                      Text('TRAVEL AGENCY', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child:Image.network(
                      'https://ecommerceapi.assistcard.com/Api/ImagesHandler/GetImage?freeImageCode=requisitos%20para%20viajar%20en%20avion',
                      width: 300,
                      height: 300,
                      fit:BoxFit.fill  
                    ) ,
                    ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          ),
                      child: Padding(padding: const EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 10) ,
                      child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Ven a Viajar con Nosotros', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 33, 37, 243))),
                          Text('', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color:Color.fromARGB(255, 33, 37, 243))),
                          Text('View our tour packages today', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                    ),
                    )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 60,
                    width: 200,
                    child: MaterialButton(
                    elevation: 1,
                    color: const Color.fromARGB(255, 33, 37, 243),
                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text('GO!',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.white,size: 40,)
                      ],
                    ),
                    onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                    },
                  ),
                  ),
                  const SizedBox(height: 50,),

                ],
              ),
            ),
          ],
        )

    );
  }
}