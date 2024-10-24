import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// MyApp sınıfı, uygulamanın temel yapısını ve layout'unu içerir.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // AppBar, sayfanın üst kısmındaki başlık çubuğunu oluşturur.
        appBar: AppBar(
          title: Text('Firmalar'), // Üstte görünen başlık yazısı "Firmalar"
          leading: Icon(Icons.arrow_back), // Geri ok simgesi
        ),
        
        // Ana içeriğin yer aldığı Body kısmı
        body: Column(
          children: [
            // Üstteki Sağlık firması kısmı
            Container(
              padding: EdgeInsets.all(10), // Sağlık bölümü için padding ekleniyor
              color: Colors.blue, // Arka plan rengi mavi
              child: Row(
                children: [
                  Icon(Icons.local_hospital, color: Colors.white), // Sağlık ikonunu beyaz renkle gösteriyor
                  SizedBox(width: 10),
                  Text('Sağlık', style: TextStyle(color: Colors.white)), // Sağlık yazısı
                ],
              ),
            ),

            // Arama çubuğu ve açıklama metni
            Padding(
              padding: const EdgeInsets.all(10.0), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Metni sola hizalar
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search), // Arama ikonu
                      hintText: 'Firma Ara', // Arama alanı ipucu metni
                      border: OutlineInputBorder(), // Çevresinde sınır çizer
                    ),
                  ),
                  SizedBox(height: 5), // Arama alanı ile açıklama metni arasında boşluk bırakır
                  Text(
                    'İstediğiniz firmada indirim yakalama fırsatı...', // Açıklama metni
                    style: TextStyle(color: Colors.grey), // Metin rengi gri
                  ),
                ],
              ),
            ),

            // Firma listesi
            Expanded(
              child: ListView.builder(
                itemCount: 5, // 5 adet firma gösterilecek
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5), // Her kartın kenar boşlukları
                    child: ListTile(
                      leading: Icon(Icons.business), // Firma ikonu
                      title: Text('Firma Adı'), // Firma adı yazısı
                      trailing: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.blue, // Yüzde kısmının arka planı mavi
                          borderRadius: BorderRadius.circular(5), // Köşeler yuvarlatılmış
                        ),
                        child: Text(
                          '%10', // İndirim yüzdesi
                          style: TextStyle(
                            color: Colors.white, // Beyaz renkli yüzde yazısı
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
