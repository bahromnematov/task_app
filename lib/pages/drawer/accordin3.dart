import 'package:flutter/material.dart';

class Accordion3 extends StatefulWidget {
  const Accordion3({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _Accordion3State createState() => _Accordion3State();
}

class _Accordion3State extends State<Accordion3>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(
        milliseconds: 150,
      ),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller.view,
        builder: (_, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 16,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              widget.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  onTap: () {}),
            ],
          );
        });
  }
}
