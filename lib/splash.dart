import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/auth/view/login_veiw.dart';
import 'package:hungr/root.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // ----- Animation Controller -----
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    // Fade animation (0 → 1)
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    // Scale animation (zoom in)
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    /// Start animations
    _controller.forward();

    /// Navigate after animation ends + delay
    Future.delayed(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginVeiw()),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gap(90),

          // ---- Animated Logo ----
          FadeTransition(
            opacity: _fadeAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Center(
                child: SvgPicture.asset(
                  'assets/splash/images/svg/Hungry_.svg',
                ),
              ),
            ),
          ),

          Gap(90),

          // ---- Animated Bottom Burger ----
          FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0, 0.3),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Curves.easeOut,
                ),
              ),
              child: Image.asset(
                'assets/splash/images/burger.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
