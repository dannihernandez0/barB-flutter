import 'package:flutter/material.dart';

class PicDetails extends StatelessWidget {
  final String imagePath;

  PicDetails({
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(
                          30,
                        )),
                    image: DecorationImage(
                      image: AssetImage("lib/" + imagePath),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                
                IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
