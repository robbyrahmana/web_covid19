import 'package:flutter/material.dart';

class TipsWidget extends StatefulWidget {
  @override
  _TipsWidgetState createState() => _TipsWidgetState();
}

class _TipsWidgetState extends State<TipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.1,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .05),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight, child: Image.asset("header.png")),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  )
                ]),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .05,
                vertical: MediaQuery.of(context).size.width * .03),
            margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
            child: Column(
              children: [
                Text(
                  "Cegah Covid-19 dengan",
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildTips("1.jpg",
                        "Cuci tangan anda dengan sabun\nsetelah keluar rumah dan beraktivitas\ndiluar rumah"),
                    _buildTips("2.jpg",
                        "Gunakan masker wajah saat bepergian\ndi tempat ramai dan saat\nberaktifitas diluar rumah"),
                    _buildTips("3.jpg",
                        "Usahakan untuk tetap dirumah,\nkeluar rumah jika perlu dan\nhal yang mendesak")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTips(String path, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(path),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            height: 1.5,
            color: Colors.black45,
          ),
        )
      ],
    );
  }
}
