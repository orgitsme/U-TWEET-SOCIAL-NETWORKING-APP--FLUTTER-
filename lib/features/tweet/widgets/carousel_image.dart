import 'package:flutter/material.dart';

class CarouselImage extends StatefulWidget {
  final List<String> imageLinks;
  const CarouselImage({super.key, required this.imageLinks});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int _current = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: widget.imageLinks.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: Image.network(
                    widget.imageLinks[index],
                    fit: BoxFit.contain,
                  ),
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  widget.imageLinks.asMap().entries.map((e) {
                    return Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(
                          _current == e.key ? 0.9 : 0.4,
                        ),
                      ),
                    );
                  }).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
