import 'package:flutter/material.dart';
import 'signin.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({super.key});


  @override
  _CoverPage createState() => _CoverPage();
}

class _CoverPage extends State<CoverPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.centerLeft,
                  colors: [
                    Colors.blue.withOpacity(0.5), // Adjust opacity as needed
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              image: DecorationImage(
                image: AssetImage('assets/images/img.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.9), // Adjust the opacity level here
                  BlendMode.dstATop, // Adjust the blend mode as needed
                ),
              ),
            ),


            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        "assets/images/LOGO.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.fitHeight,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 2),
                    Text(
                      'ScholarSphere',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 400),
                Column(
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Hello and \nwelcome here !",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Get an overview of how you are performing and motivate yourself to achieve even more.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),

        SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        print("lates start button");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: const Text('Lets Start'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Background color
                        onPrimary: Colors.white, // Text color
                        elevation: 5, // Elevation (shadow)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 20), // Button padding
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }


}