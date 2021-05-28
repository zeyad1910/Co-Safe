import 'package:co_safe/models/slidemodel.dart';
import 'package:co_safe/screens/login.dart';
import 'package:co_safe/utilities/constants.dart';
import 'package:co_safe/widgets/pageIndexIndicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoarding extends StatefulWidget {
  static const String id = '/';
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

List<SlideModel> slides = [];
SlideModel slideModel = SlideModel();
//this variable used for determined which page we are now
int currentIndex = 0;
//this to control moving between pages
PageController pageController = PageController(initialPage: 0);
// this widget check between display next on first two pages or display start in last page
Widget isNext(BuildContext context) {
  if (currentIndex != slides.length - 1) {
    return InkWell(
      splashColor: kMainAppColor,
      onTap: () {
        pageController.animateToPage(currentIndex + 1,
            duration: Duration(milliseconds: 400), curve: Curves.linear);
      },
      child: Text('NEXT'),
    );
  } else {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Login.id);
      },
      child: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: kMainAppColor,
          child: Text(
            'Get Started Now',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          )),
    );
  }
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  void initState() {
    super.initState();
    slides = slideModel.getSlides();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemCount: slides.length,
            itemBuilder: (context, index) {
              return SlideWidget(
                assetImagePath: slides[index].assetImagePath,
                title: slides[index].title,
                desc: slides[index].desc,
              );
            }),
        bottomSheet: Container(
          height: screenHeight * 0.08,
          padding: currentIndex != slides.length - 1
              ? EdgeInsets.symmetric(horizontal: 20.0)
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: currentIndex != slides.length - 1 ? true : false,
                child: InkWell(
                  onTap: () {
                    pageController.animateToPage(slides.length - 1,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.linear);
                  },
                  child: Text('SKIP'),
                ),
              ),
              Visibility(
                visible: currentIndex != slides.length - 1 ? true : false,
                child: Row(
                  children: [
                    //this for loop created for make my page index indicator which display current page
                    for (int i = 0; i < slides.length; i++)
                      currentIndex == i
                          ? PageIndexIndicator(isCurrentPage: true)
                          : PageIndexIndicator(isCurrentPage: false)
                  ],
                ),
              ),
              isNext(context),
            ],
          ),
        ));
  }
}

class SlideWidget extends StatelessWidget {
  final String assetImagePath, title, desc;
  SlideWidget({this.assetImagePath, this.title, this.desc});
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          assetImagePath,
          scale: 3.5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: screenHeight * 0.04,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Text(
            desc,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: screenHeight * 0.025,
              color: kSlidesTextColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
