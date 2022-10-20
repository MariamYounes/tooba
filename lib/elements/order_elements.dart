import 'package:flutter/material.dart';
import 'package:tooba/screens/orders/order_details.dart';

Widget orderProgressList(context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderDetails(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/cake.jpg"),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "Order No.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  // height: 0.7,
                  //fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                "SR 20",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  // height: 0.7,
                  // fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                "Status",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  // height: 0.7,
                  // fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                "123-456",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  // height: 0.7,
                  //fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  // height: 0.7,
                  // fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Text(
                "Pending: Seller’s Approval",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  // height: 0.7,
                  // fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderCompletedList(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/cake.jpg"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "Order No.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    // height: 0.7,
                    //fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "SR 20",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    // height: 0.7,
                    // fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Status",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    // height: 0.7,
                    // fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "123-456",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    // height: 0.7,
                    //fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    // height: 0.7,
                    // fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Delivered",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    // height: 0.7,
                    // fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          width: 100,
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
            "Rate Now",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              // height: 0.7,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget orderRowDetails(txt, data) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 17,
            // height: 0.7,
            //fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          data,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 17,
            // height: 0.7,
            //fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget orderRowDetailsBold(txt, data) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 17,
            // height: 0.7,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          data,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 17,
            decoration: TextDecoration.underline,
            // height: 0.7,
            //fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget orderProgress(context) {
  return Row(
    children: [
      Container(
        width: 100,
        height: 80,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/cake.jpg"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Muffin Cake",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              // height: 0.7,
              //fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            "SR 20",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              // height: 0.7,
              // fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
      const Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Quantity",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              // height: 0.7,
              //fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Text(
            "2",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              // height: 0.7,
              // fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ],
  );
}
