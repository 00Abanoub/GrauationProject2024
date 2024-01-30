
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final Color color;
  final IconData icon;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  Color contCol = Color(0xffececec);
  Color iconCol = Color.fromARGB(255, 0, 0, 0);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (a) {
          setState(() {
            contCol = widget.color;
            iconCol = Color.fromARGB(255, 4, 208, 249);
          });
        },
        onExit: (a) {
          setState(() {
            contCol = const Color.fromARGB(255, 235, 8, 8);
            iconCol = Color.fromARGB(255, 173, 3, 111);
          });
        },
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: contCol,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                child: FaIcon(
                  widget.icon,
                  color: iconCol,
                  size: 43,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
