import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

class UProfileSettingtile extends StatelessWidget {
  const UProfileSettingtile({
    super.key, required this.title, required this.subtitle, required this.icon,required this.onTap,
  });
final String title,subtitle;
final IconData icon;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        
        leading: Icon(icon),
        title: Text(title,style: Theme.of(context).textTheme.headlineSmall,),
        subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
      ),
    );
  }
}