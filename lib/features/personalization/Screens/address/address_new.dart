import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/buttons/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class address_new extends StatelessWidget {
  const address_new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true, title: Text("Add New Address") , style: Theme.of(context).textTheme.headlineMedium,),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(children: [
            //Name
            TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.user),labelText: "Name"),),
            SizedBox(height: 20,),
            //phone no
           TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.call),labelText: "Phone no"),),
            SizedBox(height: 20,),
              //Address
              Row(children: [
            Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.building_31),labelText: "Street"),)),
            SizedBox(width: 10,),
          Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.code),labelText: "Postal Code"),)),
              ]),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.building),labelText: "City"),)),
            
SizedBox(width: 10,),
          Expanded(child: TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.activity),labelText: "State"),)),

              ],),
              SizedBox(height: 20,),
           TextFormField(decoration: InputDecoration(prefixIcon:  Icon(Iconsax.global),labelText: "Country"),),
            SizedBox(height: 20,),
            //Save Button
           UElevatedButton(onPressed: (){}, child: Text("Save Address"),)


          ],),
        ),
      )

    );
  }
  }
    