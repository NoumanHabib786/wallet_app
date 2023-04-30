import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet/styling.dart';

class Mycard extends StatefulWidget {
  final double balance;
  final int cardnum;
  final int expYear;
  final int expMonth;
  final color;

  const Mycard(
      {Key? key,
      required this.balance,
      required this.cardnum,
      required this.expYear,
      required this.expMonth,
      this.color})
      : super(key: key);

  @override
  State<Mycard> createState() => MycardState();
}

class MycardState extends State<Mycard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: widget.color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: style18().copyWith(
                      color: Colors.white, fontWeight: FontWeight.normal),
                ),
                Icon(
                  Icons.card_membership,
                  size: 30,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$${widget.balance.toString()}",
              style: style28()
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "***32${widget.cardnum.toString()}",
                  style: style18().copyWith(color: Colors.white),
                ),
                Text(
                  "${widget.expMonth.toString()}/${widget.expYear.toString()}",
                  style: style16().copyWith(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
