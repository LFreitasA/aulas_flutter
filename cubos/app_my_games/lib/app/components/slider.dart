import 'package:app_my_games/app/utils/image_list.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderImage extends StatefulWidget {
  const SliderImage({super.key});

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(urlImages[activeIndex]['name']!),
          SizedBox(
            height: 32,
          ),
          CarouselSlider.builder(
            carouselController: controller,
            options: CarouselOptions(
              height: 400,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            itemCount: urlImages.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = urlImages[index]['imagem'];

              return buildImage(urlImage!, index);
            },
          ),
          const SizedBox(
            height: 32,
          ),
          buidIndicator(activeIndex),
          //buildButtons(stretch: false, controller: controller)
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => GestureDetector(
        onTap: () {
          print(urlImages[activeIndex]['name']!);
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          color: Colors.grey,
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget buidIndicator(activeIndex) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        onDotClicked: (index) {
          animateToSlide(index);
        },
        effect: const JumpingDotEffect(
          dotWidth: 20,
          dotHeight: 20,
        ),
      );

  Widget buildButtons({bool stretch = false, controller}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8)),
            child: const Icon(
              Icons.arrow_back,
              size: 32,
            ),
            onPressed: () {
              previous();
            },
          ),
          stretch
              ? const Spacer()
              : const SizedBox(
                  width: 32,
                ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8)),
            child: const Icon(
              Icons.arrow_forward,
              size: 32,
            ),
            onPressed: () {
              next();
            },
          ),
        ],
      );

  void next() => controller.nextPage();
  void previous() => controller.previousPage();
  void animateToSlide(int index) => controller.animateToPage(index);
}
