import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

class CartpageStat extends StatefulWidget {
  const CartpageStat({
    super.key,
  });

  @override
  State<CartpageStat> createState() => _CartpageStatState();
}

class _CartpageStatState extends State<CartpageStat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
       
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 30,
              )),
          title: Padding(
            padding: const EdgeInsets.only(left: 95),
            child: Text(
              'cart',
              style: GoogleFonts.orelegaOne(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 253, 247, 241),
        body: Consumer<Model>(
          builder: (context, model, child) => ListView(
            children: [
              Container(
                height: 600,
                color: const Color.fromARGB(255, 250, 236, 44),
                child: Center(
                  child: ListView.builder(
                    itemCount: model.prodctchoosename.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(model.prodctchoosename[index]),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 4,
                color: const Color.fromARGB(255, 31, 30, 30),
              ),
              Container(
                height: 200,
                color: const Color.fromARGB(255, 250, 236, 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '\$',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${model.chooceprice}',
                      style: const TextStyle(fontSize: 50, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      height: 40,
                      width: 120,
                      child: MaterialButton(
                        onPressed: () {},
                        child: const Text(
                          'buy now',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    
  }
}
