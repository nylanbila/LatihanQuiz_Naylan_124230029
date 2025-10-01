class Vehicle {
  String name;
  String type;
  String description;
  String engine;
  String fuelType;
  String price;
  String imageAsset;
  List<String> imageUrls;

  Vehicle({
    required this.name,
    required this.type,
    required this.description,
    required this.engine,
    required this.fuelType,
    required this.price,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var vehicleList = [
  Vehicle(
    name: 'Toyota Avanza',
    type: 'SUV',
    description: 'Mobil keluarga yang nyaman dengan kapasitas 7 penumpang.',
    engine: '1.5L DOHC Dual VVT-i',
    fuelType: 'Bensin',
    price: 'Rp 200.000.000',
    imageAsset: 'images/toyota-avanza.jpg',
    imageUrls: [
      'https://akcdn.detik.net.id/community/media/visual/2024/07/16/toyota-avanza-13l.png?w=700&q=90',
    ],
  ),
  Vehicle(
    name: 'Honda Civic',
    type: 'Sedan',
    description:
        'Sedan sporty dengan performa mesin yang tangguh dan desain modern.',
    engine: '1.8L SOHC i-VTEC',
    fuelType: 'Bensin',
    price: 'Rp 500.000.000',
    imageAsset: 'images/honda-civic.jpg',
    imageUrls: [
      'https://asset.honda-indonesia.com/media-library/988f9f9a-ec2f-4f67-a7e4-a112e6e55123/bannermodel03b__1680104724721.jpg',
      'https://imgcdn.oto.com/large/gallery/color/14/524/honda-civic-type-r-color-532966.jpg',
      'https://img.harianjogja.com/posts/2024/01/10/1161112/civic-turbo.jpg',
    ],
  ),
  Vehicle(
    name: 'Mitsubishi Xpander',
    type: 'MPV',
    description:
        'MPV tangguh dengan fitur modern yang cocok untuk perjalanan jauh.',
    engine: '1.5L MIVEC DOHC',
    fuelType: 'Bensin',
    price: 'Rp 250.000.000',
    imageAsset: 'images/mitsubishi-xpander.jpg',
    imageUrls: [
      'https://statik.tempo.co/data/2024/02/01/id_1276379/1276379_720.jpg',
      'https://awsimages.detik.net.id/visual/2024/02/16/mitsubishi-xpander-cross-hev-hybrid_169.webp?w=650',
    ],
  ),
  Vehicle(
    name: 'Daihatsu Terios',
    type: 'SUV',
    description:
        'SUV dengan ground clearance tinggi dan fitur keamanan lengkap.',
    engine: '1.5L Dual VVT-i',
    fuelType: 'Bensin',
    price: 'Rp 220.000.000',
    imageAsset: 'images/daihatsu-terios.jpg',
    imageUrls: [
      'https://res.cloudinary.com/mufautoshow/image/upload/f_auto,f_auto/w_1200/v1641355407/moas/news/1641355400_daihatsu-all-new-terios-suv-murah-irit-dan-kaya-fitur.png',
      'https://imgcdnblog.carmudi.com.ph/wp-content/uploads/2021/04/05161815/Daihatsu-Terios-X.jpg',
      'https://dsoodysseusstprod.blob.core.windows.net/strapi-media/assets/sys_master_media_ha8_ha2_8818233049118_Exterior_00_A_for_20_KV_F_Vr_e0c701ee66.jpg',
    ],
  ),
  Vehicle(
    name: 'Suzuki Ertiga',
    type: 'MPV',
    description: 'Mobil MPV yang irit bahan bakar dengan desain elegan.',
    engine: '1.5L K15B',
    fuelType: 'Bensin',
    price: 'Rp 210.000.000',
    imageAsset: 'images/suzuki-ertiga.jpg',
    imageUrls: [
      'https://imgcdn.oto.com/large/gallery/color/37/332/suzuki-ertiga-color-535661.jpg',
      'https://asset-2.tstatic.net/tribunnews/foto/bank/images/suzuki-ertiga-facelift__________.jpg',
      'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/jawapos/2022/06/SIS4.jpg',
    ],
  ),
  Vehicle(
    name: 'Toyota Fortuner',
    type: 'SUV',
    description: 'SUV premium dengan mesin bertenaga dan fitur lengkap.',
    engine: '2.4L GD Engine',
    fuelType: 'Diesel',
    price: 'Rp 550.000.000',
    imageAsset: 'images/toyota-fortuner.jpg',
    imageUrls: [
      'https://res.cloudinary.com/mufautoshow/image/upload/f_auto,w_1200/v1646652768/mos/news/1646652973_toyota-fortuner-gr-sport-makin-gagah-dan-canggih.jpg',
      'https://cdn.carsome.id/news/toyota-fortuner-vrz-1024x577.jpg',
      'https://awsimages.detik.net.id/community/media/visual/2024/04/18/toyota-fortuner-hybrid-48v-2.jpeg?w=800',
    ],
  ),
];
