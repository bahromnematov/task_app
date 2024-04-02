import 'dart:math';

import 'package:flutter/material.dart';
class Accordion2 extends StatefulWidget {
  const Accordion2({
    Key? key,
    required this.title,
    required this.icon,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget icon;
  final Widget child;

  @override
  _Accordion2State createState() => _Accordion2State();
}

class _Accordion2State extends State<Accordion2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;
  late Animation _colorTween;

  bool _isExpanded = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((value) {
          if (!mounted) return;
          setState(() {});
        });
      }
    });
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(
        milliseconds: 150,
      ),
      vsync: this,
    );
    _heightFactor = _controller.drive(CurveTween(curve: Curves.easeIn));
    _colorTween = ColorTween(
      begin: Colors.grey,
      end: Colors.black87,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
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
                      Transform.rotate(
                        angle: pi * _heightFactor.value * 0.5,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: _colorTween.value,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: _handleTap,
              ),
              ClipRect(
                child: Align(
                  alignment: Alignment.centerLeft,
                  heightFactor: _heightFactor.value,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 10),
                    child: widget.child,
                  ),
                ),
              ),
            ],
          );
        });
  }
}