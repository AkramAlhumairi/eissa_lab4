
import 'package:eissa_lab4/login.dart';
import 'package:eissa_lab4/main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55,bottom: 45),
      child: Drawer(
        width: MediaQuery.of(context).size.width/2,
        
        child: Column(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.teal),
      
              child: Column(
                children: [
                  CircleAvatar(
                   
                    
      //backgroundImage:AssetImage("images/ksam.jpg"),
       radius: 50,
                  ),
                 Expanded(child:  Divider(color:Colors.black,thickness: 1,indent: 20,endIndent: 20,
                 ),),
                 SizedBox(height: 1,),
                  Expanded(child: Text("AkramAlhumairi@gmail.com"),)
                ],
              ),
              
            ),
            Expanded(
              child: ListView(
          children: [
            
    buildListTile(context,"Home",Icon(Icons.home),MyHome()),
    buildListTile(context,"Login",Icon(Icons.login),Login(name: "Akram",)),
      buildListTile(context,"Home",Icon(Icons.home),MyHome()),
    buildListTile(context,"Login",Icon(Icons.login),Login()),
      buildListTile(context,"Home",Icon(Icons.home),MyHome()),
    buildListTile(context,"Login",Icon(Icons.login),Login()),
      buildListTile(context,"Home",Icon(Icons.home),MyHome()),
    buildListTile(context,"Login",Icon(Icons.login),Login()),
      buildListTile(context,"Home",Icon(Icons.home),MyHome()),
    buildListTile(context,"Login",Icon(Icons.login),Login()),
      buildListTile(context,"Home",Icon(Icons.home),MyHome()),
    buildListTile(context,"Login",Icon(Icons.login),Login()),
            
          ],
        ),
            
            )
          ],
        )
      ),
    );
  }
   @override
   Padding buildListTile(BuildContext context,String title,icon,page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(title: Text(title),

      tileColor: Colors.amberAccent,
        leading:icon,
        trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){//هذا لما اضغط عليه يوديني الي الهوم
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>page),
        (router)=>false);
          
                 },
      
      
      ),
    ) ;
  }
}