import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSDashboardScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/screens/CSSignUpScreen.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSColors.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSConstants.dart';
import 'package:crypto_template/Screen/FullApps/cloudStorage/utils/CSWidgets.dart';

class CSSignInScreen extends StatefulWidget {
  static String tag = '/CSSignInScreen';

  @override
  CSSignInScreenState createState() => CSSignInScreenState();
}

class CSSignInScreenState extends State<CSSignInScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 105, 20, 15),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: buildInputDecoration("Email"),
                ),
                20.height,
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: buildInputDecoration("Password"),
                ),
                50.height,
                authButtonWidget("Sign In").onTap(
                  () {
                    CSDashboardScreen().launch(context);
                  },
                ),
                15.height,
                googleSignInWidget(),
                15.height,
                appleSignInWidget(),
                20.height,
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(String labelText) {
    return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      labelText: labelText,
      labelStyle: primaryTextStyle(),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(color: Colors.black, width: 1.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1.5, color: CSGreyColor),
        borderRadius: BorderRadius.zero,
      ),
    );
  }
}
