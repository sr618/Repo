import 'package:flutter/material.dart';
import 'Cart.dart';
import 'PaymentPage.dart'; // Import the new PaymentPage

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    final cartItems = Cart.cartItems;
    final totalPrice = Cart.totalPrice;

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Items in Cart:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                  MaterialPageRoute(builder: (context) => PaymentPage()),
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
                child: Text('Place Order',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
