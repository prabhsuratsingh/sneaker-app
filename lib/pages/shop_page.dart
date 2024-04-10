import 'package:ecommerce_ui/components/shoe_tile.dart';
import 'package:ecommerce_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12), 
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Text('Search'),
              Icon(Icons.search)
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Purely desi......and Indian'),
        ),

        //hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //create a shoe
              Shoe shoe = Shoe(
                name: 'Shoe1',
                price: '2000',
                description: 'cool shoe',
                imagePath: 'lib/images/_1a3c1b3c-7827-40ec-9af5-ba6a340ed5be.jpg',
              );
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),

        const Padding(
          padding: EdgeInsets.only(left: 25.0, top: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}