import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<FormState> logInformKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  Widget _Email() {
    return SizedBox(
      height: 25.h,
      width: 45.w,
      child: TextFormField(
        cursorColor: Theme.of(context).primaryColor,
        textAlign: TextAlign.justify,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.primary,
          focusColor: Theme.of(context).colorScheme.primary,
          suffixIcon: Icon(Icons.search,
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.4)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
                width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 1),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          hintText: 'Search..',
          hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.4)),
        ),
        controller: email,
        validator: (first) {
          if (first!.isEmpty) {
            return "Enter Name";
          }
          return null;
        },
      ),
    );
  }

  List list = [
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
    {"name": "12:09:12"},
  ];

  String dropdownValue = 'Dog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: Container(),
        leadingWidth: 0,
        toolbarHeight: 50.h,
        title: Row(
          children: [
            Image.asset(
              "assests/Group-Copy-3 (1).png",
              width: 10.w,
              // height: 5.h,
            ),
            Text(
              "Prometeo",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 4.w),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                // interstitialAd.show();
                // Get.to(() => Catelog(), arguments: Get.arguments);
              },
              child: Icon(
                Icons.account_circle_outlined,
                color: Theme.of(context).primaryColor,
                size: 8.w,
              ),
            ),
          )
        ],
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Row(
          children: [
            Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(right: 15.w),
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your position",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 4.w),
                      ),
                      Container(
                        // alignment: Alignment.center,
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        height: 180.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset:
                                  Offset(1, 2), // changes position of shadow
                            ),
                          ],
                          // color: Colors.amber,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "You haven't added your banks yet. \n Add the bank you desire",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 4.w),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                // Get.to(() => HomeScreen());
                                addBankDialougeBox();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 30.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "ADD BANK",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      // fontWeight: FontWeight.w500,
                                      fontSize: 4.w),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your Banks",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 4.w),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                padding: EdgeInsets.all(5),
                                // height: 10.h,
                                // width: 10.h,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(
                                            1, 2), // changes position of shadow
                                      ),
                                    ],
                                    color:
                                        Theme.of(context).colorScheme.primary),
                                child: Icon(
                                  Icons.delete_outline_rounded,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                // height: 10.h,
                                // width: 10.h,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(
                                            1, 2), // changes position of shadow
                                      ),
                                    ],
                                    color:
                                        Theme.of(context).colorScheme.primary),
                                child: Icon(
                                  Icons.edit_outlined,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              RawMaterialButton(
                                onPressed: () {
                                  // Get.to(() => HomeScreen());
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 5, bottom: 5, left: 5, right: 5),
                                  alignment: Alignment.center,
                                  // height: 30.h,
                                  // width: 30.w,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(2)),
                                  child: Text(
                                    "ADD BANK",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 3.w),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 300.h,
                        width: double.infinity,
                        margin: EdgeInsets.all(10),
                        // padding:
                        //     EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        // height: 200.h,
                        // width: 130.w,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset:
                                  Offset(1, 2), // changes position of shadow
                            ),
                          ],
                          // color: Colors.amber,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 35.h,
                              width: double.infinity,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  )),
                              child: Row(
                                children: [
                                  Text(
                                    "PAIS",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 3.w),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    "BANCO",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 3.w),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                )),
            Expanded(
                flex: 7,
                child: Container(
                  // height: 200.h,
                  // width: 100.w,
                  // decoration: BoxDecoration(color: Colors.blue),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your History",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 5.w),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          // padding: EdgeInsets.only(),
                          height: MediaQuery.of(context).size.height * 0.8,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset:
                                    Offset(1, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40.h,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      )),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Transactions",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 4.w),
                                      ),
                                      _Email(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "FILTER BY",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 2.5.w),
                                      ),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "CURRENCY ",
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.w),
                                          ),

                                          Text(
                                            "DATE ",
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.w),
                                          ),
                                          SizedBox(),
                                          Text(
                                            "BANK ",
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 2.w),
                                          ),
                                          SizedBox(
                                            width: 7.w,
                                          ),
                                          // Container(),
                                          Container(),
                                          Container(),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                alignment: Alignment.center,
                                                height: 20.h,
                                                width: 7.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    border: Border.all(
                                                        color: Colors.green)),
                                                child: Text(
                                                  "USD",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 2.w),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                alignment: Alignment.center,
                                                height: 20.h,
                                                width: 7.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    border: Border.all(
                                                        color: Colors.red)),
                                                child: Text(
                                                  "EUR",
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 2.w),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: 20.h,
                                                width: 7.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    border: Border.all(
                                                        color: Colors.yellow)),
                                                child: Text(
                                                  "col",
                                                  style: TextStyle(
                                                      color: Colors.yellow,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 2.w),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 25.h,
                                            // width: 45.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary
                                                    .withOpacity(0.3),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 25.h,
                                                  width: 8.w,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          right: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.3)))),
                                                  child: Icon(
                                                    Icons.calendar_month,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary
                                                        .withOpacity(0.4),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 8, right: 8),
                                                  child: Text(
                                                    "01/06/22 - 01/01/22",
                                                    style: TextStyle(
                                                        // color: Colors.black,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary
                                                            .withOpacity(0.4),
                                                        fontSize: 3.w),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 25.h,
                                            // width: 45.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary
                                                    .withOpacity(0.3),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 25.h,
                                                  width: 8.w,
                                                  decoration: BoxDecoration(
                                                      border: Border(
                                                          right: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.3)))),
                                                  child: Icon(
                                                    Icons
                                                        .account_balance_outlined,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary
                                                        .withOpacity(0.4),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: DropdownButton<String>(
                                                    // Step 3.
                                                    value: dropdownValue,
                                                    underline: Container(),
                                                    // Step 4.
                                                    items: <String>[
                                                      'Dog',
                                                      'Cat',
                                                      'Tiger',
                                                      'Lion'
                                                    ].map<
                                                            DropdownMenuItem<
                                                                String>>(
                                                        (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(
                                                          value,
                                                          style: TextStyle(
                                                              fontSize: 3.w),
                                                        ),
                                                      );
                                                    }).toList(),
                                                    // Step 5.
                                                    onChanged:
                                                        (String? newValue) {
                                                      setState(() {
                                                        dropdownValue =
                                                            newValue!;
                                                      });
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(),
                                          Container(),
                                          Row(
                                            children: [
                                              RawMaterialButton(
                                                onPressed: () {},
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(5),
                                                  // height: 25.h,
                                                  // width: 10.w,
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary
                                                          .withOpacity(0.1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child: Text(
                                                    "Clear filters",
                                                    style: TextStyle(
                                                        // color: Colors.black,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary
                                                            .withOpacity(0.7),
                                                        fontSize: 2.5.w),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    padding: EdgeInsets.all(3),
                                                    // height: 25.h,
                                                    // width: 10.w,
                                                    decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary
                                                            .withOpacity(0.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Icon(
                                                      Icons.restart_alt_rounded,
                                                      size: 18,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        // height: 10.h,
                                        height: 0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary
                                            .withOpacity(0.3),
                                      ),
                                      Table(
                                        border: TableBorder.all(
                                            color: Colors.white),
                                        children: [
                                          TableRow(
                                            // decoration:
                                            //     BoxDecoration(color: Colors.blue),
                                            children: [
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "DATE",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'DATE',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "BANK",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'BANK',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "ACCOUNT",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'ACCOUNT',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "MONEDA",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'MONEDA',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "DETELLE",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'DETELLE',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              SizedBox(
                                                width: 7.w,
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "REF",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'REF',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "DATE",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'DATE',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "DATE",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'DATE',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                              DropdownButton<String>(
                                                menuMaxHeight: 0,

                                                elevation: 0,
                                                // Step 3.
                                                value: "DATE",
                                                underline: Container(),
                                                // Step 4.
                                                items: <String>[
                                                  'DATE',
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(
                                                      value,
                                                      style: TextStyle(
                                                          fontSize: 3.w),
                                                    ),
                                                  );
                                                }).toList(),
                                                // Step 5.
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    // dropdownValue = newValue!;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        // height: 10.h,
                                        height: 0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary
                                            .withOpacity(0.3),
                                      ),
                                      Table(
                                        children: List.generate(
                                            list.length,
                                            (index) => TableRow(
                                                    decoration: BoxDecoration(
                                                      color: index.isEven
                                                          ? Colors.white
                                                          : Color(0xffF6F9FB),
                                                    ),
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 7.w,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 10),
                                                        child: Text(
                                                          list[index]["name"],
                                                          style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              // color: Colors.black,
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .secondary
                                                                  .withOpacity(
                                                                      0.7),
                                                              fontSize: 3.w),
                                                        ),
                                                      ),
                                                    ])),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  addBankDialougeBox() {
    Get.defaultDialog(
        // radius: 40,
        title: "",
        middleText: "",
        // titlePadding: null,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        content: Container(
          height: 200.h,
          width: 250.w,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Bank",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 5.w),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
                Text(
                  "Select the bank you want to add",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w500,
                      fontSize: 3.w),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  // height: 30.h,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assests/Peru (PE).png"),
                      Image.asset("assests/Logo banco.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
