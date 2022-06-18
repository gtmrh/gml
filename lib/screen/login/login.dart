import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

// final DioClient _client = DioClient();
  bool isCreating = false;

  var _idtTxtEditingController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 0,
              // ),
              Image(
                image: AssetImage("assets/images/gml_logo.png"),
                alignment: AlignmentDirectional.center,
                width: 180,
                height: 150,
              ),
              // Image(
              //   image: AssetImage("assets/images/college.jpg"),
              //   alignment: AlignmentDirectional.center,
              // ),
              userIdField(),
              SizedBox(height: 10),
              passwordField(),
              SizedBox(height: 10),
              isCreating ? CircularProgressIndicator() : loginBtn(),
              SizedBox(height: 10),
              Text(
                "Or",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              // isCreating ? CircularProgressIndicator() :

              otherLogin(),
              // empLoginBtn(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  userIdField() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextFormField(
          scrollPadding: EdgeInsets.only(bottom: 40),
          controller: _idtTxtEditingController,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
              border: OutlineInputBorder(
                // width: 0.0 produces a thin "hairline" border
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                borderSide: BorderSide.none,
                //borderSide: const BorderSide(),
              ),
              hintStyle: TextStyle(
                  color: Colors.blueAccent, fontFamily: "WorkSansLight"),
              filled: true,
              fillColor: Color.fromARGB(255, 221, 232, 254),
              hintText: 'User Id'),
          textInputAction: TextInputAction.next,
        ),
      ),
    );
  }

  passwordField() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextFormField(
          scrollPadding: EdgeInsets.only(bottom: 40),
          controller: _passwordtTxtEditingController,
          obscureText: !_passwordVisible,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.blueAccent,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  )),
              border: OutlineInputBorder(
                // width: 0.0 produces a thin "hairline" border
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                borderSide: BorderSide.none,
                //borderSide: const BorderSide(),
              ),
              hintStyle: TextStyle(
                  color: Colors.blueAccent, fontFamily: "WorkSansLight"),
              filled: true,
              fillColor: Color.fromARGB(255, 221, 232, 254),
              hintText: 'Password'),
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }

  loginBtn() {
    return ElevatedButton(
        child: Text(
          "Student Login",
          style: TextStyle(fontSize: 14),
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.red)))),
        onPressed: () async {
          studentLogin();
        });
  }
  }
}