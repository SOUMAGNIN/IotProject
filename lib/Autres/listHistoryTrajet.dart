import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_singup/config/palette.dart';
import 'package:login_singup/screen/navBar.dart';

import 'SpecifyTrajet.dart';

class ListHistoryTrajet extends StatefulWidget {
  @override
  _ListHistoryTrajetState createState() => _ListHistoryTrajetState();
}

class _ListHistoryTrajetState extends State<ListHistoryTrajet> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.white,
          leading:IconButton(icon : Icon(Icons.arrow_back, color: Colors.black, size: 30,), onPressed: (){Navigator.pop(context); },),
          title: Center(child: Text("Tous mes parcours",style: TextStyle(color: Colors.black, fontSize: 23), ),),
          actions: [Icon(Icons.search, color: Colors.black, size: 35,), SizedBox(width: 10,)],
        ),
        backgroundColor: Palette.backgroundColor,
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trajet()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10),
                      margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                      height: 0.18*size.height,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://resize.marianne.net/r/770,462/img/var/LQ4063680C/501084/080_HL_ANOWAK_1246515.jpg"
                              ),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 20, bottom: 8) ,
                              child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                              Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                              Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXH8glI50rmkJdMdTuOsQPKNf1L2I7l3jtRw&usqp=CAU"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.radiofrance.fr/s3/cruiser-production/2021/09/ddb8b434-c863-4660-af2d-dda6f1b53ca6/560x315_080_hl_quentindegroeve_1246636.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://resize.marianne.net/r/770,462/img/var/LQ4063680C/501084/080_HL_ANOWAK_1246515.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXH8glI50rmkJdMdTuOsQPKNf1L2I7l3jtRw&usqp=CAU"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.radiofrance.fr/s3/cruiser-production/2021/09/ddb8b434-c863-4660-af2d-dda6f1b53ca6/560x315_080_hl_quentindegroeve_1246636.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),

                  
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://resize.marianne.net/r/770,462/img/var/LQ4063680C/501084/080_HL_ANOWAK_1246515.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXH8glI50rmkJdMdTuOsQPKNf1L2I7l3jtRw&usqp=CAU"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    margin: EdgeInsets.only(top : 6, bottom: 6, left: 12, right: 12),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.radiofrance.fr/s3/cruiser-production/2021/09/ddb8b434-c863-4660-af2d-dda6f1b53ca6/560x315_080_hl_quentindegroeve_1246636.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(left: 20, bottom: 8) ,
                            child: Text("NAME OF THE PLACE", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20), )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("27 Km", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("25 min", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), ),
                            Text("174 kcal", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), )
                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            )/*Text("Body"),*/
        )
    );
  }

}