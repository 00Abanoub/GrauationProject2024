import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/iPhone2.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 500,
                child: const Text(
                  'TripEase',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Myfont",
                  ),
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              Stack(
                children: [
                  Text(
                    ' Unlock the Secrets of Travel ,Where Dreams Take Flight ',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Myfont",
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 7
                        ..color = const Color(0xff045b6f),
                    ),
                  ),
                  const Text(
                    ' Unlock the Secrets of Travel ,Where Dreams Take Flight ',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Myfont",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              

              SizedBox(
                width: 250,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 28, 110, 177),
                        // Colors.purpleAccent
                        // Color(0xff516395),
                        Colors.blueAccent,
                        Color(0xff614385),
                        //add more colors
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                    BoxShadow(
                          color:
                              Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                          blurRadius: 5), //blur radius of shadow
                    ],
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      //make color or elevated button transparent
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    child:const  Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 15,
                        right: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Get Started",style: TextStyle(fontSize: 25.0),textAlign: TextAlign.center,),
                          SizedBox(width: 15,),
                          Icon(Icons.arrow_forward ,size: 25.0,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
