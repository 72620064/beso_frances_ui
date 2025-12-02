import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DescripcionProductos extends StatelessWidget {
  const DescripcionProductos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ---- TOP BAR ----
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 28, color: Color(0xFFE80057)),

                  SizedBox(
                    width: 150,
                    child: Image.network(
                      "https://besofrances.com/cdn/shop/files/logo-besofrances_150x.jpg?v=1624650053",
                      fit: BoxFit.contain,
                    ),
                  ),

                  Icon(Icons.shopping_cart_outlined,
                      size: 28, color: Color(0xFFE80057)),
                ],
              ),
            ),

            // ---- PRODUCT IMAGE ----
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              height: 400,
              child: Image.network(
                "https://besofrances.com/cdn/shop/files/5649_-_Helado_Artchocolate_Brownie_Beso_Platano_300x.jpg?v=1752421764",
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // ---- PRODUCT TITLE ----
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Crepe con base de fudge",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1B2A7A),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // ---- DESCRIPTION ----
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "El precio de este producto incluye únicamente el "
                "Crepe relleno con fudge. Los toppings mostrados en la imagen "
                "son referenciales y tienen un costo adicional.",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  height: 1.4,
                  color: Color(0xFF1B2A7A),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // ---- Botón Realizar pedido ----
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.teal),
                  onPressed: () => context.go('/p4'),
              child: const Text(
                "Realice su pedido",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // ---- Botón Continuar ----
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                side: const BorderSide(color: Colors.teal),
              ),
              onPressed: () => {},
              child: const Text(
                "Continuar comprando",
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
          ),
          ],
        ),
      ),
  
    );
  }
}
