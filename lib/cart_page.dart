import 'package:flutter/material.dart';
import 'Cart.dart';
import 'checkout_page.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartItems = Cart.cartItems;
    final totalPrice = Cart.totalPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final product = cartItems[index];
                  return ListTile(
                    title: Text(product.name,
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('\$${product.price}',
                        style: TextStyle(color: Colors.white70)),
                    leading:
                        Image.network(product.avatar, width: 50, height: 50),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          Cart.removeFromCart(product);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text('Total: \$${totalPrice}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Center(
                child: Text('Proceed to Checkout',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
