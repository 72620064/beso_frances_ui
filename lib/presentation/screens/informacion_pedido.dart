import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InformacionPedido extends StatelessWidget {
  const InformacionPedido({super.key});

  Widget boton(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/p1');  // Navega a BesoMenu
          },
          child: Text("Ir a P1"),
        ),
      ),
    );
  }

  Widget producto({required String imgUrl, required String nombre, required int precio}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          nombre,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 4),
        Text(
          "Desde S/ $precio",
          style: TextStyle(fontSize: 13, color: Colors.grey[700]),
        ),
      ],
    );
  }
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
                  child: Text(
                    "Comprar",
                    style: TextStyle(fontSize: 18, color: Colors.white),
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

            Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beso Menú",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B2A7A),
                    ),
                  ),

                  Icon(Icons.arrow_forward_ios, size: 18, color: Color(0xFF1B2A7A)),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  producto(
                    imgUrl: "https://besofrances.com/cdn/shop/files/5701_-_Helado_Artfresa_Brownie_Beso_Fresas_300x.jpg?v=1752034297",
                    nombre: "Crepe con base de miel de abeja",
                    precio: 15,
                  ),

                  producto(
                    imgUrl: "https://besofrances.com/cdn/shop/files/5649_-_Helado_Artchocolate_Brownie_Beso_Platano_300x.jpg?v=1752421764",
                    nombre: "Crepe con base de fudge",
                    precio: 15,
                  ),

                  producto(
                    imgUrl: "https://besofrances.com/cdn/shop/files/5662_-_Helado_Artfresa_Brownie_Beso_Fresas_300x.jpg?v=1752421824",
                    nombre: "Crepe con base de manjar",
                    precio: 15,
                  ),

                  producto(
                    imgUrl: "https://besofrances.com/cdn/shop/files/5681_-_Helado_Artvainilla_Brownie_Beso_Platano_300x.jpg?v=1752421900",
                    nombre: "Crepe con base de mermelada de fresa",
                    precio: 15,
                  ),
                ],
              ),
            ),
          ],
        )
        
        
      ),
      
      
    );
  }
}