import 'package:catalog_app/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
            ),
            Image.asset("images/salad2.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.fill),
            SizedBox(
              height: 15.0,
            ),
            Row(
              // mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mediterranean",
                        style: AppWidget.SemiBoldTextFieldStyle()),
                    Text("Chcikpea Salad",
                        style: AppWidget.boldTextFieldStyle()),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(a.toString(), style: AppWidget.SemiBoldTextFieldStyle()),
                SizedBox(
                  width: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua olor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliq",
                maxLines: 3,
                style: AppWidget.LightTextFieldStyle()),

                SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text(
                  "Delivery Time",
                  style: AppWidget.SemiBoldTextFieldStyle(),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "30 min",
                  style: AppWidget.SemiBoldTextFieldStyle(),
                ),
                
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom:40.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Total Price", style: AppWidget.SemiBoldTextFieldStyle(),),
                      Text("₹28", style: AppWidget.boldTextFieldStyle(),),
                  ],),

                  Container(
                    width:MediaQuery.of(context).size.width/2.5,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color:Colors.black, borderRadius: BorderRadius.circular(8)),
                    child: Row(
                         mainAxisAlignment:MainAxisAlignment.end,
                        children: [
                            Text("Add to cart", style: TextStyle(color:Colors.white,fontSize: 13.0, fontFamily: 'Poppins'),),
                            SizedBox(
                  width: 40.0,
                ),
                            Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Colors.grey,borderRadius: BorderRadius.circular(10),
                                ),
                                child:Icon(Icons.shopping_cart_outlined,color:Colors.white,),
                                
                            ),
                             SizedBox(
                  width: 2.0,
                ),
                        ],
                    ),
                  ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
