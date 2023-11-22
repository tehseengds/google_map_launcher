import 'package:demo_nav_app/map_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Demo App'),
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              TextField(
                controller: MapUtils.addressController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                    isDense: true),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                    onPressed: () {
                      MapUtils.openMap(context);
                    },
                    child: const Text('Open Google Maps')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
