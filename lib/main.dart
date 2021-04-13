import 'package:flutter/material.dart';
import 'package:regist_page_medical/utils/color.dart';
import 'package:regist_page_medical/widgets/btn_widget.dart';
import 'package:regist_page_medical/widgets/herder_container.dart';
void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegPage(),
    )
);


class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}
class _RegPageState extends State<RegPage> {
  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }
  Widget _buildSocialBtnRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: _buildSocialBtn(
                () => print('Login with Facebook'),
            AssetImage(
              'assets/facebook.jpg',
            ),
          ),
        ),
        _buildSocialBtn(
              () => print('Login with Google'),
          AssetImage(
            'assets/google.jpg',
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: <Widget>[
            HeaderContainer("Register"),
            Expanded(
              flex: 1,
              child:SingleChildScrollView(
              child :Container(
                margin: EdgeInsets.only(left: 20, right: 20, top:10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      _textInput(hint: "Fullname", icon: Icons.person),
                      SizedBox(height: 10,),
                      _textInput(hint: "Email", icon: Icons.email),
                      SizedBox(height: 10,),
                      _textInput(hint: "Password", icon: Icons.lock,),
                      SizedBox(height: 10,),
                      _textInput(hint: "Phone Number", icon: Icons.call),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                                children: [
                                  TextSpan(
                                  text: "Already a member ? ",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: "Login",
                                  style: TextStyle(color: blueColors)),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(height: 25,),
                       Center(
                        child: ButtonWidget(
                          btnText: "REGISTER",
                          onClick: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("-or-",
                          style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(height: 5,),
                      Text("sign in with",
                        style: TextStyle(color:Colors.grey),),
                      _buildSocialBtnRow(),
                    ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
