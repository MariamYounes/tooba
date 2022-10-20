import 'package:flutter/material.dart';
import 'package:tooba/screens/orders/completed.dart';
import 'package:tooba/screens/orders/inprogress.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool progress = true;

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
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Text(
                    "My Orders",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            progress = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "In Progress",
                              style: TextStyle(
                                fontSize: 16,
                                color: progress == true
                                    ? Colors.black
                                    : Colors.black38,
                              ),
                            ),
                            progress == true
                                ? Container(
                                    height: 1,
                                    width: 80,
                                    color: Colors.black,
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            progress = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Completed",
                              style: TextStyle(
                                fontSize: 16,
                                color: progress == false
                                    ? Colors.black
                                    : Colors.black38,
                              ),
                            ),
                            progress == false
                                ? Container(
                                    height: 1,
                                    width: 80,
                                    color: Colors.black,
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                progress == true
                    ? const Expanded(
                        child: InProgressOrder(),
                      )
                    : const Expanded(
                        child: CompletedOrder(),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
