import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_singup/Autres//circle_progress.dart';
import 'package:login_singup/config/palette.dart';
import 'package:login_singup/screen/navBar.dart';


class Controle extends StatefulWidget {
  @override
  _ControleState createState() => _ControleState();
}

class _ControleState extends State<Controle> {




  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
            //color: Colors.black,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, ),
                  child: Center(
                    child: Text("KingSong KS-N10", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  ) ,
                ),
                Container(
                  height: 0.35*size.height,
                  child: CustomPaint(
                    foregroundPainter: CircleProgress(40.0),
                    child: SizedBox(
                      width: 107,
                      height: 107,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.speed
                          ),
                          Text("27", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),

                          Text("Km/h",
                            //style: ,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 6, left: 12),
                      padding: EdgeInsets.all(12),
                      height: 0.135*size.height,
                      width: size.width/2 - 20,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Battery"),
                              Text("87%")
                            ],
                          ),
                          Container(
                            height: 0.07*size.height,
                            width: 0.38*size.width,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                            ),
                            child: Container(
                              height: 0.07*size.height,
                              width: 20,//0.07*size.width,
                              decoration: const BoxDecoration(
                                //color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12, left: 6),
                      height: 0.135*size.height,
                      width: size.width/2 - 20,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(right: 6, left: 12),
                        padding: EdgeInsets.all(12),
                        height: 0.15*size.height,
                        width: size.width/2 - 20,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,                         children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.bluetooth_audio),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 3),
                                    child: Text("Bluetooth")
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 3, bottom: 5),
                                    child: Text("Connect your device")
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.arrow_back_rounded, size: 130,),
                    ),
                    Container(
                      child: Icon(Icons.stop_circle, size: 130,),
                    ),
                    Container(
                      child: Icon(Icons.arrow_forward, size: 130,),
                    ),
                  ],
                )
              ],
            )/*Text("Body"),*/
        )
    );
  }

}