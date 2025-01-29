// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nbi/model/Pcolors.dart';
import 'package:nbi/model/Tran&Acc.dart';
import 'package:nbi/model/widgets.dart';
import 'package:nbi/view/register.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: PColors.Bcolor,
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: Colors.transparent,
          // Avatar & Greeting
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.off(
                      () => const RegisterPage(),
                    );
                  },
                  child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 196, 87, 40),
                    radius: 25,
                    child: Text(
                      "H",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Morning",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "HAIDR ALHASANI",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Notifcation
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mail_outline,
                  size: 30,
                ),
              ),
            ),
          ],
          // Tab Bar
          bottom: const TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.black),
              insets: EdgeInsets.symmetric(
                horizontal: 60,
              ),
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            overlayColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 234, 234, 234)),
            tabs: [
              Tab(child: Text("Account")),
              Tab(child: Text("Cards")),
              Tab(child: Text("Loan")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Account
            SingleChildScrollView(
              child: Container(
                height: 600,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    // card design
                    const card(),
                    // view portfolio
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                          backgroundColor: const WidgetStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        child: const Text(
                          "View Portfolio",
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                      ),
                    ),
                    // red options bar
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          redoptions(
                            text: "Transfer",
                            icon: Icons.currency_exchange,
                          ),
                          redoptions(
                            text: "Debit Card",
                            icon: Icons.credit_card,
                          ),
                          redoptions(
                            text: "Manage\nChequks",
                            icon: Icons.article_outlined,
                          ),
                          redoptions(
                            text: "ATM",
                            icon: Icons.speaker_outlined,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // bottom toolbar
                    Expanded(
                      child: DefaultTabController(
                        length: 2,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const AccountAndTransaction()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Cards
            const Tab(
              child: Text("SOON"),
            ),
            // Loan
            const Tab(
              child: Text("SOON"),
            ),
          ],
        ),
      ),
    );
  }
}
