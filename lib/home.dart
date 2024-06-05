import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paystreet/widgets/app_icon.dart';
import 'package:paystreet/widgets/icon_and_text.dart';

class Paystreet1 extends StatelessWidget {
  const Paystreet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'Paystreet Update',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,

        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black54),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: () {}),

      ),  bottomNavigationBar: BottomNavigationBar(
      items:  const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home",backgroundColor: Colors.lightBlue),
        BottomNavigationBarItem(icon: Icon(Icons.wallet_travel_sharp),label: "wallet",backgroundColor: Colors.lightBlue),

        BottomNavigationBarItem(icon: Icon(Icons.graphic_eq_outlined),label: "graph",backgroundColor: Colors.lightBlue),

        BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),label: "person",backgroundColor: Colors.lightBlue),

      ],
    ),
      body: _buildBody(),
    );
  }
}
Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _buildGreetingEntry(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildBalanceEntry(),
                Divider(),
                _buildAccountDetails(),
                Divider(),
                _buildBillPayment(),
                Divider(),
                _buildTransactionList(),
                Divider(),
                _buildTransaction(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Row _buildGreetingEntry() {
  return   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.brown,
            radius: 20.0,
            backgroundImage: AssetImage("assets/images/dami.jpg"),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Hi, Esther Bukola",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1,),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Good Evening",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
      AppIcon(icon: Icons.qr_code,size: 30,backgroundColor: Colors.grey, iconColor: Colors.lightBlue,)
    ],
  );
}

Widget _buildBalanceEntry() {
  return Container(
    padding: EdgeInsets.only(bottom: 5,left: 80),
    width:double.maxFinite,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(10),
    ),
    child:
    Column(
  crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Row(
          children: [
            Text("Current Balance",style: TextStyle(color: Colors.white,),),
            SizedBox(width: 5,),
            IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                size: 10,
                color: Colors.grey[600],
              ),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text("\$7,860,00",style: TextStyle(fontSize:36,fontWeight:FontWeight.bold,color: Colors.white),),
        SizedBox(
          height: 10,
        ),
        Row(

          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),

              child: Column(
               children: [
                 Text("Fund Account",style: TextStyle(color: Colors.white,fontSize: 18),),
                 IconButton(onPressed: () {}, icon: Icon(Icons.download))
               ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),

              child: Column(
                children: [
                  Text("Internal Transfer",style: TextStyle(color: Colors.white,fontSize: 18),),
                  IconButton(onPressed: () {}, icon: Icon(Icons.download))
                ],
              ),
            ),
          ],
        )

      ],
    ),
  );
}

Row _buildAccountDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Bill Payment", style: TextStyle(color: Colors.black,fontSize: 20),),
      IconButton(
        icon: Icon(
          Icons.arrow_right_alt,
          size: 20,
          color: Colors.grey[600],
        ),
        onPressed: () {},
      )
    ],
  );
}



Wrap _buildBillPayment() {
  return Wrap(
    spacing: 20.0,
    children: [
      IconAndTextWidget(icon: Icons.signal_cellular_alt_outlined,
          text: "Buy Airtime",
          iconColor: Colors.lightBlueAccent),
      IconAndTextWidget(icon: Icons.network_check_sharp,
          text: "Buy Data",
          iconColor: Colors.lightGreenAccent),
      IconAndTextWidget(icon: Icons.tv_rounded,
          text: "Cable Tv",
          iconColor: Colors.greenAccent),
      IconAndTextWidget(icon: Icons.light_mode_outlined,
          text: "Electricity",
          iconColor: Colors.pinkAccent),
      IconAndTextWidget(icon: Icons.person_add_alt_rounded,
          text: "Become an Agent",
          iconColor: Colors.yellowAccent),
      IconAndTextWidget(icon: Icons.air_rounded,
          text: "Withdraw Funds",
          iconColor: Colors.pinkAccent),
      IconAndTextWidget(icon: Icons.payments_outlined,
          text: "Ask for Pay",
          iconColor: Colors.orange),
      IconAndTextWidget(icon: Icons.signal_cellular_alt_outlined,
          text: "Buy Airtime",
          iconColor: Colors.green),

    ],


  );
}

Row _buildTransactionList() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Transaction", style: TextStyle(color: Colors.black,fontSize: 20),),
      Text("See All")
    ],
  );
}

ListView _buildTransaction() {
  return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      AppIcon(
                        icon: Icons.shop_2_sharp,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Shopping",
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "12 may 2023, 09:00",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text("\$500.00")
                ],
              )),
        );
      });
}
