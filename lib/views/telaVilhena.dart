import 'package:flutter/material.dart';
import 'package:tourismos/url_laucher.dart';

class TelaVilhena extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final largy = MediaQuery.of(context).size.height;
    final largx = MediaQuery.of(context).size.width;

    final Uri url = Uri(scheme: 'https', host: 'www.google.com', path: '/maps/place/Porto+Velho,+RO/@-8.7565367,-63.9373096,12z/data=!3m1!4b1!4m15!1m8!3m7!1s0x922d328ca4a88c47:0x4380950ed6230760!2sPorto+Velho+-+RO!3b1!8m2!3d-8.7635576!4d-63.8971704!16zL20vMDF6aGp4!3m5!1s0x92325b665998520b:0x75d0f25ad2c5198b!8m2!3d-8.7635475!4d-63.8971723!16s%2Fg%2F11bc5pvkw0');
    final Uri url2 = Uri(scheme: 'https', host: 'youtu.be', path: '/oEPOMaaekAU');
    final Uri url3 = Uri(scheme: 'https', host: 'www.tripadvisor.com.br', path: '/Restaurants-g737097-Porto_Velho_State_of_Rondonia.html');
    final Uri url4 = Uri(scheme: 'https', host: 'www.tripadvisor.com.br', path: '/Hotels-g737097-Porto_Velho_State_of_Rondonia-Hotels.html');

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('images/pvh1.jpg'),
          fit: BoxFit.fill,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0xFF4CAF50),
          title: Text('Porto-Velho-RO'),
          actions: [
            PopupMenuButton(
                tooltip: 'Menu',
                onSelected: (String value) => launchInWebViewOrVC(url), itemBuilder: (BuildContext) {
              return [
                PopupMenuItem(value: '', child: Text('Localização')),
              ];
            })
          ],
        ),
        body: Container(
          height: largy/2,
          margin: EdgeInsets.only(top: largy/2.1),
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.only(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Porto-Velho, Rondônia", style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                        ),

                      ],
                    ),
                    SizedBox(height: 25,),
                    Text(
                      "Porto Velho é uma cidade charmosa localizada na região Norte do Brasil, com uma atmosfera única que mistura tradição "
                          "e modernidade. Com sua localização privilegiada às margens do Rio Madeira, oferece aos turistas a oportunidade de"
                          " desfrutar de paisagens naturais incríveis, como praias fluviais e floresta amazônica. Além disso, a cidade tem um "
                          "rico patrimônio cultural, evidenciado em seus museus e em sua culinária regional. Uma visita a Porto Velho"
                          " é uma experiência enriquecedora para quem quer conhecer um pouco mais sobre a rica história e cultura do Brasil.",
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/est1.jpg",
                                fit: BoxFit.cover,
                                width: largx < 750 ? 100 : 220,
                                height: largx < 750 ? 90 : 150,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "images/pvh1.jpg",
                                fit: BoxFit.cover,
                                width: largx < 750 ? 100 : 220,
                                height: largx < 750 ? 90 : 150,
                              ),
                            ),
                          ),
                        ),
                        Container(
                            child: Container(
                              alignment: Alignment.center,
                              width: largx < 750 ? 100 : 220,
                              height: largx < 750 ? 90 : 150,
                              margin: EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage("images/band1.jpg"),
                                  fit: BoxFit.cover,
                                  opacity: 0.4,
                                ),
                              ),
                              child: Text(
                                "10+",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 15,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: ElevatedButton(onPressed: () {launchInWebViewOrVC(url2);}, child: Text(' Saiba mais ')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: ElevatedButton(onPressed: () {launchInWebViewOrVC(url3);}, child: Text('Restaurantes')),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 3),
                            child: ElevatedButton(onPressed: () {launchInWebViewOrVC(url4);}, child: Text('Hotéis')),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
