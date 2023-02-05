import 'package:bahia/Splash/Splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login/Login.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  int currentIndex = 0;
  late PageController _controller;

  // List<SliderModel> slides = <SliderModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 0);
    // slides = getSlides();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return getSlides();

                  // backgroundColor: Colors.white,
                }),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget getSlides() {
    return Stack(children: [
      Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 100.0, top: 40),
          child: currentIndex ==0 ?Container(
              height: 183,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/on1.png'),
                      fit: BoxFit.none))): currentIndex ==1?
          Container(
              height: 183,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/on2.png'),
                      fit: BoxFit.none)))
              : Container(
              height: 183,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/on3.png'),
                      fit: BoxFit.none))),
        ),
        SizedBox(
          height: 40,
        ),
        Expanded(
          flex: 3,
          child: Container(
              height: 300,
              decoration: const BoxDecoration(
                  // color: Colors.amber,
                  image: DecorationImage(
                      image: ExactAssetImage('assets/Vector.png'),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 100,left: 100,bottom: 20),
                      child: Text(
                        'Lorum Ipsum',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                        textAlign: TextAlign.center,

                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 100,left: 100,bottom: 50),
                      child: Text(
                        'Borem ipsum dolor sit amet consectetur. Borem ipsum dolor sit amet consectetur',
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    ),
                    currentIndex == 0
                        ? Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 60,
                                    // margin: EdgeInsets.all(40),
                                    width: 100,
                                    decoration: BoxDecoration(
                                        // width: double.infinity,
                                        border: Border.all(color: Colors.white),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: FloatingActionButton(
                                      backgroundColor: Color(0xFFFF4572),
                                      child: Text(
                                        "Skip",
                                      ),
                                      onPressed: () {
                                        if (currentIndex == 3 - 1) {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login()),
                                          );
                                        }
                                        _controller.nextPage(
                                            duration:
                                                Duration(milliseconds: 100),
                                            curve: Curves.bounceIn);
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 60,
                                    // margin: EdgeInsets.all(40),
                                    width: 100,
                                    decoration: BoxDecoration(
                                        // width: double.infinity,
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.white,
                                      child: Text(
                                        "Next",
                                        style:
                                            TextStyle(color: Color(0xFFFF4572)),
                                      ),
                                      onPressed: () {
                                        if (currentIndex == 3 - 1) {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Splash()),
                                          );
                                        }
                                        _controller.nextPage(
                                            duration:
                                                Duration(milliseconds: 100),
                                            curve: Curves.bounceIn);
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        : currentIndex == 1
                            ? Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 60,
                                        // margin: EdgeInsets.all(40),
                                        width: 100,
                                        decoration: BoxDecoration(
                                            // width: double.infinity,
                                            border:
                                                Border.all(color: Colors.white),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: FloatingActionButton(
                                          backgroundColor: Color(0xFFFF4572),
                                          child: Text(
                                            "Skip",
                                          ),
                                          onPressed: () {
                                            if (currentIndex == 3 - 1) {
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Login()),
                                              );
                                            }
                                            _controller.nextPage(
                                                duration:
                                                    Duration(milliseconds: 100),
                                                curve: Curves.bounceIn);
                                          },
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 60,
                                        // margin: EdgeInsets.all(40),
                                        width: 100,
                                        decoration: BoxDecoration(
                                            // width: double.infinity,
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: FloatingActionButton(
                                          backgroundColor: Colors.white,
                                          child: Text(
                                            "Next",
                                            style: TextStyle(
                                                color: Color(0xFFFF4572)),
                                          ),
                                          onPressed: () {
                                            if (currentIndex == 3 - 1) {
                                              Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Splash()),
                                              );
                                            }
                                            _controller.nextPage(
                                                duration:
                                                    Duration(milliseconds: 100),
                                                curve: Curves.bounceIn);
                                          },
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Padding(
                                padding: const EdgeInsets.only(
                                    right: 50.0, left: 50, top: 20),
                                child: Container(
                                    height: 60,
                                    // margin: EdgeInsets.all(40),
                                    width: MediaQuery.of(context).size.width,
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                        // width: double.infinity,
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    // Button
                                    child: TextButton(
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                              color: Color(0xFFFF4572)),
                                        ),
                                        onPressed: () {
                                          if (currentIndex == 3 - 1) {
                                            // Navigate to next screen
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Login()),
                                            );
                                          }
                                        })),
                              )
                  ],
                ),
              )),
        ),
      ]),
      Padding(
        padding: const EdgeInsets.only(bottom: 250.0, top: 60),
        child: Container(
          // width: MediaQuery.of(context).size.width,
          //   height: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage('assets/Group.png'),
            fit: BoxFit.fill,
          )),
        ),
      ),
    ]);
  }

  // container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}

class SliderModel{
  String? image;

// images given
  SliderModel({this.image});

// setter for image
  void setImage(String getImage){
    image = getImage;
  }

// getter for image
  String? getImage(){
    return image;
  }
}
List<SliderModel> getSlides(){
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel();

// 1
  sliderModel.setImage("images/slider2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

// 2
  sliderModel.setImage("images/slider2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

// 3
  sliderModel.setImage("images/slider2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();
  return slides;
}
