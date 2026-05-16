import 'package:flutter/material.dart';

class UProfileSettingtile extends StatelessWidget {
  const UProfileSettingtile({
    super.key, required this.title, required this.subtitle, required this.icon,
  });
final String title,subtitle;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title,style: Theme.of(context).textTheme.headlineSmall,),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
    );
  }
}