import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/custom_route.dart';
import '../providers/auth.dart';
import '../screens/orders_screen.dart';
import '../screens/user_product_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () {
              // Navigator.of(context).pushReplacementNamed(OrderScreen.routeName);
              Navigator.of(context).pushReplacement(CustomRoute(builder: (ctx) => OrderScreen()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Your Products'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(UserProductScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).pop();
              // Navigator.of(context).pushReplacementNamed(UserProductScreen.routeName);
              Provider.of<Auth>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }
}
