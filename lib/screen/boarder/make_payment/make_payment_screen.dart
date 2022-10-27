import 'package:flutter/material.dart';
import '../../home/widget/custom_bottom_navigation_bar.dart';

class MakePaymentScreen extends StatefulWidget {
  final int userId;

  const MakePaymentScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<MakePaymentScreen> createState() => _MakePaymentScreenState();
}

class _MakePaymentScreenState extends State<MakePaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,

          title: const Text(
            "Pay Your Rental",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: size.height / 40,
            right: size.height / 40,
            top: size.height / 40,
            bottom: size.height / 40,
            // horizontal: size.width / 19,
            // vertical: size.height / 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Fill Below Form",
                style: TextStyle(color: Colors.grey.shade400, fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade800,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Card Number',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade800,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Expiry Date',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade800,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Name on Card',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade800,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'CVV',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade800,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'City',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.grey.shade800,
                  height: 35,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Post Code',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xFFFFB526)),
                child: const Text(
                  "Pay Now",
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          userId: widget.userId,
        ),
      ),
    );
  }
}
