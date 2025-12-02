
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InformacionPedido extends StatefulWidget {
  const InformacionPedido({super.key});

  @override
  InformacionPedidoState createState() => InformacionPedidoState();
}

class InformacionPedidoState extends State<InformacionPedido> {
  int cantidad=1;
  double price=15;
  String? distritoSeleccionado;

  @override
  
  Widget build(BuildContext context) {
    const purple = Color(0xFF2D0C57);
    const turquoise = Color(0xFF16A5A3);

    final width = MediaQuery.of(context).size.width;
    final imageWidth = width * 0.33;
    final imageHeight = imageWidth * 1.05;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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

              Divider(color: const Color.fromARGB(255, 198, 198, 198), height: 0.1),
              const SizedBox(height: 18),

              Center(
                child: Text(
                  "Su pedido",
                  style: TextStyle(
                    fontSize: 26,
                    color: purple,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.network(
                      "https://besofrances.com/cdn/shop/files/5701_-_Helado_Artfresa_Brownie_Beso_Fresas_300x.jpg?v=1752034297",
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Crepe con base de fudge",
                          style: TextStyle(
                            fontSize: 24,
                            color: purple,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text("Elige tu 1er topping: Ninguno", style: TextStyle(color: purple)),
                        Text("Elige tu 2do topping: Ninguno", style: TextStyle(color: purple)),
                        Text("Elige tu 3er topping: Ninguno", style: TextStyle(color: purple)),
                        const SizedBox(height: 12),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Quitar",
                            style: TextStyle(
                              color: turquoise,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),
              Divider(color: purple, height: 1),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text("S/ ${price.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 20, color: purple, fontWeight: FontWeight.normal)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (cantidad > 1) {
                            cantidad--;
                            }
                          });
                        },
                      ),

                      Text(
                        cantidad.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),

                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            cantidad++;
                          });
                        },
                      ),
                    ],
                  ),

                   Text("S/ ${(price*cantidad).toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 20, color: purple, fontWeight: FontWeight.w700)),
                ],
              ),

              const SizedBox(height: 18),
              Divider(color: purple, height: 1),

              const SizedBox(height: 18),

              Center(
                child: Text(
                  "Añade una nota para Beso Francés respecto a tu pedido…",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: purple, fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: purple),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8),
                child: const TextField(
                  maxLines: 5,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal", style: TextStyle(fontSize: 18, color: purple)),
                  Text("S/ 15.00",
                      style: TextStyle(fontSize: 18, color: purple, fontWeight: FontWeight.w700)),
                ],
              ),

              const SizedBox(height: 12),

              Center(
                child: Text(
                  "Tarifa de envío adicional S/ 7.00",
                  style: TextStyle(color: purple, fontSize: 16),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Selecciona tu distrito",
                style: TextStyle(fontSize: 20, color: purple, fontWeight: FontWeight.w700),
              ),

              const SizedBox(height: 8),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: purple),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value:distritoSeleccionado,
                    hint: const Text("-- Selecciona una opción --"),
                    items: const [
                      DropdownMenuItem(value: "Miraflores", child: Text("Miraflores")),
                      DropdownMenuItem(value: "San Isidro", child: Text("San Isidro")),
                      DropdownMenuItem(value: "Surco", child: Text("Surco")),
                    ],
                    onChanged: (value) {
                      setState(() {
                        distritoSeleccionado = value;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 28),

              Column(
                children: [
                  
                  // PRIMARY BUTTON
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    
                    child: ElevatedButton(
                      onPressed: () => context.go("/p5"),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        backgroundColor: turquoise,
                        
                      ),
                      
                      child: Text(
                        "Delivery",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
                      ),                    
                    ),
                      
                  ),
                  

                  const SizedBox(height: 12),

                  // SECONDARY BUTTON
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: turquoise, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Recoger en tienda",
                        style: TextStyle(color: turquoise, fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
