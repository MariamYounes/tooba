import 'package:flutter/material.dart';
import 'package:tooba/elements/order_elements.dart';
import 'package:tooba/elements/text_field.dart';
import 'package:tooba/elements/utils.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({Key? key}) : super(key: key);

  final TextEditingController notes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/back.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backArrow(context),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                  ),
                  const Text(
                    "Order Details",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              orderRowDetails("Order No:", "123-456"),
              orderRowDetails("Date:", "12-10-2022"),
              orderRowDetails("Order Status:", "Pending"),
              orderRowDetails("Payment Type:", "Card"),
              orderRowDetailsBold("Order Details:", "Location"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/bakery.jpg",
                      height: 30,
                      width: 30,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Bakery Shop",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        // height: 0.7,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: orderProgress(context),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: orderProgress(context),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  "Note:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    // height: 0.7,
                    //fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: textFieldBuilderLines(notes, 'Type Notes', line: 2),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 140,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/12.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "Cancel Request",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      // height: 0.7,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              orderRowDetails("Total (2 Items)", "SR 80"),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
