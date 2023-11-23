import 'package:flutter/material.dart';



class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  String dropdownvalue1 = "Qty:1";
  var nums1 = [

    'Qty:1',
    'Qty:2',
    'Qty:3',
    'Qty:4',
    'Qty:5',

  ];
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: GestureDetector(
            onTap: ()
            {

              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const ()),
              // );

            },
            child: Icon(Icons.arrow_back,)),
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text("My Orders"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text("2 Items",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        border:Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/cofee.png.jpg"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: Text("Cold brew coffee",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right:80),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("₹95",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 50),
                //   child: DropdownButton(
                //
                //     // Initial Value
                //     value: dropdownvalue1,
                //
                //     // Down Arrow Icon
                //     icon: const Icon(Icons.keyboard_arrow_down),
                //
                //     // Array list of items
                //     items: nums1.map((String items) {
                //       return DropdownMenuItem(
                //         value: items,
                //         child: Text(items),
                //       );
                //     }).toList(),
                //     // After selecting the desired option,it will
                //     // change button value to selected value
                //     onChanged: (String? newValue) {
                //       setState(() {
                //         dropdownvalue1 = newValue!;
                //       });
                //     },
                //   ),
                // ),
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
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                        border:Border.all(),
                        image: DecorationImage(
                            image: AssetImage("assets/fries.png.jpg"),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Pommes Souffles",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text("₹150",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 50),
                //   child: DropdownButton(
                //
                //     // Initial Value
                //     value: dropdownvalue1,
                //
                //     // Down Arrow Icon
                //     icon: const Icon(Icons.keyboard_arrow_down),
                //
                //     // Array list of items
                //     items: nums1.map((String items) {
                //       return DropdownMenuItem(
                //         value: items,
                //         child: Text(items),
                //       );
                //     }).toList(),
                //     // After selecting the desired option,it will
                //     // change button value to selected value
                //     onChanged: (String? newValue) {
                //       setState(() {
                //         dropdownvalue1 = newValue!;
                //       });
                //     },
                //   ),
                // ),
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
              ],
            ),
            SizedBox(height: 80,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:25),
                  child: Container(
                    height: 40,
                    width: 170,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(

                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4, 4)

                          ),
                        ]
                    ),
                    child: TextButton(onPressed: (){

                    },style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.orange)
                    ), child: Text("pickup",style: TextStyle(color: Colors.white),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:0),
                  child: Container(
                    height: 40,
                    width: 170,
                    //color: Colors.white,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(

                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4,4)

                          ),
                        ]
                    ),
                    child: TextButton(onPressed: (){

                    },style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.orange)
                    ), child: Text("Delivery",style: TextStyle(color: Colors.white),)),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left:30),
                      child: Text("Delivery to :",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontSize: 15),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:30 ,top: 10),
                      child: Text("149, Sunset ave, Los Ageles, CA",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40,bottom: 30),
                  child: Text("Edit",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text("Delivery Service, Delivery by :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Text("Fodex Express, Friday 24 july",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold ),),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 62),
                  child: Text("Edit",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.blue ),),
                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:30),
                  child: Text("Subtotal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text("₹150",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
                )

              ],
            ),
            SizedBox(height: 20,),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("Delivery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black54),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:222),
                child: Text("₹95",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
              )
            ],),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: Text("₹245",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                )
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 40,
              width: 250,
              child: TextButton(onPressed: (){

              },style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.orange)
              ), child: Text("Pay ₹240",style: TextStyle(color: Colors.white),)),
            ),

          ],
        ),
      ),
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
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Text(
          label,

        ),),
    );
  }
}
