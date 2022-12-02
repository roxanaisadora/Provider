import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion03/pages/cambioprovider.dart';


class ChallengeWidget02 extends StatelessWidget {
  const ChallengeWidget02({super.key});
  

  @override
  Widget build(BuildContext context) {
    final cambio = Provider.of<CambioProvider>(context);
    return Scaffold(
    appBar: AppBar(
      backgroundColor: (cambio.dato ==false)?Colors.greenAccent:Colors.amber,
      title: (cambio.dato1 ==false)?const Text(
        'Find your tour', 
        style: TextStyle(color: Colors.black),): const Text(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('2', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 60, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 178, 178, 173))),
                      Expanded(child: Container(color:const Color.fromARGB(255, 178, 178, 173),height: 5,))
                    ],
                  ),
                  const SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25,),
                      Text('Museum tours', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 7,),
                      Text('Interesed in exploying lolacl museum? pick one of Coach USA\'s museum guied to learn about the past of numerous topics, nation, and families', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 15),
                      textAlign:TextAlign.justify),
                      const SizedBox(height: 15,),
                    ],
                  ),
                    Container(
                      height: 250,
                      color: Colors.blue,
                      child: Padding(padding:const EdgeInsets.all(20) ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const[
                              Icon(Icons.star, color: Colors.white,size: 30,),
                              Icon(Icons.star, color: Colors.white,size: 30,),
                              Icon(Icons.star, color: Colors.white,size: 30,),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Text('Restaurant tours', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10,),
                          Text('Throughout Nort America, Coach USA offers safe reliable and convenient bus tours to get you to and conveninet bus tours to get you to and the from multiple diferent sporting events. Say goodbay travel arrangements and rest assured as our tour buses will be awaiting your departure.', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 15, color: Colors.white),
                      textAlign:TextAlign.justify),
                          const SizedBox(height: 10,),
                            ],
                          ),
                          )
                        ) ,
                      const SizedBox(height: 15,),
                      Text('Sporting events', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 7,),
                      Text('Throughout Nort America, Coach USA offers safe reliable and convenient bus tours to get you to and conveninet bus tours to get you to and the from multiple diferent sporting events.', textDirection: TextDirection.ltr, style:TextStyle(fontSize: 15),
                      textAlign:TextAlign.justify),
                      const SizedBox(height: 10,),
                      Expanded(child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                      MaterialButton(
                        shape: const CircleBorder(),
                        color: Colors.amber,
                        child:const Icon(Icons.chevron_right, size: 40,color: Colors.white,),
                        onPressed: () {}),
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