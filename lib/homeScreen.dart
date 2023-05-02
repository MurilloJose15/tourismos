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

    final largx = MediaQuery.of(context).size.width;
    final largy = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text('Tourismos RO'),
        ),),
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
                          height: largy < 300 ? 150 : 120,
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
                                    width: largx < 711 ? 160 : 204,
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
                                width: largx < 711 ? 600 : 1000,
                                height: largx < 711 ? 200 : 400,  // POSSÍVEL IMPLEMENTAÇÃO DO MEDIA QUERY #########################
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (nomes[seq]),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
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
