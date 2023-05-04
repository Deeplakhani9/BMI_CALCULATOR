import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with

  TickerProviderStateMixin{
  late AnimationController _controller;
  late AnimationController controller;
  late Animation sizeAnimation;
  late Animation secondAnimation;
  late Animation thirdAnimation;
  late Animation textAnimation;
  double _value = 0;
  double _weight = 0;
  double _age = 0;
  @override
  void initState() {
    super.initState();
    controller =AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
    _controller =AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
    sizeAnimation = Tween(begin: 100.0, end: 150.0).animate(controller);
    secondAnimation = Tween(begin: 150.0, end: 150.0).animate(_controller);
    thirdAnimation = Tween(begin: 50.0, end: 350.0).animate(_controller);
    textAnimation = Tween(begin: 0.0, end: 50.0).animate(controller);
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
    _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR',style: TextStyle(color: Color(0xff4C5270)),),
        centerTitle: true,
        backgroundColor: Color(0xffBCECE0),

      ),
      body: Container(
        color: Color(0xffBCECE0),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: sizeAnimation.value,
                  width: sizeAnimation.value,
                  child: Icon(Icons.male_rounded,size: 80,color: Color(0xffF652A0),),
                  decoration: BoxDecoration(
                    color: Color(0xff36EEE0),
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: sizeAnimation.value,
                  width: sizeAnimation.value,
                  child: Icon(Icons.female_rounded,size: 80,color: Color(0xff4C5270),),
                  decoration: BoxDecoration(
                    color: Color(0xff36EEE0),
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: secondAnimation.value,
              width: thirdAnimation.value,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("${_value.toInt()}m",style: TextStyle(fontSize: 25,color: Color(0xff4C5270),fontWeight: FontWeight.w500),),
                  Slider(
                      min: 0,
                      max: 200,
                      thumbColor: Color(0xffF652A0),
                      activeColor: Colors.black26,
                      inactiveColor: Colors.black12,
                      value: _value,
                      onChanged:  (value){
                        setState(() {
                          _value = value;
                        });
                      }
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xff36EEE0),
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: sizeAnimation.value,
                  width: sizeAnimation.value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("weight",style: TextStyle(fontSize: 20,color: Color(0xff4C5270),fontWeight: FontWeight.w800),),
                      Text("${_weight.toInt()}",style: TextStyle(fontSize: 25,color: Color(0xff4C5270),fontWeight: FontWeight.w500),),
                      Slider(
                          min: 0,
                          max: 120,
                          thumbColor: Color(0xffF652A0),
                          activeColor: Colors.black26,
                          inactiveColor: Colors.black12,
                          value: _weight,
                          onChanged:  (value){
                            setState(() {
                              _weight = value;
                            });
                          }
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff36EEE0),
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: sizeAnimation.value,
                  width: sizeAnimation.value,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("age",style: TextStyle(fontSize: 20,color: Color(0xff4C5270),fontWeight: FontWeight.w800),),
                      Text("${_age.toInt()}",style: TextStyle(fontSize: 25,color: Color(0xff4C5270),fontWeight: FontWeight.w500),),
                      Slider(
                          min: 0,
                          max: 120,
                          thumbColor: Color(0xffF652A0),
                          activeColor: Colors.black26,
                          inactiveColor: Colors.black12,
                          value: _age,
                          onChanged:  (value){
                            setState(() {
                              _age = value;
                            });
                          }
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff36EEE0),
                    border: Border.all(color: Colors.black,width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: secondAnimation.value,
              width: thirdAnimation.value,
              alignment: Alignment.center,
              child: Text("Calculate",style: TextStyle(
                fontSize: textAnimation.value,
                fontWeight: FontWeight.w500,
                color: Color(0xff4C5270),
              ),),
              decoration: BoxDecoration(
                color:  Color(0xff36EEE0),
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(20),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
