import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_singup/Autres/circle_progress.dart';
import 'package:login_singup/config/palette.dart';
import 'package:login_singup/screen/navBar.dart';

class Trajet extends StatefulWidget {
  @override
  _TrajetState createState() => _TrajetState();
}

class _TrajetState extends State<Trajet> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 0,
          backgroundColor: Colors.white,
          leading:IconButton(icon : Icon(Icons.arrow_back, color: Colors.black, size: 30,), onPressed: (){Navigator.pop(context); },),
          title: Text("Tous mes parcours",style: TextStyle(color: Colors.black, fontSize: 23), ),
          ),
        backgroundColor: Palette.backgroundColor,
        body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top : 6, bottom: 6, ),
                    height: 0.25*size.height,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://resize.marianne.net/r/770,462/img/var/LQ4063680C/501084/080_HL_ANOWAK_1246515.jpg"
                            ),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 7, bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          //margin: EdgeInsets.only(left: 25),
                          width: size.width/1.8,
                            child: Text("Cette Application vous permet de suivre vos different parcours avec certaines reference tel que vos calorie ...", style: TextStyle(fontSize: 15),)),
                        Center(
                          child: Container(
                            //margin: EdgeInsets.only(top: 15, ),
                            padding: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            child: Text("EN SAVOIR PLUS",
                              style: TextStyle(fontSize: 13, color: Colors.deepOrange, ), ),
                          ),
                        ),
                      ],
                    )
                  ),
                  Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            color: Colors.deepOrange,
                            width: 2, // This would be the width of the underline
                          ))
                      ),
                      child: Text("Details", style: TextStyle(fontSize: 20, color: Colors.deepOrange, /*decoration: TextDecoration.underline*/ ),),
                    ),
                  ),
                  Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 25, left: 30) ,
                          child: Container(
                            child : Text("Information sur le jour", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Jour"),
                              ),
                              Container(
                                child : Text("14/08/2022"),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Heure"),
                              ),
                              Container(
                                child : Text("17h30"),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Temperature"),
                              ),
                              Container(
                                child : Text("20°C"),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Viettes du vent"),
                              ),
                              Container(
                                child : Text("< 12 Km/h"),
                              ),

                            ],
                          ),
                        ),
                        Divider(
                          thickness: 10
                          ,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 25, left: 30) ,
                          child: Container(
                            child : Text("Exercice", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Durée"),
                              ),
                              Container(
                                child : Text("1h30"),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Vitesse Moyenne"),
                              ),
                              Container(
                                child : Text("20km/h"),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Distance"),
                              ),
                              Container(
                                child : Text("5km"),
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 30, left: 30, right: 30) ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child : Text("Calorie"),
                              ),
                              Container(
                                child : Text("174 kcal"),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )/*Text("Body"),*/
        )
    );
  }

}