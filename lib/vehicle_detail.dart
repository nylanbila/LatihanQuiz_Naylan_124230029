import 'package:flutter/material.dart';
import 'vehicle_data.dart';

class VehicleDetailPage extends StatelessWidget {
  final Vehicle kendaraan;
  const VehicleDetailPage({super.key, required this.kendaraan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kendaraan.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16), // 🔹 kasih padding biar rapi
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              // 🔹 bikin gambar rounded
              borderRadius: BorderRadius.circular(12),
              child: Image.network(kendaraan.imageUrls.first),
            ),
            const SizedBox(height: 16),

            Text(
              kendaraan.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text(kendaraan.description, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 16),

            Card(
              // 🔹 data teknis dibungkus card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tipe: ${kendaraan.type}"),
                    const SizedBox(height: 8),
                    Text("Mesin: ${kendaraan.engine}"),
                    const SizedBox(height: 8),
                    Text("Tipe Bahan Bakar: ${kendaraan.fuelType}"),
                    const SizedBox(height: 8),
                    Text("Harga: ${kendaraan.price}"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 213, 128, 171),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
