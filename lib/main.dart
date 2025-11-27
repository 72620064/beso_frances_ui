import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:app_contador/presentation/screens/home_page.dart';
import 'package:app_contador/presentation/screens/beso_menu.dart';
import 'package:app_contador/presentation/screens/descripcion_productos.dart';
import 'package:app_contador/presentation/screens/carrito_compras.dart';
import 'package:app_contador/presentation/screens/informacion_pedido.dart';
import 'package:app_contador/presentation/screens/finalizacion_compra.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/p1',
      builder: (context, state) => BesoMenu(),
    ),
    GoRoute(
      path: '/p2',
      builder: (context, state) => DescripcionProductos(),
    ),
    GoRoute(
      path: '/p3',
      builder: (context, state) => CarritoCompras(),
    ),
    GoRoute(
      path: '/p4',
      builder: (context, state) => InformacionPedido(),
    ),
    GoRoute(
      path: '/p5',
      builder: (context, state) => FinalizacionCompra(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }

}