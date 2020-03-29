import 'package:flutter/material.dart';
import 'package:visit_nepal/widgets/dev_detail.dart';

class AboutScreen extends StatelessWidget {
  final ThemeData themeData;
  AboutScreen({this.themeData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Tentang Aplikasi',
            style: themeData.textTheme.headline,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: themeData.accentColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: themeData.primaryColor,
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 8.0),
          color: themeData.primaryColor,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Aplikasi ini adalah aplikasi yang bertujuan memperkenalkan keunikan tempat wisata dunia.',
                  style: themeData.textTheme.body2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: themeData.accentColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Developers',
                    style: themeData.textTheme.body1,
                  ),
                ],
              ),
              DevDetail(
                themeData: themeData,
                name: 'Alfi Naufal',
                job: 'Flutter Mobile Developer.',
                mail: 'alfinaufal.an@gmail.com',
                url:
                    'https://github.com/alfigest/Komandro-Apps/blob/master/assets/images/alfi.jpg?raw=true',
              ),

              DevDetail(
                themeData: themeData,
                name: 'Anisa Tresnan',
                job: 'UI/UX',
                mail: 'anisatresnan@gmail.com',
                url:
                    '',
              ),
            ],
          ),
        ));
  }
}
