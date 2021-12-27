import 'package:dating_app/constants/constants.dart';
import 'package:dating_app/screens/phone_number_screen.dart';
import 'package:dating_app/widgets/app_logo.dart';
import 'package:dating_app/widgets/default_button.dart';
import 'package:dating_app/widgets/terms_of_service_row.dart';
import 'package:flutter/material.dart';
import 'package:dating_app/helpers/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';


class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // Variables
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late AppLocalizations _i18n;
 
  @override
  Widget build(BuildContext context) {
    /// Initialization
    _i18n = AppLocalizations.of(context);

    return Scaffold(
      key: _scaffoldKey,
      //backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
         /* image: DecorationImage(
              image: AssetImage("assets/images/background_image.jpg"),
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeatY),*/
              color: Color.fromRGBO(235, 243, 249, 1),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(235, 243, 249, 1),
              /*gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(235, 243, 249, 1),
                    Theme.of(context).primaryColor, 
                    Colors.black.withOpacity(.4)])*/),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

            /// App logo
            //SizedBox(height: 40),
            AppLogo(),
            //SizedBox(height: 10),

            /// App name
            /*Text(APP_NAME,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 20),

            Text(_i18n.translate("welcome_back"),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white)),
            SizedBox(height: 5),
            Text(_i18n.translate("app_short_description"),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white)),*/
            //SizedBox(height: 20),

              /// Sign in with Phone Number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.maxFinite,
                  child: DefaultButton(
                    child: Text(
                        _i18n.translate("sign_in_with_phone_number"),
                        style: GoogleFonts.montserrat(fontSize: 18, color: Colors.black)),                   
                        onPressed: () {
                      /// Go to phone number screen
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PhoneNumberScreen()));
                    },
                  ),
                ),
              ),
              SizedBox(height: 15),

              // Terms of Service section
              /* Text(
                _i18n.translate("by_tapping_log_in_you_agree_with_our"),
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 7,
              ),
              TermsOfServiceRow(), */

              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
