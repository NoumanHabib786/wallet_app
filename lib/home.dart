import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/styling.dart';
import 'package:wallet/utilities/buttons.dart';
import 'package:wallet/utilities/card.dart';
import 'package:wallet/utilities/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final _controller = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[280],
      //Floating Action Button
      floatingActionButton: FloatingActionButton(
          elevation: 20,
          backgroundColor: Color.fromARGB(210, 62, 62, 62),
          child: Icon(
            Icons.monetization_on,
            size: 30,
          ),
          onPressed: () {}),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      //Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
          height: 50,
          elevation: 10,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                ),
                Icon(
                  Icons.settings,
                  size: 30,
                )
              ],
            ),
          )),

      //Body
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: style26().copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Cards",
                        style: style26(),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey[400],
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 25,
                    ),
                  )
                ],
              ),
            ),

            //size box
            const SizedBox(
              height: 20,
            ),
            // cards
            SizedBox(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  Mycard(
                    balance: 330000,
                    cardnum: 3232,
                    expMonth: 2,
                    expYear: 23,
                    color: Colors.purple[500],
                  ),
                  Mycard(
                    balance: 532.32,
                    cardnum: 3232,
                    expMonth: 2,
                    expYear: 23,
                    color: Colors.grey[500],
                  ),
                  Mycard(
                    balance: 987.32,
                    cardnum: 3232,
                    expMonth: 2,
                    expYear: 23,
                    color: Colors.amber[500],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //page indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 20,
            ),
            //3 buttons --> send + pay + bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  My_Button(
                    imagepath: "assets/pic.png",
                    buttonText: "send",
                  ),
                  My_Button(
                    imagepath: "assets/pic.png",
                    buttonText: "Pay",
                  ),
                  My_Button(
                    imagepath: "assets/pic.png",
                    buttonText: "Bills",
                  ),
                ],
              ),
            ),
            //column--> stats + transactions
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  List_Home(
                    icon: Icons.money,
                    subtitle: "Payment and Incom",
                    titleTile: "Statistics",
                  ),
                  List_Home(
                    icon: Icons.transfer_within_a_station,
                    subtitle: "Transactions",
                    titleTile: "Transaction History",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
