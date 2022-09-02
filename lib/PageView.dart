import 'package:flutter/material.dart';
import 'package:flutter_counter/HomePage.dart';
import 'package:flutter_counter/ImageURL.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_counter/ImageURL.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  PageController _controller = PageController();
  bool onLastPage = false;
  var image = imageURLS.image1;

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Container(

                  //color: Colors.cyan,
                  decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageURLS.image1)),
              )),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageURLS.image2),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageURLS.image3),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          Container(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Opacity(
                      opacity: onLastPage ? 0 : 1,
                      child: Text(
                        'SKIP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                  ),
                  SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(
                          dotHeight: 15,
                          dotColor: Colors.black,
                          radius: 12,
                          dotWidth: 15,
                          type: WormType.normal,
                          activeDotColor: Colors.white
                          // strokeWidth: 5,
                          )),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            'DONE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                ],
              )),
        ],
      ));
}
