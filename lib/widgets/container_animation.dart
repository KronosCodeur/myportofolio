import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  final Widget widget;

  const AnimatedContainerWidget({super.key, required this.widget});
  @override
  _AnimatedContainerWidgetState createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
  bool _hovering = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1,milliseconds: 50),
    )..repeat(reverse: true);

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0, -0.2),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _hovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _hovering = false;
        });
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.translate(
            offset: _animation.value * (_hovering ? 80 : -80),
            child: child,
          );
        },
        child: widget.widget
      ),
    );
  }
}
