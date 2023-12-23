// app_drawer.dart

import 'package:flutter/material.dart';

import '../pages/activation_function_page.dart';
import '../pages/home_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(20, 1, 77, 1.0),
        child: ListView(
          children: [
            drawerHeader(),
            itemMenu(
                titre: "Home",
                icon: Icons.home,
                goto: ()=>Navigator.of(context).popAndPushNamed("/")
            ),
            itemMenu(titre: "Relu", icon: Icons.network_cell,
                goto: ()=>Navigator.of(context).popAndPushNamed("Relu")),
            itemMenu(titre: "Sigmoid", icon: Icons.tab,
                goto: ()=>Navigator.of(context).popAndPushNamed("Sigmoid")),
            itemMenu(titre: "Tanh", icon: Icons.wallet,
                goto: ()=>Navigator.of(context).popAndPushNamed("Tanh")),

          ],
        ),
      ),
    );
  }
}

DrawerHeader drawerHeader(){
  return DrawerHeader(
      decoration: BoxDecoration(
          color: Color.fromRGBO(4, 8, 137, 1.0)
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/prof.png"),
              radius: 60,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text("Deep Learning", style: TextStyle(fontSize: 18,color:
            Colors.yellow),),
          ),
          Align(
            alignment: Alignment(1,0.4),
            child:Text("Activation Functions", style: TextStyle(fontSize: 15,color:
            Colors.yellow),),
          )
        ],
      )
  );
}

//-----------------items---------------
Container itemMenu({required String titre, required IconData icon, VoidCallback?
goto}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: ListTile(
      leading: Icon(icon, size: 20, color: Colors.yellow,),
      title: Text(titre, style: TextStyle(color: Colors.orange, fontSize: 18),),
      onTap: goto,
    ),
  );
}