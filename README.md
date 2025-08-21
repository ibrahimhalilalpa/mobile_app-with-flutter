TR:

# Mobil Haber Uygulaması

## Proje Özeti
Bu proje, **Flutter** kullanılarak geliştirilmiş bir mobil haber uygulamasıdır.  
Uygulama, farklı kategorilerdeki haberleri listeleyerek kullanıcılara okunabilir ve takip edilebilir bir platform sunar.  
Kullanıcılar, haber başlıklarına tıklayarak detay sayfasına yönlendirilir ve orijinal haber kaynağını görüntüleyebilir.

Özellikler:
- Kategori bazlı haber listeleme  
- Haber başlıklarına tıklayarak detay ve kaynak görüntüleme  
- Gerçek zamanlı API üzerinden güncel haber verisi  
- Görsel olarak zengin ve kullanıcı dostu arayüz  

## Kullanılan Teknolojiler
- **Flutter**: Mobil uygulama geliştirme platformu  
- **Dart**: Flutter uygulamaları için programlama dili  
- **Material Design**: Uygulama arayüzü tasarımı  
- **HTTP ve News API**: Haber verilerini almak için  
- **URL Launcher**: Haber linklerini tarayıcıda açmak için  

## Proje Yapısı

### Modeller
- **article_model.dart**: Haberleri temsil eden model sınıfı  
- **category_model.dart**: Haber kategorilerini temsil eden model sınıfı  

### Helper Sınıfları
- **data.dart**: Haber kategorilerini ve görsellerini sağlar  
- **news.dart**: API üzerinden haber verilerini çekmek için `News` ve `CategoryNewsClass` sınıfları  

### Görünümler
- **home.dart**: Ana sayfa, kategoriler ve haber listesi  
- **category_news.dart**: Seçilen kategoriye özel haberlerin listelenmesi  
- **article_view.dart**: Haber detaylarını ve linkleri açma işlemi  

### Ana Uygulama
- **main.dart**: Uygulama başlangıcı ve MaterialApp yapılandırması  

## Uygulama İşleyişi
1. **Kategori Listesi**: Ana sayfada yatay kaydırılabilir kategori listesi görüntülenir.  
2. **Haber Listesi**: Seçilen kategoriye veya genel haber akışına göre haberler listelenir.  
3. **Haber Detayı**: Haber başlığına tıklanıldığında kullanıcı, `ArticleView` ekranına yönlendirilir ve ilgili haberin orijinal kaynağı tarayıcıda açılır.  
4. **Veri Akışı**: `News` sınıfı ile genel haberler, `CategoryNewsClass` ile kategori bazlı haberler API üzerinden çekilir ve listeye eklenir.  

## Kullanım
1. Uygulamayı cihazınıza veya emülatöre kurun.  
2. Ana sayfada kategoriler ve son haberler listelenecektir.  
3. Kategoriye tıklayarak ilgili haberleri görüntüleyin.  
4. Haber başlığına tıklayarak tarayıcıda detaylı haber sayfasını açın.  

## Sonuç
Bu proje, Flutter ile mobil uygulama geliştirme pratiği yapmayı ve haber verilerini dinamik olarak listeleyebilen bir sistem oluşturmayı amaçlamaktadır.  
Uygulama, farklı kategorilerdeki haberleri takip etmeyi ve kullanıcıya görsel olarak anlaşılır bir arayüz sunmayı sağlar.  

## Gelecek Geliştirmeler
- Kullanıcıların favori haberleri kaydedebilmesi  
- Push bildirimleri ile son dakika haberlerinin iletilmesi  
- Offline veri desteği ve önbellekleme  
- Daha fazla kategori ve API entegrasyonu  


---

EN:

# Mobile News Application

## Project Overview
This project is a mobile news application developed using **Flutter**.  
The app lists news in different categories, providing users with an easy-to-read and trackable platform.  
Users can tap on news headlines to navigate to the detail page and view the original news source.

Features:
- Category-based news listing  
- Tap headlines to view details and source  
- Real-time news updates via API  
- Visually rich and user-friendly interface  

## Technologies Used
- **Flutter**: Mobile app development platform  
- **Dart**: Programming language for Flutter applications  
- **Material Design**: UI design principles  
- **HTTP and News API**: To fetch news data  
- **URL Launcher**: To open news links in the browser  

## Project Structure

### Models
- **article_model.dart**: Represents news articles  
- **category_model.dart**: Represents news categories  

### Helper Classes
- **data.dart**: Provides news categories and images  
- **news.dart**: Fetches news data from API using `News` and `CategoryNewsClass` classes  

### Views
- **home.dart**: Main page, categories, and news listing  
- **category_news.dart**: Displays news for selected categories  
- **article_view.dart**: Shows article details and opens links  

### Main Application
- **main.dart**: App entry point and MaterialApp configuration  

## App Workflow
1. **Category List**: Displays a horizontal scrollable list of news categories on the main page.  
2. **News List**: Shows news based on selected category or general news feed.  
3. **Article Detail**: Tapping a headline opens the `ArticleView` screen and navigates to the original news source in the browser.  
4. **Data Flow**: General news are fetched using the `News` class, and category-specific news are fetched via `CategoryNewsClass`.  

## How to Use
1. Install the app on your device or emulator.  
2. The main page displays categories and the latest news.  
3. Tap a category to view related news.  
4. Tap a news headline to open the full article in your browser.  

## Conclusion
This project aims to practice mobile app development with Flutter and to build a system capable of dynamically listing news data.  
The application allows users to follow news in different categories and provides a visually clear interface.  

## Future Improvements
- Allow users to save favorite news articles  
- Push notifications for breaking news  
- Offline data support and caching  
- More categories and additional API integrations  


