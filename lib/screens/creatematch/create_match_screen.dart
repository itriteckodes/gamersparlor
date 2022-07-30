import 'package:flutter/material.dart';
import 'package:gamersparlor/screens/creatematch/matchmaking_fragment.dart';
import 'package:gamersparlor/screens/transaction/transaction_history.dart';
import 'package:gamersparlor/screens/transaction/withdraw_history.dart';
import 'package:gamersparlor/static/side_drawer.dart';
import 'package:gamersparlor/static/topbar.dart';
import 'package:gamersparlor/values/colors.dart';

class CreateMatchScreen extends StatefulWidget {
  CreateMatchScreen({Key? key}) : super(key: key);

  @override
  State<CreateMatchScreen> createState() => _CreateMatchScreenState();
}

class _CreateMatchScreenState extends State<CreateMatchScreen> {
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
            title: TopBarMenu(menu: false,ontap: (){},showtext: true,text: 'Create a match',),
            foregroundColor: BLACK,
            backgroundColor: WHITE,
            centerTitle: true,
            bottom:TabBar(
              
              labelColor: Blue_accent,
              indicatorColor: Colors.grey,
              indicatorPadding: EdgeInsets.only(bottom:1),
              unselectedLabelColor: BLACK, 
              tabs: const [
                  Tab(
                    child: Text('Matchmaking'),
                  ),
                  Tab(
                    child: Text('Challenge'),
                  )
              ],
            ) ,
          ),
          key: scaffoldKey,
          endDrawerEnableOpenDragGesture: true,
          drawer: SideDrawer(),
          body:  TabBarView(physics: BouncingScrollPhysics(), children: [MatchMakingFragment(),WithdrawHistory()])
      
        ));
  }
}