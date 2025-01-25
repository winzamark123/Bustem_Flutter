import 'package:flutter/material.dart';

class CarouselContent extends StatelessWidget {
  const CarouselContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CarouselHeader(),
        CarouselItem(),
      ],
    );
  }
}

class CarouselHeader extends StatelessWidget {
  const CarouselHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            color: const Color(0xFFE6EAF5),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.person,
            size: MediaQuery.of(context).size.width * 0.015,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.008,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'john@doe.com',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.006,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Text(
            '''
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos. 
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quos. 
            ''',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),
          Image.asset(
            'assets/images/drawing.png',
            errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Text('Failed to load image');
            },
          )
        ],
      ),
    );
  }
}
