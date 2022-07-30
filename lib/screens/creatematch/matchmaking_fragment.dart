import 'package:flutter/material.dart';
import 'package:gamersparlor/static/large_button.dart';

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }  
class MatchMakingFragment extends StatefulWidget {
  MatchMakingFragment({Key? key}) : super(key: key);

  @override
  State<MatchMakingFragment> createState() => MatchMakingFragmentState();
}

class MatchMakingFragmentState extends State<MatchMakingFragment> {
    BestTutorSite _site = BestTutorSite.javatpoint;  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Select Format",style: TextStyle(fontSize: 24),),
          ),
           ListTile(  
          title:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Regular team',style: TextStyle(fontSize: 24),),
              SizedBox(height: 7,),
              Text('5 min quaters',style: TextStyle(fontSize: 14),),
            ],
          ),  
          leading: Radio(  
            value: BestTutorSite.javatpoint,  
            groupValue: _site,  
            onChanged: ( value) {  
          
            },  
          ),  
        ),  
        SizedBox(height: 20,),
        ListTile(  
          title:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My TEAM',style: TextStyle(fontSize: 22),),
              SizedBox(height: 7,),
              Text('My TEAM',style: TextStyle(fontSize: 14),),
            ],
          ), 
          leading: Radio(  
            value: BestTutorSite.w3schools,  
            groupValue: _site,  
            onChanged: ( value) {  
             
            },  
          ),  
        ),  
        SizedBox(height: 20,),

        ListTile(  
          title:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PL Connect TTO',style: TextStyle(fontSize: 22),),
              SizedBox(height: 7,),
              Text('Triple Thread Online',style: TextStyle(fontSize: 14),),
            ],
          ),  
          leading: Radio(  
            value: BestTutorSite.tutorialandexample,  
            groupValue: _site,  
            onChanged: ( value) {  
           
            },  
          ),  
        ),  
        SizedBox(height: 20,),

        Center(child: LargeButton(title: 'Confirm', onPressed: (){},sreenRatio: 0.8,))
        ],
      ),
    );
  }
}