import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            // width: 40,
            // height: 40,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/media/Bryrq2KIcAADF-N.png'),
              radius: 19.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://naciondeportes.com/wp-content/uploads/2020/05/futuro-de-lionel-messi-en-barcelona.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),

    );
  }
}