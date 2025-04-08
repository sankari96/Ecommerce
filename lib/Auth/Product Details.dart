
import 'package:flutter/material.dart';
import 'package:project1/Auth/Cartscreen.dart';

class ProductDetails extends StatefulWidget {
  String? image;
  String? mobilename;
  String? mobilemodel;
  String? mobileprice;

  ProductDetails({
    super.key,
    this.image,
    this.mobilemodel,
    this.mobilename,
    this.mobileprice,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top Bar with Back & Cart
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cartscreen()));
                      },
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),

              // Product Image
              Center(
                child: Container(
                  height: mediaHeight * 0.25,
                  width: mediaWidth * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white10,
                  ),
                  child: Image.asset(widget.image.toString()),
                ),
              ),

              const SizedBox(height: 10),

              // Model, Name, Price
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: mediaWidth * 0.5,
                      child: Text(
                        widget.mobilemodel.toString(),
                        overflow: TextOverflow.clip,
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.mobilename.toString(),
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.mobileprice.toString(),
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                            fontSize: 10,
                            color: Colors.red,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Product Details
              const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Product Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'The Samsung Galaxy M33 5G runs One UI 4.1 is based on Android 12 and packs 128GB of inbuilt storage. Connectivity options on the Samsung Galaxy M33 5G include Wi-Fi 802.11 a/b/g/n/ac and USB Type-C with active 4G on both SIM cards',
                  style: const TextStyle(
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Key Specifications
              const Padding(
                padding: EdgeInsets.all(8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Key Specifications',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              // Specs List
              specItem('10mp + 50mp + 12mp Rear camera | 10mp Front Camera'),
              specItem('10mp + 50mp + 12mp Rear camera | 10mp Front Camera'),
              specItem('4400mAh Battery Capacity'),

              const SizedBox(height: 20),

              // Buttons Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    // Buy Now Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cartscreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(color: Colors.black),
                        ),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Add to Cart Button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cartscreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 38, 104),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget specItem(String spec) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_rounded,
            color: Color.fromARGB(255, 0, 68, 123),
            size: 16,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              spec,
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

