import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets/second_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PlanetsInformation(),
  ));
}

class PlanetsInformation extends StatefulWidget {
  const PlanetsInformation({super.key});

  @override
  State<PlanetsInformation> createState() => _PlanetsInformationState();
}

class _PlanetsInformationState extends State<PlanetsInformation> with TickerProviderStateMixin {
  List gif = [
    "asset/images/sun.gif",
    "asset/images/earth.gif",
    "asset/images/mas.gif",
    "asset/images/moon.gif"
  ];
  List plt_name = ["SUN","EARTH","MAS","MOON"];

  List miles = ["","93","1170","94"];
  List km = ["","40,070","52000","45750"];
  List data = ["""Mass (1024kg or 1021tons) - This is the mass of the planet in septillion (1 followed by 24 zeros) kilograms or sextillion (1 followed by 21 zeros) tons. Strictly speaking tons are measures of weight, not mass, but are used here to represent the mass of one ton of material under Earth gravity.

Diameter (km or miles) - The diameter of the planet at the equator, the distance through the center of the planet from one point on the equator to the opposite side, in kilometers or miles.

Density (kg/m3 or lbs/ft3) - The average density (mass divided by volume) of the whole planet (not including the atmosphere for the terrestrial planets) in kilograms per cubic meter or pounds per cubic foot. Strictly speaking pounds are measures of weight, not mass, but are used here to represent the mass of one pound of material under Earth gravity.

Gravity (m/s2 or ft/s2) - The gravitational acceleration on the surface at the equator in meters per second squared or feet per second squared, including the effects of rotation. For the gas giant planets the gravity is given at the 1 bar pressure level in the atmosphere. The gravity on Earth is designated as 1 "G", so the Earth ratio fact sheets gives the gravity of the other planets in G's.

Escape Velocity (km/s) - Initial velocity, in kilometers per second or miles per second, needed at the surface (at the 1 bar pressure level for the gas giants) to escape the body's gravitational pull, ignoring atmospheric drag.

Rotation Period (hours) - This is the time it takes for the planet to complete one rotation relative to the fixed background stars (not relative to the Sun) in hours. Negative numbers indicate retrograde (backwards relative to the Earth) rotation.""","""Mass (1024kg or 1021tons) - This is the mass of the planet in septillion (1 followed by 24 zeros) kilograms or sextillion (1 followed by 21 zeros) tons. Strictly speaking tons are measures of weight, not mass, but are used here to represent the mass of one ton of material under Earth gravity.

Diameter (km or miles) - The diameter of the planet at the equator, the distance through the center of the planet from one point on the equator to the opposite side, in kilometers or miles.

Density (kg/m3 or lbs/ft3) - The average density (mass divided by volume) of the whole planet (not including the atmosphere for the terrestrial planets) in kilograms per cubic meter or pounds per cubic foot. Strictly speaking pounds are measures of weight, not mass, but are used here to represent the mass of one pound of material under Earth gravity.

Gravity (m/s2 or ft/s2) - The gravitational acceleration on the surface at the equator in meters per second squared or feet per second squared, including the effects of rotation. For the gas giant planets the gravity is given at the 1 bar pressure level in the atmosphere. The gravity on Earth is designated as 1 "G", so the Earth ratio fact sheets gives the gravity of the other planets in G's.

Escape Velocity (km/s) - Initial velocity, in kilometers per second or miles per second, needed at the surface (at the 1 bar pressure level for the gas giants) to escape the body's gravitational pull, ignoring atmospheric drag.

Rotation Period (hours) - This is the time it takes for the planet to complete one rotation relative to the fixed background stars (not relative to the Sun) in hours. Negative numbers indicate retrograde (backwards relative to the Earth) rotation.""","""Mass (1024kg or 1021tons) - This is the mass of the planet in septillion (1 followed by 24 zeros) kilograms or sextillion (1 followed by 21 zeros) tons. Strictly speaking tons are measures of weight, not mass, but are used here to represent the mass of one ton of material under Earth gravity.

Diameter (km or miles) - The diameter of the planet at the equator, the distance through the center of the planet from one point on the equator to the opposite side, in kilometers or miles.

Density (kg/m3 or lbs/ft3) - The average density (mass divided by volume) of the whole planet (not including the atmosphere for the terrestrial planets) in kilograms per cubic meter or pounds per cubic foot. Strictly speaking pounds are measures of weight, not mass, but are used here to represent the mass of one pound of material under Earth gravity.

Gravity (m/s2 or ft/s2) - The gravitational acceleration on the surface at the equator in meters per second squared or feet per second squared, including the effects of rotation. For the gas giant planets the gravity is given at the 1 bar pressure level in the atmosphere. The gravity on Earth is designated as 1 "G", so the Earth ratio fact sheets gives the gravity of the other planets in G's.

Escape Velocity (km/s) - Initial velocity, in kilometers per second or miles per second, needed at the surface (at the 1 bar pressure level for the gas giants) to escape the body's gravitational pull, ignoring atmospheric drag.

Rotation Period (hours) - This is the time it takes for the planet to complete one rotation relative to the fixed background stars (not relative to the Sun) in hours. Negative numbers indicate retrograde (backwards relative to the Earth) rotation.""","""Mass (1024kg or 1021tons) - This is the mass of the planet in septillion (1 followed by 24 zeros) kilograms or sextillion (1 followed by 21 zeros) tons. Strictly speaking tons are measures of weight, not mass, but are used here to represent the mass of one ton of material under Earth gravity.

Diameter (km or miles) - The diameter of the planet at the equator, the distance through the center of the planet from one point on the equator to the opposite side, in kilometers or miles.

Density (kg/m3 or lbs/ft3) - The average density (mass divided by volume) of the whole planet (not including the atmosphere for the terrestrial planets) in kilograms per cubic meter or pounds per cubic foot. Strictly speaking pounds are measures of weight, not mass, but are used here to represent the mass of one pound of material under Earth gravity.

Gravity (m/s2 or ft/s2) - The gravitational acceleration on the surface at the equator in meters per second squared or feet per second squared, including the effects of rotation. For the gas giant planets the gravity is given at the 1 bar pressure level in the atmosphere. The gravity on Earth is designated as 1 "G", so the Earth ratio fact sheets gives the gravity of the other planets in G's.

Escape Velocity (km/s) - Initial velocity, in kilometers per second or miles per second, needed at the surface (at the 1 bar pressure level for the gas giants) to escape the body's gravitational pull, ignoring atmospheric drag.

Rotation Period (hours) - This is the time it takes for the planet to complete one rotation relative to the fixed background stars (not relative to the Sun) in hours. Negative numbers indicate retrograde (backwards relative to the Earth) rotation.""",];
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController= AnimationController(vsync: this,duration: Duration(seconds: 1));
    animationController.repeat();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.black38,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("asset/images/universe-1784292_1280.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: gif.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) {
                      return DetailsPage(gif[index],plt_name[index],km[index],miles[index],data[index]);
                    },));
                  },
                  child: Container(
                    margin: EdgeInsets.all(25),
                    // width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white24,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment(-1.1, 0),
                          child: AnimatedBuilder(
                            builder: (context, child) {
                              return Hero(
                                tag: gif[index],
                                child: Transform.rotate(
                                  angle: animationController.value,
                                  child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage("${gif[index]}")),
                                          shape: BoxShape.circle,
                                          color: Colors.transparent)),
                                ),
                              );
                            }, animation: animationController,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${plt_name[index]}",style: TextStyle(color: Colors.white,fontSize: 25),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    km[index]==""?Text(""):Text(" 📍 ${km[index]} km ",style: TextStyle(fontSize: 18,color: Colors.black)),
                                    miles[index]==""?Text(""):Text(" ${miles[index]} miles ",style: TextStyle(fontSize: 18,color: Colors.black))
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("user name "),
                accountEmail: Text("Usre email"))
          ],
        ),
      ),
    );
  }
}
