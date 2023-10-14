import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String gif, km = "0", miles = "0", plt_name = "", data = "";

  DetailsPage(this.gif, this.plt_name, this.km, this.miles, this.data);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            "asset/images/universe-1784292_1280.jpg"))),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue.shade300,
              )
            ],
          ),
          Align(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Hero(
                    tag: widget.gif,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage(widget.gif))),
                    ),
                  ),
                  Text('${widget.plt_name}',
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    Text("${widget.miles} Miles"),
                    Text("${widget.km} Km")
                  ],)
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment(-0.9, 0),
          //   // child:  ,
          // ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width*0.9,
              margin: EdgeInsets.all(25),
              child: SingleChildScrollView(
                child: Text("${widget.data}",
                    style:
                    TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
