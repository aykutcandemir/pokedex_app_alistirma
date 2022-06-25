import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constants/constants.dart';
import 'package:pokedex_app/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokebollImageUrl = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              alignment:  Alignment.centerLeft,
              child: Text(
                Sabitler.title,
                style: Sabitler.getTitleTextStyle())),
          ),
    
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              pokebollImageUrl,
              width: ScreenUtil().orientation == Orientation.portrait 
                ? 0.15.sh 
                : 0.15.sw,
              fit: BoxFit.cover,
              
              ),
                      )
        ],
      ),
    );
  }
}
