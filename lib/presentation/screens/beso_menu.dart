import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BesoMenu extends StatelessWidget {
  const BesoMenu({super.key});

  Widget producto({
  required BuildContext context,
  required String imgUrl,
  required String nombre,
  required int precio,
}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () => context.go('/p2'),
      child: Column(
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
      ),
    ),
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
                  onPressed: () => context.go('/'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE80057),
                    foregroundColor: Colors.white,
                    elevation: 0,
                  ),

                  child: Text(
                          "Regresar",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),                      
                ),
              ),
            ),
            
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
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,          // 2 columnas
                  mainAxisSpacing: 20,        // Espacio vertical
                  crossAxisSpacing: 20,       // Espacio horizontal
                  childAspectRatio: 0.8,      // Relación ancho/alto
                ),
                itemBuilder: (context, index) {
                  final productos = [
                    {
                      "img": "https://besofrances.com/cdn/shop/files/5701_-_Helado_Artfresa_Brownie_Beso_Fresas_300x.jpg?v=1752034297",
                      "nombre": "Crepe con base de miel de abeja",
                      "precio": 15,
                    },
                    {
                      "img": "https://besofrances.com/cdn/shop/files/5649_-_Helado_Artchocolate_Brownie_Beso_Platano_300x.jpg?v=1752421764",
                      "nombre": "Crepe con base de fudge",
                      "precio": 15,
                    },
                    {
                      "img": "https://besofrances.com/cdn/shop/files/5662_-_Helado_Artfresa_Brownie_Beso_Fresas_300x.jpg?v=1752421824",
                      "nombre": "Crepe con base de manjar",
                      "precio": 15,
                    },
                    {
                      "img": "https://besofrances.com/cdn/shop/files/5681_-_Helado_Artvainilla_Brownie_Beso_Platano_300x.jpg?v=1752421900",
                      "nombre": "Crepe con base de mermelada de fresa",
                      "precio": 15,
                    },
                  ];

                  final p = productos[index];

                  return producto(
                    context: context,
                    imgUrl: p["img"] as String,
                    nombre: p["nombre"] as String,
                    precio: p["precio"] as int,
                  );
                },
              ),
            ),
          ],
        )
        
        
      ),
      
      
    );
  }
}