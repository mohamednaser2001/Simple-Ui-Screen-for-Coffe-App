
import 'package:cofee_app/components/components.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  List<String> types =['Latte','Cappuccino','Milk'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {  },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
                icon: Icon(Icons.person),
              onPressed: () {  },
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.orange,
        items: [

        BottomNavigationBarItem(
          icon:Icon (
              Icons.home_filled,
          ) ,
          label: '',

        ),
        BottomNavigationBarItem(
          icon:Icon (Icons.favorite) ,
          label: '',
        ),
        BottomNavigationBarItem(
          icon:Icon (Icons.notifications_sharp) ,
          label: '',
        ),
      ],
       
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best \ncoffee for you ',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //search bar
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'Find Your Coffee ...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                )
              ),
            ),
          ),


          //horizontal list of types of coffee

          Container(
            height: 40.0,
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return CoffeeTypeItem(
                    name: types[index],
                    index: index,
                  );
                },
                separatorBuilder:(context,index){
                  return SizedBox(width: 30.0,);
                } ,
                itemCount: types.length),
          ),

          //horizontal list of coffee tiles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTiles(name:'Latte',price: 4,path: 'assets/latte2.jpg',),
                CoffeeTiles(name:'Cappuccino',price: 6,path: 'assets/latte.jpg'),
                CoffeeTiles(name:'Milk',price: 3,path: 'assets/latte1.jpg'),
              ],

            ),
          ),

        ],
      ),
    );
  }
}