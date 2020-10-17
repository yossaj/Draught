import 'package:draught/constants.dart';
import 'components/floating_box.dart';
import 'components/building_button.dart';
import 'components/input_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draught',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Draught'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: kBaseColor,
      body: ListView(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 0),
                  child: Text(
                    'DRAUGHT',
                    style: TextStyle(
                        fontFamily: 'Viga',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Image.asset('assets/images/AtWindow.jpg'),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Text(
                          'Cooling your home the traditional way can save you money and reduce your carbon footprint.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF24255E)),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Text(
                            'Answer the questions below to help us find the optimal times to open and close your windows.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF24255E)))),
                    InputBox(
                      text: 'Postcode',
                    ),
                    InputBox(
                      text: 'Which floor do you live on?',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'What type of home do you live in?',
                        style: kBodyText,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BuildingButton(
                              text: 'Terrace',
                              imagePath: 'assets/images/terrace.png',
                            ),
                            BuildingButton(
                              text: 'Detached House',
                              imagePath: 'assets/images/house.png',
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BuildingButton(
                              text: 'Apartment',
                              imagePath: 'assets/images/apartments.png',
                            ),
                            BuildingButton(
                              text: 'Semi-Detached',
                              imagePath: 'assets/images/semi_detached.png',
                            )
                          ],
                        )
                      ],
                    ),
                    Text('More more'),
                    SizedBox(height: 50,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.deepOrange
                      ),
                      width: double.infinity,
                      child: FlatButton(
                        child: Text(
                            'Calculate',
                            style: TextStyle(
                              color: Colors.white
                            ),
                        ),
                        textColor: Colors.white,

                      ),
                    ),
                    SizedBox(height: 50)
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          ),

        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
