import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   final Widget child;
//   final String title;
//   final Color titleColors;
//   final Color buttonDefaultColors;
//   final Color buttonDefaultBorderColors;
//   final String choice;
//   final VoidCallback onPressed;
//   final double height;
//   final double width;
//   final EdgeInsetsGeometry margin;
//   final EdgeInsetsGeometry padding;

//   CustomButton(this.choice,
//       {Key key,
//       this.child,
//       this.buttonDefaultBorderColors = Colors.orange,
//       this.buttonDefaultColors = Colors.orange,
//       @required this.title,
//       this.titleColors = Colors.white,
//       @required this.onPressed,
//       this.height,
//       this.width,
//       this.margin,
//       this.padding})
//       : assert(title != null),
//         assert(choice == "DefaultButton" ||
//             choice == "CustomButton" ||
//             choice == "CustomOutlineButton");
//   // assert(onPressed != null),
//   // super(key: key, onPressed: onPressed);

//   @override
//   Widget build(BuildContext context) {
//     // return _defaultButton(context);
//     return choice == "DefaultButton"
//         ? _defaultButton(context)
//         : choice == "CustomButton"
//             ? _customButton(context)
//             : _customOutlineButton(context);
//   }

//   Widget _defaultButton(BuildContext context) {
//     return Container(
//       margin: this.margin,
//       padding: this.padding,
//       child: ButtonTheme(
//         minWidth: MediaQuery.of(context).size.width,
//         child: RaisedButton(
//           onPressed: this.onPressed,
//           child: new Text(
//             this.title.toUpperCase(),
//             style: TextStyle(color: titleColors),
//           ),
//           shape: new RoundedRectangleBorder(
//             borderRadius: new BorderRadius.circular(5.0),
//             side: BorderSide(
//               color: buttonDefaultBorderColors,
//             ),
//           ),
//           color: buttonDefaultColors,
//         ),
//       ),
//     );
//   }

//   Widget _customButton(BuildContext context) {
//     return Container(
//       height: 45.0,
//       width: width,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.yellow[600],
//             Colors.orange,
//             Colors.orange[700],
//             Colors.orange[900]
//           ],
//           stops: [0.0, 0.5, 0.7, 0.9],
//           tileMode: TileMode.clamp,
//         ),
//         borderRadius: BorderRadius.circular(30.0),
//       ),
//       // padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
//       child: FlatButton(
//         onPressed: this.onPressed,
//         child: Text(
//           '${this.title}'.toUpperCase(),
//           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(50.0),
//             bottomLeft: Radius.circular(50.0),
//             bottomRight: Radius.circular(50.0),
//             topRight: Radius.circular(50.0),
//           ),
//         ),
//         color: Colors.transparent,
//         // disabledColor: Colors.transparent,
//         // focusColor: Colors.transparent,
//         // highlightColor: Colors.transparent,
//         // hoverColor: Colors.transparent,
//         splashColor: Colors.transparent,
//         colorBrightness: Brightness.dark,
//       ),
//     );
//   }

//   Widget _customOutlineButton(BuildContext context) {
//     return Container(
//       height: 45.0,
//       width: width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30.0),
//       ),
//       // padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30.0),
//       child: FlatButton(
//         onPressed: this.onPressed,
//         child: Text(
//           '${this.title}'.toUpperCase(),
//           style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.w600,
//             color: titleColors,
//           ),
//         ),
//         shape: RoundedRectangleBorder(
//           side: BorderSide(color: Colors.orange[400], width: 2.0),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(50.0),
//             bottomLeft: Radius.circular(50.0),
//             bottomRight: Radius.circular(50.0),
//             topRight: Radius.circular(50.0),
//           ),
//         ),
//         color: Colors.transparent,
//         // disabledColor: Colors.transparent,
//         // focusColor: Colors.transparent,
//         // highlightColor: Colors.transparent,
//         // hoverColor: Colors.transparent,
//         splashColor: Colors.transparent,
//         colorBrightness: Brightness.dark,
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

extension CustomButton on TextButton {
  static defaultButton({
    final String title,
    final Color titleColors,
    final Color buttonDefaultColors,
    final Color buttonDefaultBorderColors,
    final VoidCallback onPressed,
    final double height,
    final double width,
    final EdgeInsetsGeometry margin,
    final EdgeInsetsGeometry padding,
  }) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      child: ButtonTheme(
        child: TextButton(
          onPressed: onPressed,
          child: new Text(
            title.toUpperCase(),
            style: TextStyle(color: titleColors),
          ),
          style: TextButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
              // side: BorderSide(
              //   color: buttonDefaultBorderColors,
              //   width: 0.0,
              // ),
            ),
            backgroundColor: buttonDefaultColors,
          ),
        ),
      ),
    );
  }
}
