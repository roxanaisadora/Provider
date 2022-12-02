import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion03/pages/cambioprovider.dart';
import 'package:sesion03/pages/page_screen2.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<CambioProvider>(context);
    return Scaffold(
    appBar: AppBar(
      backgroundColor: (cambio.dato ==false)?Colors.greenAccent:Colors.amber,
      title: (cambio.dato1 ==false)?const Text(
        'Guide', 
        style: TextStyle(color: Colors.black),):
        const Text(
        'Anuncio', 
        style: TextStyle(color: Colors.black),)        
        ,
      centerTitle: true,
      actions: 
        [
          Switch(value: cambio.dato, onChanged: (value){
            cambio.cambiar(value);
          }),
          IconButton(onPressed: (){
            cambio.btncambiar();
          }, icon: const Icon(Icons.keyboard_arrow_right, color: Colors.black,))
      ],
    ),  
    body: Stack(
      children: [
        Padding(padding:const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 10),
               child:Column(
                children: <Widget>[
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text('1', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 60, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 178, 178, 173))),
                      Expanded(child: Container(color:const Color.fromARGB(255, 178, 178, 173),height: 5,))
                    ],
                  ),
                   Padding(padding:const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10)  ,child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      SizedBox(height: 15,),
                      Text('Travel round America\'s  big hearted, musically influenced southern cities of America. Starting off in the country music Mecca of Nashville, you\'ll toe tap your way towards Memphis, paying homage to the King at Graceland before heading on to the life and soul of the party, New Orleans, the heart and soul of the party.', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 15),
                      textAlign:TextAlign.justify),
                      SizedBox(height: 15,),
                      Text('You\'ll find alligator swamps, voodoo mysteries ability to turn every single day into a life loving celebration. Sunny smiles, massive barbecues and musical legends will all ensure you leave the south with a very full heart.', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 15),textAlign:TextAlign.justify),
                    ],
                      )
                  ),
                    Center(
                    child:  Column(
                    children: [
                      const SizedBox(height: 15,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column( children: const[
                          Icon(Icons.bed, color: Color.fromARGB(255, 44, 47, 236)),
                          Text('Hotel',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 18),
                    ),
                        ],),
                        Column( children: const[
                          Icon(Icons.map,color: Color.fromARGB(255, 44, 47, 236) ),
                          Text('Guide',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 18),
                    ),
                        ],),
                        Column( children:const [
                          Icon(Icons.restaurant_menu, color: Color.fromARGB(255, 44, 47, 236)),
                          Text('Meals',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 18),
                    ),
                        ],),
                     ],),
                     const SizedBox(height: 30,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column( children: const[
                          Icon(Icons.train,color: Color.fromARGB(255, 44, 47, 236) ),
                          Text('Transport',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 17),
                    ),
                        ],),
                        Column( children: const[
                          Icon(Icons.camera, color: Color.fromARGB(255, 44, 47, 236)),
                          Text('Photo',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 18),
                    ),
                        ],),
                        Column( children:const [
                          Icon(Icons.health_and_safety,color: Color.fromARGB(255, 44, 47, 236) ),
                          Text('covid19',
                      style: TextStyle(color: Color.fromARGB(255, 44, 47, 236), fontSize: 18),
                    ),
                        ],),
                     ],),
                     const SizedBox(height: 15,),
                      
                    ],
                  ),
                  ),  
                const SizedBox(height: 5,),
                Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      MaterialButton(
                        shape: const CircleBorder(),
                        color: Colors.amber,
                        child:const Icon(Icons.chevron_right, size: 40,color: Colors.white,),
                        onPressed: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChallengeWidget02()));
                        }),
                    ],
                  ),)
                ],
              ),
              ),
      Visibility(
                  visible: cambio.dato1,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child:Image.network(
                        'https://servicio.nmviajes.com:9443/homevuelos/Galleries/Galerias/SLIDER_DESTACADOS/RomaNavidad.jpg',
                        width: 300,
                        height: 300,
                        fit:BoxFit.fill  
                      ) ,
                      ),
                  ),
                  ),
                
      ],
    ),
    );
  }
}