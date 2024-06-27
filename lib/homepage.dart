import 'package:flutter/material.dart';
import 'package:flutter_application_market/cartpage.dart';
import 'package:flutter_application_market/homepagelast.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePagee();
  }
}

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  List<dynamic> listcolor = [
    Colors.red,
    const Color.fromARGB(255, 225, 255, 119),
    Colors.amber[200],
    Colors.amber[300],
    Colors.amber[400],
    Colors.blue,
    Colors.blueGrey,
    Colors.brown,
    Colors.red,
    Colors.amber[100],
    Colors.amber[200],
    Colors.amber[300],
    Colors.amber[400],
    Colors.blue,
    Colors.blueGrey,
    Colors.brown
  ];

  

  @override
  Widget build(BuildContext context) {return
    
       Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 253, 247, 241),
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'catalog',
                  style: GoogleFonts.orelegaOne(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CartpageStat(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.shopping_cart)),
            ],
          ),
          body:  
             ListView.builder(
              itemCount: listcolor.length,
              itemBuilder: (context, index) {
                return MyWidget(
                  index: index,
                );
              },
            ),)
            
    ; }   
    
  

}



class Model with ChangeNotifier {
  String add = 'add';
  var i;

  List<dynamic> listcolor = [
    Colors.red,
    const Color.fromARGB(255, 225, 255, 119),
    Colors.amber[200],
    Colors.amber[300],
    Colors.amber[400],
    Colors.blue,
    Colors.blueGrey,
    Colors.brown,
    Colors.red,
    Colors.amber[100],
    Colors.amber[200],
    Colors.amber[300],
    Colors.amber[400],
    Colors.blue,
    Colors.blueGrey,
    Colors.brown
  ];
  List<int> pricellist = [
    11,
    25,
    48,
    78,
    96,
    32,
    54,
    78,
    32,
    78,
    65,
    33,
    99,
    88,
    11,
    25
  ];
  List<String> productName = [
    'FlexiGrip',
    'TerraSync',
    'NovaSphere',
    'VitaNova',
    'SwiftLink',
    'MaxiLink',
    'EchoSync',
    'ZeniGlow',
    'AeroWave',
    'PulseMate',
    'PuraZen',
    'SwiftFlare',
    'TurboCharge',
    'EchoJet',
    'XeroGlide',
    'HyperSync'
  ];
  final visible =true;
  void onpressed(bool visible ) {
    visible=!visible;
    notifyListeners();
  }


  int chooceprice = 0;
  List prodctchoosename = [];
  

  

  changeName(index) {
    if (prodctchoosename.any((element) => element == productName[index])) {
      prodctchoosename.remove(productName[index]);
      chooceprice -= pricellist[index];

      
      
    } else {
      prodctchoosename.add(productName[index]);

      chooceprice += pricellist[index];

      

      
    }
  }

 
  
}