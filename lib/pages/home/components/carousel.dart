import 'package:flutter/material.dart';
import 'carousel_content.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    // Auto scroll every 3 seconds
    Future.delayed(const Duration(seconds: 1), () {
      autoScroll();
    });
  }

  void autoScroll() {
    if (!mounted) return;

    final currentOffset = _pageController.offset;
    _pageController
        .animateTo(
      currentOffset + 1.0, // Scroll by 1 pixel at a time
      duration: const Duration(milliseconds: 50),
      curve: Curves.linear,
    )
        .then((_) {
      if (mounted) autoScroll();
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 350, // Fixed column width
            child: index.isEven
                ? _buildFullRowLayout(index)
                : _buildSplitRowLayout(index),
          );
        },
      ),
    );
  }

  Widget _buildFullRowLayout(int index) {
    return BigCarouselItem(index: index);
  }

  Widget _buildSplitRowLayout(int index) {
    return Column(
      children: [
        SmallCarouselItem(index: index),
        SmallCarouselItem(index: index + 1),
      ],
    );
  }
}

class BigCarouselItem extends StatelessWidget {
  final int index;

  const BigCarouselItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        child: const SingleChildScrollView(
        child: CarouselContent(),
      ),
    );
  }
}

class SmallCarouselItem extends StatelessWidget {
  final int index;

  const SmallCarouselItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        child: const SingleChildScrollView(
          child: CarouselContent(),
        ),
      ),
    );
  }
}
