import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  static const String id ='about_page';
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Navigation Drawer'),
        backgroundColor:const Color(0xff764abc),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child:
          ListView.builder(itemBuilder: (context, index){
            return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIALVtO_uns-Pmt5MWN87YTiZ5ndelljpYaA&usqp=CAU'),
                  ),
                  title: const Text('Areeba'),
                  onTap: (){
                    Navigator.pushNamed(context, AboutPage.id);
                  },

            );
          })
          )
        ],
      ),

    );
  }
}
