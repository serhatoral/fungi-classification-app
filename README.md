# Fungi Classification App

Bu uygulama, bir Evrişimli Sinir Ağı(CNN) modeli kullanarak mantar görüntülerinden mantar türlerini belirlemekte ve sınıflandırmaktadır. Sınıflandırdığı mantar hakkında kullanıcıya bilgi vermekte, zehirli etkiye sahip olup olmadığı ya da yenilip yenilmediği gibi bilgiler vermektedir.

Bu sınıflandırmayı yapan CNN modelinin nasıl hazırlandığını incelemek için [TIKLAYINIZ!](https://github.com/serhatoral/fungi-classification/blob/main/Mantar_T%C3%BCr%C3%BC_Tespiti.ipynb)

## Uygulama

Uygulama, Flutter kullanılarak geliştirilmiştir. Kullanıcı mantar görüntülerini ister kameradan direk çekerek isterse de galariden seçerek sınıflandırma yapabilecektir.

- Görüntüleri almak için [Image Picker](https://pub.dev/packages/image_picker) paketi,
- Cnn modelini kullanmak için de [tflite](https://pub.dev/packages/tflite) paketi kullanılmıştır.

![homepage](https://user-images.githubusercontent.com/81564885/165598567-73e749a9-5baa-4ce7-b2ca-900dcec3e969.jpeg)

![sinek](https://user-images.githubusercontent.com/81564885/165598722-8a29e61b-7798-4351-a23d-3b72e0afec37.jpeg)