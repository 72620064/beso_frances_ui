import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FinalizacionCompra extends StatelessWidget {
  const FinalizacionCompra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Beso Francés",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "PEN 22,00",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),

              const Text(
                "Contacto",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  labelText: "Correo electrónico",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (_) {}),
                  const Expanded(
                    child: Text(
                      "Enviarme novedades y ofertas por correo electrónico",
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Entrega",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Radio(value: 1, groupValue: 1, onChanged: (_) {}),
                        const Text("Envío a domicilio"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(value: 2, groupValue: 1, onChanged: (_) {}),
                        const Text("Retiro en tienda"),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: "País / Región",
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: "Perú", child: Text("Perú")),
                ],
                onChanged: (_) {},
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Nombre",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Apellidos",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Factura (RUC / Razón Social)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Dirección",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Casa, departamento, etc.",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Ciudad",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: "Región",
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(
                    value: "Lima (Metropolitana)",
                    child: Text("Lima (Metropolitana)"),
                  ),
                ],
                onChanged: (_) {},
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Código postal (opcional)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                decoration: const InputDecoration(
                  labelText: "Teléfono",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (_) {}),
                  const Text(
                    "Guardar mi información para la próxima vez",
                  )
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Métodos de envío",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Radio(value: 1, groupValue: 1, onChanged: (_) {}),
                    const Expanded(child: Text("Tarifa de Envío")),
                    const Text("PEN 7,00"),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Radio(value: 2, groupValue: 1, onChanged: (_) {}),
                    const Expanded(child: Text("Entrega local")),
                    const Text("PEN 7,00"),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "Pago",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: const [
                    Text(
                      "Después de hacer clic en “Pagar ahora”, serás redirigido a Izipay para completar tu compra.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Dirección de facturación",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Column(
                children: [
                  Row(
                    children: [
                      Radio(value: 1, groupValue: 1, onChanged: (_) {}),
                      const Text("La misma dirección de envío"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(value: 2, groupValue: 1, onChanged: (_) {}),
                      const Text("Deseo una factura"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              const Text(
                "Resumen del pedido",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.grey.shade300,
                    child: Image.network("https://besofrances.com/cdn/shop/files/5701_-_Helado_Artfresa_Brownie_Beso_Fresas_300x.jpg?v=1752034297"),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Crepe con base de fudge",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text("Ninguno / Ninguno / Ninguno"),
                    ],
                  ),
                  const Spacer(),
                  const Text("PEN 15,00"),
                ],
              ),

              const SizedBox(height: 20),

              // Subtotales
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Subtotal"),
                  Text("PEN 15,00"),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Envío"),
                  Text("PEN 7,00"),
                ],
              ),
              const SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "PEN 22,00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 5),
              const Text("Incluye PEN 2,29 de impuestos"),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () => context.go("/"),
                  child: const Text(
                    "Pagar ahora",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
