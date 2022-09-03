import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _onEditing = true;
  String? _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Confirmation".toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          VerificationCode(
            keyboardType: TextInputType.number,
            underlineColor: Colors
                .blue, // If this is null it will use primaryColor: Colors.red from Theme
            length: 4,
            textStyle: TextStyle(color: Colors.white),
            cursorColor:
                Colors.blue, // If this is null it will default to the ambient
            // clearAll is NOT required, you can delete it
            // takes any widget, so you can implement your design

            onCompleted: (String value) {
              setState(() {
                _code = value;
              });
            },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Center(
              child: _onEditing
                  ? Text(
                      "Demande d'accès",
                      style: TextStyle(color: Colors.white),
                    )
                  : Text('Your code: $_code',
                      style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.black,
        height: 50,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'SelectCountry');
            },
            child: Text(
              "Confirmer",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
