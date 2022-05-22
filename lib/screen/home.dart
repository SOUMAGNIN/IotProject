import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_singup/Modules/authenfication.dart';
import 'package:login_singup/Modules/database.dart';
import 'package:login_singup/Modules/user.dart';
import 'package:login_singup/config/palette.dart';
import 'package:login_singup/screen/navBar.dart';
import 'package:login_singup/screen/controle_screen.dart';
import 'package:provider/provider.dart';
import '../Autres//listHistoryTrajet.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Authentification _auth = Authentification();
  @override
  Widget build(BuildContext context) {
    ///yassi
    final user = Provider.of<AppUser>(context);
    if (user == null) throw Exception("user not found");
    final database = DatabaseService(user.uid);
    var date = DateTime.now() ;
    ///

    var size = MediaQuery.of(context).size;

    return StreamProvider<List<AppUserData>>.value(
        initialData: [],
        value: database.users,
        child: Scaffold(
            backgroundColor: Palette.backgroundColor,
          drawer: NavBar(),
          appBar: AppBar(
          backgroundColor: Colors.blue ,
          elevation: 0.0,
          title: Text('Smart Bike App'),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StreamBuilder<AppUserData>(
                    stream: database.user ,
                    builder: (context, snapshot) {
                      print("A ce niveau");
                      if (snapshot.hasData) {
                        AppUserData userData = snapshot.data;
                        if (userData == null)  {
                          return Container(
                            margin: EdgeInsets.only(left: 12, right: 12, top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text("Wilfried YASSI", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)
                                    ),
                                    Container(margin: EdgeInsets.only(bottom: 10), child: Text("Monday, 16th Mars, 2022", style: TextStyle(fontSize: 16)))
                                  ],
                                ),
                                Container(
                                  height: 65,
                                  width: 65,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4H5NgErIK-Rn7ir6y_mnhXKZ5e1vSA8X2vg&usqp=CAU"
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }
                        return Container(
                          margin: EdgeInsets.only(left: 12, right: 12, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 10, bottom: 10),
                                      child: Text('Hello '+userData.name , style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)
                                  ),
                                  Container(margin: EdgeInsets.only(bottom: 10), child: Text(DateFormat('EEE,d MMM,yyyy').format(date), style: TextStyle(fontSize: 16)))
                                ],
                              ),
                              Container(
                                height: 65,
                                width: 65,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4H5NgErIK-Rn7ir6y_mnhXKZ5e1vSA8X2vg&usqp=CAU"
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      } else {
                        return Text("Grosse erreur", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),);
                      }
                    },
                  ),
                  Container(
                    height: 0.38*size.height,
                    width: size.width - 20,
                    margin: EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://www.wikihow.com/images_en/thumb/6/68/Change-the-Date-on-Google-Maps-Step-2.jpg/v4-460px-Change-the-Date-on-Google-Maps-Step-2.jpg"
                            //"https://www.datavis.fr/tutorials/maps/google-firstmap/france-zoom-18.png"
                        ),
                        fit: BoxFit.cover
                      )
                    ),

                    child: Stack(
                      children: [
                        Positioned(

                          left: 0.285*size.width,
                          top: 0.38*size.height/2,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            child: Text("DEFINIR UN PARCOURS",
                            style: TextStyle(fontSize: 13),),
                          ),
                        ),
                        Positioned(
                            left: 0.38*size.width,
                            bottom: 0.05*size.height,
                            //0.38*size.height/1.5,
                            child: Container(
                              height: 75,
                              width: 75,
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                icon: Icon(Icons.directions_bike_rounded, color: Colors.white, size: 40,),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)  => Controle()),
                                  );
                                },
                              ),
                            )
                        ),
                        Positioned(
                          left: 15,
                            top: 15,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("0,00",
                                  style: TextStyle(
                                    fontSize: 45
                                  ),
                                  )
                                ),
                                Container(
                                    child: Text("Distance totale des parcours (km) >",
                                      style: TextStyle(
                                          fontSize: 16
                                      ),
                                    )
                                )

                              ],
                            )
                        ),


                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListHistoryTrajet()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 15, top: 7, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("TOUS MES PARCOURS", style: TextStyle(fontSize: 17),),
                          ),
                          Icon(Icons.arrow_forward_ios_outlined),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 0.18*size.height,
                    margin: EdgeInsets.all(10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.only(top : 15),
                          height: 0.18*size.height,
                          width: 0.7*size.width,
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
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.only(top : 15),
                          height: 0.18*size.height,
                          width: 0.7*size.width,
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
                          margin: EdgeInsets.only(right: 12),
                          padding: EdgeInsets.only(top : 15),
                          height: 0.18*size.height,
                          width: 0.7*size.width,
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
                      ],
                    )

                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 7, bottom: 7),
                          child: Text("PROGRAMMER UN PARCOURS", style: TextStyle(fontSize: 17),),
                        ),
                        Row(
                          children: [
                            Text("PLUS", style: TextStyle(fontSize: 17),),
                            Icon(Icons.arrow_forward_ios_outlined, size: 17,),
                          ],
                        ),


                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 22, left: 15),
                    height: 0.18*size.height,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.white,
                            Colors.orange,
                          ],
                      ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                            child: Text("Bonjour !", style: TextStyle(fontSize: 23),)
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 40),
                            child: Text("Il est egalement posible de programmer un parcours afin de vous le rappeller")
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(left: 10, right: 10,bottom: 5, top: 5),
                          decoration: const BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            ),
                          ),
                          child: Text("CREER UN PROGRAMME",
                            style: TextStyle(fontSize: 13),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )/*Text("Body"),*/
          )
        ));
  }

}
