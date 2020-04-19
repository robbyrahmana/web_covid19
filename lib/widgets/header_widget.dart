import 'package:flutter/material.dart';
import 'package:web_covid19/core/consts.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueColor,
      height: MediaQuery.of(context).size.height * .6,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .08,
          vertical: MediaQuery.of(context).size.width * .02),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Waspadai Covid-19\nBersama Kami.",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 60,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Laporkan dan Konsultasi kepada kami\njika anda atau kerabat dekat anda\nterindikasi gejala Covid-19.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 25),
              Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Text(
                    "Info Lebih Lanjut",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: AppColors.yellowColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
