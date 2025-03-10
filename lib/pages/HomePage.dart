import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_DropDownWegit.dart';

class HomePage extends StatelessWidget {
  late double _screenHeight, _screenWidth;

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.green,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          height: _screenHeight,
          width: _screenWidth,
          padding: EdgeInsets.symmetric(horizontal: _screenWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [_title(), _bottomDropDownMenu()],
              ),
              Align(alignment: Alignment.centerRight, child: moonImg()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        fontSize: 70,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    );
  }

  Widget _bottomDropDownMenu() {
    return Container(
      height: _screenHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [_dropDownMenu(), _rowDropDown(), GoMoonBtn()],
      ),
    );
  }

  Widget _dropDownMenu() {
    List<String> _items = [
      'Vishal Kumar Singh',
      'Vikash Kumar Singh',
      'Priti Kumari Singh',
    ];
    return custom_DropDownWidgits(item: _items, width: _screenWidth);
  }

  Widget _rowDropDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        custom_DropDownWidgits(
          item: ['1', '2', '3', '4'],
          width: _screenWidth * 0.43,
        ),
        custom_DropDownWidgits(
          item: ['Gen', 'Ac', 'Sleeper', 'Custom'],
          width: _screenWidth * 0.43,
        ),
      ],
    );
  }

  Widget GoMoonBtn() {
    return Container(
      width: _screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(onPressed: () {}, child: Text("GoMoon")),
    );
  }

  Widget moonImg() {
    return Container(
      width: _screenWidth,
      height: _screenHeight * 0.475,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/moon.png"),
        ),
      ),
    );
  }
}
