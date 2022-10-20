import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tooba/screens/home/top_sellers.dart';

Widget sellersList(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: SizedBox(
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TopSellers(),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/girl.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Seller",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 10,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    ),
  );
}

Widget topSeller(count) {
  return Row(
    children: [
      Text(
        count,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/bakery.jpg"),
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
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Shop Name",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 17,
              // height: 0.7,
              // fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                size: 15,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.black,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.black,
              ),
              Icon(
                Icons.star_border,
                size: 15,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
      const Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            " Total Orders",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              // height: 0.7,
              color: Colors.black54,
            ),
          ),
          Text(
            "20K",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              height: 0.9,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    ],
  );
}
