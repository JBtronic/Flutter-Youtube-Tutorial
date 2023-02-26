import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coin Toss',
      home: CoinToss(),
    );
  }
}

class CoinToss extends StatefulWidget {
  const CoinToss({super.key});

  @override
  State<CoinToss> createState() => _CoinTossState();
}

class _CoinTossState extends State<CoinToss>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isHeads = true;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animation = Tween(begin: 0.0, end: pi).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _isAnimating = false;
            _isHeads = Random().nextBool();
          });
          _animationController.reset();
        }
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (!_isAnimating) {
      setState(() {
        _isAnimating = true;
      });
      _animationController.forward();
    }
  }

  Widget _buildCoin() {
    return Transform(
      transform: Matrix4.rotationY(_animation.value),
      alignment: Alignment.center,
      child: Image.asset(
        _isHeads ? 'images/coin_heads.png' : 'images/coin_tails.png',
        width: 150,
        height: 150,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coin Toss'),
      ),
      body: GestureDetector(
        onTap: _startAnimation,
        child: Container(
          color: Colors.white,
          child: Center(
            child: _isAnimating
                ? _buildCoin()
                : Text(
                    _isHeads ? 'Heads' : 'Tails',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
