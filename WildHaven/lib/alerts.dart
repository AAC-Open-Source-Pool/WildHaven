import 'dart:convert'; // For jsonDecode
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; // For making HTTP requests

// Define the ArticleModel class
class ArticleModel {
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String content;
  final String author;

  ArticleModel({
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.content,
    required this.author,
  });
}

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  List<ArticleModel> news = [];

  // Function to fetch news
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/everything?q=forest&from=2023-12-02&sortBy=publishedAt&apiKey=639d10116c964e13acf705f1d3235f69";
    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);

        if (jsonData['status'] == 'ok') {
          List<ArticleModel> newArticles = [];
          jsonData["articles"].forEach((element) {
            if (element["urlToImage"] != null && element['description'] != null) {
              ArticleModel articleModel = ArticleModel(
                title: element["title"],
                description: element["description"],
                url: element["url"],
                urlToImage: element["urlToImage"],
                content: element["content"] ?? '', // To avoid null content
                author: element["author"] ?? '',   // To avoid null author
              );
              newArticles.add(articleModel);
            }
          });

          setState(() {
            news = newArticles; // Update the state with the fetched articles
          });
        }
      } else {
        // Handle error when response status is not 200
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print("Error: $e");
      // Handle errors during the API call or decoding
    }
  }

  @override
  void initState() {
    super.initState();
    getNews(); // Fetch news when the widget is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forest News'),
      ),
      body: news.isEmpty
          ? Center(child: CircularProgressIndicator()) // Show loading spinner
          : ListView.builder(
              itemCount: news.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: news[index].urlToImage != null
                      ? Image.network(news[index].urlToImage)
                      : null,
                  title: Text(news[index].title),
                  subtitle: Text(news[index].description),
                  onTap: () {
                    // Navigate to the article URL when tapped
                    // You can use url_launcher to open the URL in a browser
                  },
                );
              },
            ),
    );
  }
}
