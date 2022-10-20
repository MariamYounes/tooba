import 'package:flutter/material.dart';
import 'package:tooba/elements/order_elements.dart';

class InProgressOrder extends StatelessWidget {
  const InProgressOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: ListView.separated(
        itemBuilder: (context, index) => orderProgressList(context),
        separatorBuilder: (context, index) => Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        itemCount: 3,
      ),
    );
  }
}
