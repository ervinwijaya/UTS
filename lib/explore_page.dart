import 'package:flutter/material.dart';
import 'package:uts_mobile/tour_page.dart';
import 'detail_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  ExplorePageState createState() => ExplorePageState();
}

class ExplorePageState extends State<ExplorePage> {
  final List<Map<String, String>> universities = [
    {
      'name': 'HARVARD',
      'image': 'assets/images/HARVARD.jpg',
      'description': 'Harvard University is a private Ivy League research university in Cambridge, Massachusetts.',
      'location': 'Cambridge, MA, USA',
    },
    {
      'name': 'ITI',
      'image': 'assets/images/ITI.jpg',
      'description': 'Institut Teknologi Indonesia is a private university in South Tangerang, Banten, Indonesia.',
      'location': 'South Tangerang, Banten, Indonesia',
    },
    {
      'name': 'NUS',
      'image': 'assets/images/NUS.jpg',
      'description': 'The National University of Singapore is a national research university in Singapore.',
      'location': 'Singapore',
    },
    {
      'name': 'UNPAM',
      'image': 'assets/images/UNPAM.jpg',
      'description': 'Universitas Pamulang is a private university located in South Tangerang, Banten, Indonesia.',
      'location': 'South Tangerang, Banten, Indonesia',
    },
  ];

  List<Map<String, String>> filteredUniversities = [];

  @override
  void initState() {
    super.initState();
    filteredUniversities = universities;
  }

  void filterSearchResults(String query) {
    List<Map<String, String>> dummySearchList = [];
    dummySearchList.addAll(universities);
    if (query.isNotEmpty) {
      List<Map<String, String>> dummyListData = [];
      for (var item in dummySearchList) {
        if (item['name']!.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      }
      setState(() {
        filteredUniversities = dummyListData;
      });
      return;
    } else {
      setState(() {
        filteredUniversities = universities;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search for a university",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredUniversities.length,
              itemBuilder: (context, index) {
                return CampusCard(
                  university: filteredUniversities[index],
                  context: context,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget CampusCard({required Map<String, String> university, required BuildContext context}) {
    return Card(
      child: ListTile(
        leading: Image.asset(university['image']!),
        title: Text(university['name']!),
        subtitle: Text(university['location']!),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TourPage(university: university),
            ),
          );
        },
      ),
    );
  }
}
