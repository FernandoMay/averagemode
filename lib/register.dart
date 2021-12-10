import 'package:averagemode/constants.dart';
import 'package:averagemode/userListPage.dart';
// import 'package:averagemode/userslistpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:kronos/camera.dart';
// import 'package:kronos/camera.dart';
// import 'package:kronos/constants.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  int segmentedControlValue = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          padding: EdgeInsetsDirectional.all(4.0),
          middle: Image.asset("lib/assets/kronos_logo2.png"),
        ),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: 32.0),
                  child: Text(
                    "Crear Cuenta",
                    style: kronosH3Blue,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Nombre",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    keyboardType: TextInputType.text,
                    cursorColor: primaryColor,
                    // prefix: Container(
                    //     height: 20.0,
                    //     margin: EdgeInsets.only(left: 12.0),
                    //     child: Image.asset("lib/assets/User.png")),
                    // placeholder: "Usuario",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Apellidos",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    keyboardType: TextInputType.text,
                    cursorColor: primaryColor,
                    // prefix: Container(
                    //     height: 20.0,
                    //     margin: EdgeInsets.only(left: 12.0),
                    //     child: Image.asset("lib/assets/Password.png")),
                    // placeholder: "Contraseña",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Correo",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: primaryColor,
                    // prefix: Container(
                    //     height: 20.0,
                    //     margin: EdgeInsets.only(left: 12.0),
                    //     child: Image.asset("lib/assets/User.png")),
                    // placeholder: "Usuario",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Contraseña",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    cursorColor: primaryColor,
                    // prefix: Container(
                    //     height: 20.0,
                    //     margin: EdgeInsets.only(left: 12.0),
                    //     child: Image.asset("lib/assets/Password.png")),
                    // placeholder: "Contraseña",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Confirmar contraseña",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    cursorColor: primaryColor,
                    // prefix: Container(
                    //     height: 20.0,
                    //     margin: EdgeInsets.only(left: 12.0),
                    //     child: Image.asset("lib/assets/User.png")),
                    // placeholder: "Usuario",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Fecha de nacimiento",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CupertinoTextField(
                    padding: EdgeInsets.all(12.0),
                    onChanged: (value) => print(value),
                    cursorColor: primaryColor,
                    keyboardType: TextInputType.datetime,
                    suffix: Container(
                        height: 26.0,
                        margin: EdgeInsets.only(right: 12.0),
                        child: Image.asset("lib/assets/Calendar.png")),
                    // placeholder: "Contraseña",
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: greyLightColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text(
                    "Género",
                    style: kronosH1Black,
                  ),
                ),
                Container(
                  // height: 48.0,
                  width: double.infinity,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  child: CupertinoSlidingSegmentedControl(
                    padding: EdgeInsets.all(6.0),
                    groupValue: segmentedControlValue,
                    backgroundColor: greyLightColor,
                    onValueChanged: (value) {
                      setState(() {
                        // segmentedControlValue = value;
                      });
                    },
                    children: {
                      0: Padding(
                        child: Text("Hombre", style: kronosH1Black),
                        padding: EdgeInsets.all(12.0),
                      ),
                      1: Padding(
                        child: Text("Mujer", style: kronosH1Black),
                        padding: EdgeInsets.all(12.0),
                      ),
                      2: Padding(
                        child: Text("Otro", style: kronosH1Black),
                        padding: EdgeInsets.all(12.0),
                      ),
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 16.0),
                  child: Container(
                    width: double.infinity,
                    child: CupertinoButton(
                      color: secondaryColor,
                      // padding: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                      child: Text("Crear cuenta"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const usersListPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
