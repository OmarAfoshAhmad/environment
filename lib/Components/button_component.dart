import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ButtonComponent extends StatelessWidget {
  final double width;
  final double height;
  final double sizeIcon;
  final Color colorIcon;
  final double sizeFont;
  final Color colorFont;
  final Color backcolor;
  final double rounded;
  final double mHorizantal;
  final double mVertical;
  final TextStyle? textStyle;
  const ButtonComponent({
    super.key,
    this.width = 100,
    this.height = 40,
    this.sizeIcon = 14,
    this.colorIcon = Colors.white,
    this.sizeFont = 14,
    this.colorFont = Colors.white,
    this.backcolor = Colors.blue,
    this.rounded = 15,
    this.mHorizantal = 20,
    this.mVertical = 10,
     required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin:
          EdgeInsets.symmetric(horizontal: mHorizantal, vertical: mVertical),
      alignment: AlignmentDirectional.center,
      child: MaterialButton(
        height: height,
        minWidth: width,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rounded)),
        color: backcolor,
        textColor: colorFont,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Exit",
              style: textStyle,
            ),
            SizedBox(
              width: width / 25,
            ),
            FaIcon(
              color: colorIcon,
              FontAwesomeIcons.anglesLeft,
              size: sizeIcon,
            ),
          ],
        ),
      ),
    );
  }
}
