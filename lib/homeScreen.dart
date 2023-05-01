import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tourismos/views/telaPortoVelho.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get nomes => ['Porto-Velho','Ariquemes','Ouro Preto','Vilhena'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text('Tourismos RO'),
        actions: [
          PopupMenuButton(
              tooltip: 'Menu',
              onSelected: (String value) {
                Navigator.of(context).pushNamed('/$value');
              }, itemBuilder: (BuildContext) {
            return [
              PopupMenuItem(value: 'tela1', child: Text('Porto-Velho-RO')),
              PopupMenuItem(value: 'tela2', child: Text('Ariquemes-RO')),
              PopupMenuItem(value: 'tela3', child: Text('Ouro Preto-RO')),
              PopupMenuItem(value: 'tela4', child: Text('Vilhena-RO')),
            ];
          })
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 200, // POSSÍVEL IMPLEMENTAÇÃO DO MEDIA QUERY #########################
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context,
                                  int seq,) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/tela${seq + 1}');
                                  },
                                  child: Container(
                                    width: 160,
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(left: 15),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage('images/band${seq + 1}.jpg'),
                                        fit: BoxFit.fill,
                                        opacity: 0.7,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        Container(

                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            (nomes[seq]),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        )),
                  ],
                ),
                SizedBox(height: 20),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int seq) {
                      return Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/tela${seq + 1}');
                              },
                              child: Container(
                                height: 200,  // POSSÍVEL IMPLEMENTAÇÃO DO MEDIA QUERY #########################
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage("images/est${seq + 1}.jpg"),
                                      fit: BoxFit.cover,
                                      opacity: 0.7
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    (nomes[seq]),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      Text(
                                        "4,6",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
