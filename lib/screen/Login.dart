import 'package:flutter/material.dart';
import 'package:karmas/provider/auth.dart';
import 'package:karmas/screen/home.dart';
import 'package:karmas/theme/shape.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final emails = TextEditingController();
  final pass = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkout();
  }

  checkout() async {
    Future<SharedPreferences> _pref = SharedPreferences.getInstance();
    SharedPreferences pref = await _pref;
    print(pref.getString('token'));
    if (pref.getString('token') != null) {
      print(pref.getString('token'));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homes()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<ApiLogin>(context);
    return Material(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 240,
          flexibleSpace: ClipPath(
            clipper: Customshape(),
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
              child: SafeArea(
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'KARMA',
                          style: TextStyle(
                            fontSize: 27,
                            decoration: TextDecoration.underline,
                            decorationThickness: 0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'UNTING  POWER',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(top: 18),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextField(
                    controller: emails,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.all(15),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 15,
                  ),
                  child: TextField(
                    controller: pass,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.all(15),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Password',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      child: TextButton(
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.right,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 160,
                    child: ElevatedButton(
                      onPressed: () {
                        print(user.getApi(emails.text, pass.text, context));
                        user.getApi(emails.text, pass.text, context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a member yet?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Click Here',
                            style:
                                TextStyle(fontSize: 16, color: Colors.orange),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
