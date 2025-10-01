import 'package:flutter/material.dart';
import 'vehicle_detail.dart';
import 'vehicle_data.dart';

class VehicleGridPage extends StatefulWidget {
  const VehicleGridPage({super.key});

  @override
  State<VehicleGridPage> createState() => _VehicleGridPageState();
}

class _VehicleGridPageState extends State<VehicleGridPage> {
  // 🔹 daftar status favorite, default false semua
  late List<bool> favorites;

  @override
  void initState() {
    super.initState();
    favorites = List.generate(vehicleList.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vehicle Grid")),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: vehicleList.length,
        itemBuilder: (context, index) {
          final kendaraansum = vehicleList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => VehicleDetailPage(kendaraan: kendaraansum),
                ),
              );
            },
            borderRadius: BorderRadius.circular(16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: kendaraansum.name,
                    child: Image.network(
                      kendaraansum.imageUrls.first,
                      height: 100,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      kendaraansum.name,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // 🔹 Favorite button dengan state dari list
                  IconButton(
                    onPressed: () {
                      setState(() {
                        favorites[index] = !favorites[index];
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: favorites[index] ? Colors.red : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
