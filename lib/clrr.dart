import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'clr.dart';
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.topCenter,
              height: size.height - 300,
              width: size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/food1.png.jpg'),),),
            ),
          ),


          Positioned(
              bottom: 0,
              child: Container(
                height: size.height / 2.2,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          height: 5,
                          width: 32 * 1.5,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const ProductNameAndPrice(),
                      const SizedBox(
                        height: 16,
                      ),
                      Text('Qty : 1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
                      ),
                      const Spacing(),
                      Row(
                        children: const [
                          RectButton(
                            label: '-',
                          ),
                          RectButton(
                            label: '1',
                          ),
                          RectButton(
                            label: '+',
                          ),

                        ],
                      ),
                      SizedBox(
                      ),
                      Row(
                        children:  [
                          Text("Description",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      const Spacing(),
                      Text(
                        ' Traditional chicken biryani is made by layering marinated chicken at the bottom of a pot followed by another layer of par cooked rice, herbs, ...',
                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
                      ),
                      const Spacing(),
                      Center(
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.black),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(16))),
                              minimumSize: MaterialStateProperty.all(
                                  Size(size.width / 1.4, 37))),
                          onPressed: () {},
                          child: Text('Add To Cart',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),),),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class TabTitle extends StatelessWidget {
  final String label;
  final bool selected;
  const TabTitle({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            label,

          ),
          const SizedBox(
            height: 4,
          ),
          if (selected)
            Container(
              width: 21,
              height: 2,
              decoration: const BoxDecoration(color: Colors.orange),
            )
        ])
      ],
    );
  }
}

class Spacing extends StatelessWidget {
  const Spacing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
    );
  }
}

class RectButtonSelected extends StatelessWidget {
  final String label;
  const RectButtonSelected({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9), color: Colors.orange),
      child: Center(
          child: Text(
            label,

          )),
    );
  }
}

class RectButton extends StatelessWidget {
  final String label;
  const RectButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Text(
          label,

        ),),
    );
  }
}

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Chicken Biriyani',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),

        ),
        Text(
          '\₹100',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),


        ),
      ],
    );
  }
}