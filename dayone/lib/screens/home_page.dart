import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        /*crossAxisAlignment:CrossAxisAlignment.start,
          -> y o'qi bo'yicha Column ichidagi widgetlarni
           birchiziqa taxlaydi!*/
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30.0),
          Placeholder(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                Placeholder(
                  child: IconButton(
                    icon: const Icon(Icons.extension),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const Placeholder(child: SizedBox(height: 37.0)),
          const Text.rich(
            TextSpan(
                text: "Welcome,",
                style: TextStyle(fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: " Gulyamov",
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],),
            style: TextStyle(fontSize: 50),
          ),
          const Placeholder(child: SizedBox(height:30.0)),
          TextField(
            decoration: InputDecoration(
              prefixIcon:const Icon(Icons.search,size: 18,),
              hintText: 'search...',
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0),)
            ),
          ),
          const Placeholder(child: SizedBox(height: 80.0)),
          const Text(
            "Saved Places",
            style: TextStyle(fontWeight: FontWeight.w600,fontSize:20.0),
          ),
          const Placeholder(child: SizedBox(height: 10.0,)),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.4,
            child: GridView.count(
              padding:EdgeInsets.zero,
              crossAxisCount: 2,
              childAspectRatio: 1.491,
              crossAxisSpacing:10,
              mainAxisSpacing:10,
              physics:const NeverScrollableScrollPhysics(),
              children: [
                for(var country in countries)
                Image.asset("assets/images/$country.png")
              ],
              ),
          )
        ],
      ),
    ));
  }
}

final countries = ['japan', 'barcelona', 'greece', 'rome'];
