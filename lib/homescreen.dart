import 'package:flutter/material.dart';
import 'package:main_exam/secondscreen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 136, 236, 140),
        title: Text("whatsapp"),
        actions: [InkWell(
          child: Column(
            children: [
              
              Icon(Icons.search),
              
              Icon(Icons.camera_alt),
            
            ],
            
          ),
        
         
          
        ),
        PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                itemBuilder: (context) {
                  return [
                   
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('New Broadcast')),
                    const PopupMenuItem(child: Text('Linked Devices')),
                    const PopupMenuItem(child: Text('Starred Messages')),
                    const PopupMenuItem(child: Text('Settings')),
                  ];
                },
                )],
              
               
   
     ) ,
    
     body: ListView.builder(itemBuilder:
     (context, index) => InkWell(
      onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) => secondscreen(),),),
       child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.account_circle_rounded),
            ),
        title: Text("name"),
        subtitle: Text("massage"),
        trailing: Text("time"),
     
       ),
     ),
      ),
      
      
     );
    

    

      

    
  }
}
