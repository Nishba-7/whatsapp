import 'package:flutter/material.dart';
import 'package:whatsapp/Divider.dart';
import 'package:whatsapp/chatTile.dart';
import 'package:whatsapp/chatlist.dart';

Data data = Data();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
      child: Scaffold(
        appBar: AppBar(title: const Text("WhatsApp"), actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people_alt),),
              Tab(text: "CHATS",),
              Tab(text: "UPDATES",),
              Tab(text: "CALLS",),
            ],
          ),
        ),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.message),
              backgroundColor: Colors.teal,
            ),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context,index,) =>ChatTile(
                name:data.chat.values.elementAt(index).elementAt(0),
                img: data.chat.values.elementAt(index).elementAt(1),
                msg: data.chat.values.elementAt(index).elementAt(2),
                time:data.chat.values.elementAt(index).elementAt(3),
            ),
            separatorBuilder: (context,index,) =>Seperator(),
            itemCount: data.chat.length,
        ),
      ),
    );
  }
}
