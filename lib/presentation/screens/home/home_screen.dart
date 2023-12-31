import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Matterial 3'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuTiems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuTiems[index];
        return _MenuListTile(menuItem: menuItem);
      },
    );
  }
}

class _MenuListTile extends StatelessWidget {
  const _MenuListTile({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(menuItem.title),
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.chevron_right_rounded),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        // Navigator.pushNamed(context, menuItem.link);
        // context.pushNamed(CardsScreen.name);
        context.push(menuItem.link);
      },
    );
  }
}
