import 'package:cart/presentation/pages/constants/consytant.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int addToCart = 0;
  @override
  void initState() {
    addToCart;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 250,
                        width: 164,
                        child: Image(
                          image: AssetImage(designer),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Column(
                    children: [
                      Text(
                        'A Power Solar Panel Kit\n12V Monocrystalline,\n Battery Maintainer 10A..',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                        ),
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 10,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Card(
                              elevation: 0,
                              // shape:
                              color: Colors.orange,
                              child: Text('Best Seller',
                                style:TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black
                                ),
                              ),

                            ),
                            Text('in Solar panels',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            )
                          ]
                      ),
                      const SizedBox(height: 10,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text('kes',
                              textAlign: TextAlign.left,
                            ),
                            Text('185,876°°',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black
                              ),
                            )
                          ]
                      ),
                      const SizedBox(height: 10,),
                      const Text('Only 2 left in stock',
                        style: TextStyle(
                            color: Colors.red
                        ),
                      ),
                      const Text('Color:Black,Blue',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Card(
                      child: IconButton(onPressed: (){
                        addToCart--;
                      },
                        icon: const Icon(Icons.remove,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                      width: 30,
                      child: Center(
                        child: (
                            Text(addToCart.toString(),
                          textAlign: TextAlign.center,
                        )),
                      )),
                  Expanded(
                    child: Card(
                      child: IconButton(
                          onPressed: (){
                            addToCart++;
                          },
                          icon: const Icon(
                              Icons.add,color: Colors.black
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: IconButton(onPressed: (){},
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.black,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: IconButton(
                        onPressed: (){},
                        icon: const Icon(
                            Icons.save_alt
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
