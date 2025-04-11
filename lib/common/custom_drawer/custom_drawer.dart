import 'package:flutter/material.dart';
import 'package:loja_online/common/custom_drawer/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerTile(iconData: Icons.home, title: 'Inicio' ,),
          DrawerTile(iconData: Icons.home, title: 'Produtos' ,),
          DrawerTile(iconData: Icons.playlist_add_check, title: 'Meus Pedidos' ,),
          DrawerTile(iconData: Icons.location_on, title: 'Lojas' ,),
        ],
      ),
    );
  }
}
