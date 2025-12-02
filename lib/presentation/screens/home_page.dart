import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE80057),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Recoge tu pedido gratis en nuestras tiendas y déjate envolver por el romance',
          style: TextStyle(fontSize: 13, color: Colors.white),
          textAlign: TextAlign.center,      
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, size: 28, color: Color(0xFFE80057)),
              
                    Container(
                      width: 150,
                      child: Image.network(
                        "https://besofrances.com/cdn/shop/files/logo-besofrances_150x.jpg?v=1624650053",
                      ),
                    ),
              
                    Icon(Icons.shopping_cart_outlined, size: 28, color: Color(0xFFE80057)),
                  ]
              ),
            ),

            Container(
              width: double.infinity,
              height: 420,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://besofrances.com/cdn/shop/files/BANNER-WEB_21_900x.jpg?v=1753633849"),              
                  fit: BoxFit.cover,
                  alignment: AlignmentGeometry.bottomRight
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xFFE80057),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () => context.go('/p1'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE80057),
                    foregroundColor: Colors.white,
                    elevation: 0,
                  ),

                  child: Text(
                          "Comprar",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),                      
                ),
              ),
            ),
            

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Compra online en Beso Francés con envío a domicilio o recoge en tienda",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 16, 25, 74),
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 60),

          ],
        )
        
        
      ),
      
      
    );
  }
}