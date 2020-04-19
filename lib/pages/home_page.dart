import 'package:flutter/material.dart';
import 'package:web_covid19/core/consts.dart';
import 'package:web_covid19/widgets/header_widget.dart';
import 'package:web_covid19/widgets/tips_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _appBar(context),
          Expanded(
            child: ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.2,
                  child: Stack(
                    children: [
                      HeaderWidget(),
                      TipsWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          _footer(context),
        ],
      ),
    );
  }

  _appBar(BuildContext context) {
    return Container(
      color: AppColors.blueColor,
      padding: EdgeInsets.symmetric(
          vertical: 24, horizontal: MediaQuery.of(context).size.width * .05),
      child: Row(
        children: [
          Image.asset("logo.png"),
          Expanded(child: SizedBox()),
          _buildButton("Home"),
          _buildButton("Info"),
          _buildButton("About Us"),
          _buildButton("Contact Us"),
        ],
      ),
    );
  }

  Widget _buildButton(String text) {
    return FlatButton(
      onPressed: null,
      padding: EdgeInsets.symmetric(horizontal: 36),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  Widget _footer(BuildContext context) {
    return Container(
      color: AppColors.blueColor,
      padding: EdgeInsets.symmetric(
          vertical: 24, horizontal: MediaQuery.of(context).size.width * .05),
      child: Row(
        children: [
          Text(
            "#dirumahaja",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(width: 50),
          Text(
            "#staysafe",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
