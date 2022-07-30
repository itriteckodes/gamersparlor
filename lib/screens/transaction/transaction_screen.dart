import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/transaction/transaction_history.dart';
import 'package:gamersparlor/screens/transaction/withdraw_history.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  openDrawer() {
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,

        child: Scaffold(
          
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: TopBarMenu(menu: true,ontap: openDrawer,showtext: true,text: 'Transaction History',),
            foregroundColor: BLACK,
            backgroundColor: WHITE,
            centerTitle: true,
            bottom: TabBar(
              labelColor: Blue_accent,
              indicatorColor: Colors.grey,
              indicatorPadding: EdgeInsets.only(bottom:1),
              unselectedLabelColor: BLACK, 
              tabs: const [
                  Tab(
                    child: Text('Transactions'),
                  ),
                  Tab(
                    child: Text('Withdrawals'),
                  )
              ],
            ) ,
          ),
          key: scaffoldKey,
          endDrawerEnableOpenDragGesture: true,
          drawer: SideDrawer(),
          body:  TabBarView(physics: BouncingScrollPhysics(), children: [TransactionHistory(),WithdrawHistory()])
      
        ));
  }
}
