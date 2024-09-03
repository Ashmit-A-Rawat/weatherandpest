This is feature for FarmDrop repo
I am also adding code for farmer_education feature
main.dart:
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(ResourcesApp());
}

class ResourcesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resources',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black87, fontSize: 16),
          bodyText2: TextStyle(color: Colors.black87, fontSize: 14),
          headline6: TextStyle(color: Colors.black87, fontSize: 20),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        cardColor: Colors.white,
      ),
      home: ResourcesPage(),
    );
  }
}

class ResourcesPage extends StatelessWidget {
  final List<ResourceCategory> categories = [
    ResourceCategory(
      title: 'Crop Management',
      icon: Icons.agriculture,
      resources: [
        Resource(
          title: 'Organic Farming Techniques',
          description:
              'Learn about organic methods to enhance crop growth and soil health.',
          content:
              'Organic farming, also known as ecological farming or biological farming is an agricultural system that uses fertilizers of organic origin such as compost manure, green manure, and bone meal and places emphasis on techniques such as crop rotation and companion planting. It originated early in the 20th century in reaction to rapidly changing farming practices. Certified organic agriculture accounts for 70 million hectares (170 million acres) globally, with over half of that total in Australia. Biological pest control, mixed cropping, and the fostering of insect predators are encouraged. Organic standards are designed to allow the use of naturally-occurring substances while prohibiting or strictly limiting synthetic substances. For instance, naturally-occurring pesticides such as pyrethrin are permitted, while synthetic fertilizers and pesticides are generally prohibited. Synthetic substances that are allowed include, for example, copper sulfate, elemental sulfur, and veterinary drugs. Genetically modified organisms, nanomaterials, human sewage sludge, plant growth regulators, hormones, and antibiotic use in livestock husbandry are prohibited.Organic farming advocates claim advantages in sustainability,openness, self-sufficiency, autonomy and independence, health, food security, and food safety.',
          videos: [
            'https://youtu.be/WhOrIUlrnPo?si=OrWcQRSFr92uu8Vr',
            'https://youtu.be/lRyXlvIJFWI?si=e-8m6bDWiFjkaX_m',
          ],
        ),
        Resource(
          title: 'Pest Control Methods',
          description:
              'Discover effective strategies for controlling pests in crops.',
          content:
              'Pest Control Methods: Protecting Crops and HealthPest control methods are crucial for safeguarding crops, livestock, and human health from harmful pests. These methods can be broadly categorized into chemical, biological, and cultural approaches:hemical Control: This involves using pesticides to kill or repel pests. It is effective for rapid control but can pose risks to non-target organisms and the environment. Integrated Pest Management (IPM) advocates for the judicious use of chemicals to minimize these risks.Biological Control: This method utilizes natural predators, parasites, or pathogens to control pest populations. Examples include introducing ladybugs to control aphids or using nematodes to target soil-dwelling pests. It is environmentally friendly and sustainable.Cultural Control: This involves modifying agricultural practices to prevent pest infestations. Techniques include crop rotation, planting pest-resistant crop varieties, and maintaining proper field sanitation. Cultural practices can reduce pest populations by disrupting their life cycles and reducing habitat availability.Mechanical Control: Physical barriers or traps are used to manage pests. Examples include insect nets, sticky traps, and handpicking pests. This method is labor-intensive but avoids chemical use.Integrated Pest Management (IPM): IPM combines multiple control strategies to manage pests sustainably. It involves monitoring pest populations, using thresholds to decide when to act, and integrating various control methods to minimize economic and environmental impacts.ffective pest control requires a balanced approach, combining these methods to protect crops and ensure long-term agricultural sustainability...',
          videos: [
            'https://youtu.be/g6LMw9I6rxU?si=ZmldngWH-Y5i0yot',
            'https://youtu.be/hCMFZ8FCLLc?si=SDj3RGkTOWxoV44F',
          ],
        ),
      ],
    ),
    ResourceCategory(
      title: 'Livestock Care',
      icon: Icons.pets,
      resources: [
        Resource(
          title: 'Feeding Livestock',
          description:
              'Guidelines for proper nutrition and feeding practices for livestock.',
          content:
              'Animal feeding is the cornerstone and its management directly or indirectly affects the entire sector. Livestock is fed to achieve the maximum yields and to bring the highest economic profits. Nevertheless, this approach generally contributes to ecosystem degradation, such as deforestation, loss of biodiversity, global warming, etc. (Makkar & Ankers, 2014). The systematic use of resources with more efficient management in livestock feeding could tackle these issues.Numerous sustainability-focused diets are emerging as alternatives to conventional diets. These environmentally friendly diets make available resources profitable without decreasing productivity. Agro-industrial activity waste or byproduct is one possible strategy. By-products from industrial processes, such as the sugar manufacture (beet pulp), starch extraction (corn gluten feed), soybean treatment (soybean hulls), or oil extraction (soybean meal, linseed meal, corn gluten meal, cottonseed meal, and sunflower meal), are commonly used to fed livestock due to their high fiber or protein content (Correddu et al., 2020).Other by-products from fruits and vegetables have been recently used for animal feed. Another interest in these wastes lies in the considerable amounts of bioactive compounds, especially polyphenols, tannins, and flavonoids. The addition of these compounds in low concentrations to animal diets was observed to increase its performance as well as health improvement. In addition, positive effects on the quality of the livestock products were also reported (Correddu et al., 2020). Condensed tannins, also known as proanticylanidines, have been shown to have positive effects on ruminants. Their administration at low concentrations on the diet of grazing ruminants resulted in an increased protein ingestion rate in the intestine and reduced the protein degradation rate by rumen bacteria. Conversely, excessive levels of phenolic compounds could have adverse consequences, which reduces the intake digestibility of almost all nutrients. Several studies have shown that, the inclusion of condensed tannins in sheep diets produces an increase in live weight, less carcass fat, and increased milk yield and wool production',
          videos: [
            'https://youtu.be/MYvmtkQ0hEc?si=t1H5viCnxpMgpVmr',
            'https://youtu.be/LBnVT3gKgyM?si=EfxXKSAMu0ew9f3P',
          ],
        ),
        Resource(
          title: 'Disease Management',
          description:
              'Learn how to prevent and manage common livestock diseases.',
          content:
              'The livestock industry is extremely important to the economy of Oklahoma and includes not only commercial producers of meat or milk, but also purebred breeders and small producers with a few animals. The success of any type of livestock operation is closely related to the disease level of the animals.Losses due to disease originate in many ways. Some are obvious, such as death, medication costs, and condemnations at the processing plant. Others are sometimes less obvious, such as poor growth, poor production, poor feed conversion, and downgrading.The purpose of this fact sheet is to acquaint livestock producers with some basic facts about diseases, their spread, and ways to minimize losses.',
          videos: [
            'https://youtu.be/oNwjMD5C29A?si=v0SVEPRg-SoaqvRj',
            'https://youtu.be/by1s8u7EWgQ?si=TN4VcvPn45o2AlwT',
          ],
        ),
      ],
    ),
    ResourceCategory(
      title: 'Water Management',
      icon: Icons.water,
      resources: [
        Resource(
          title: 'Efficient Irrigation Techniques',
          description:
              'Best practices for efficient irrigation to save water and enhance crop growth.',
          content:
              'Irrigation techniques are essential for enhancing agricultural productivity and managing water resources effectively. Various methods cater to different crops, soil types, and water availability.Drip Irrigation: This technique delivers water directly to the plant roots through a network of tubes and emitters. It minimizes water wastage, reduces evaporation and runoff, and is ideal for high-value crops and arid regionprinkler Irrigation: Sprinklers distribute water in the form of droplets over crops, mimicking natural rainfall. It’s suitable for large fields and various crops but can lead to water loss through evaporation and wind drift.Surface Irrigation: Water is applied directly to the soil surface and allowed to flow over the field. This method includes furrow, basin, and flood irrigation. Its relatively simple and low-cost but can be inefficient due to evaporation and deep percolation losses.Subsurface Irrigation: Pipes or tubes buried beneath the soil surface deliver water directly to the root zone. This method reduces evaporation and surface runoff but involves higher initial costCenter Pivot Irrigation: This automated system consists of rotating sprinklers mounted on wheeled towers. It efficiently irrigates large, circular areas and is commonly used in large-scale farming.Each technique has its advantages and applications, making it crucial to choose the right one based on crop needs, water availability, and soil conditions.',
          videos: [
            'https://youtu.be/g6LMw9I6rxU?si=ZmldngWH-Y5i0yot',
            'https://youtu.be/hCMFZ8FCLLc?si=SDj3RGkTOWxoV44F',
          ],
        ),
        Resource(
          title: 'Rainwater Harvesting',
          description:
              'Methods to collect and use rainwater for farming purposes.',
          content:
              'Rainwater harvesting is a sustainable practice that involves collecting and storing rainwater for later use. This method addresses water scarcity issues and promotes efficient water management by utilizing a natural resource that often goes to waste.The process begins with capturing rainwater from surfaces like rooftops, which is then channeled through pipes into storage tanks or underground reservoirs. The collected water can be filtered and treated to ensure it meets safety standards before use. Rainwater harvesting systems can vary from simple barrels used for gardening to more complex systems with sophisticated filtration for potable water.Benefits of Rain Water Harvesting:Conservation of Water Resources: By capturing and using rainwater, communities can reduce their dependence on traditional water supplies, which helps preserve natural water bodies and aquifers.Reduction in Water Bills: For households and businesses, rainwater harvesting can significantly lower water utility costs by providing an alternative source of water for non-potable uses like irrigation and toilet flushing.Mitigationof Flooding: Harvesting rainwater can help mitigate urban flooding by reducing the volume of runoff that overwhelms drainage systems during heavy rains.Improved Water Quality: Rainwater is typically free from the impurities found in groundwater or surface water, making it a cleaner option for various uses when properly managed.Environmental Impact: Using harvested rainwater reduces the strain on municipal water systems and supports sustainable living practices..',
          videos: [
            'https://youtu.be/g6LMw9I6rxU?si=ZmldngWH-Y5i0yot',
            'https://youtu.be/hCMFZ8FCLLc?si=SDj3RGkTOWxoV44F',
          ],
        ),
      ],
    ),
    ResourceCategory(
      title: 'Soil Health',
      icon: Icons.grain,
      resources: [
        Resource(
          title: 'Soil Fertility Improvement',
          description:
              'Techniques to enhance soil fertility for better crop yield.',
          content:
              'soil fertility depletion and soil degradation present the most serious problems. According to an FAO study (FAO 2001), African soils lose an annual average of 48 Kg/ha of nutrients, the equivalent of 100 Kg/year of fertiliser. To compensate for this loss, they receive an average of only 10 Kg of mineral fertiliser, compared with a global average of 90 Kg (Spore 1/2). In addition, African soils are generally poor. Maintaining or increasing soil fertility is one of the most important things farmers have to do to increase output. Doing so, farmers have to know the characteristics and constraints of their soils and use sustainable agricultural practices and methods for conserving them and making them more fertile. These include fallowing, using compost, manure, crop residues, fertilizer trees (e.g Calliandra and Pygeum africana), intercropping legumes with cereals and including the principles of conservation agriculture (crop rotation, ensuring permanent cover for the soil and no disturbing of the top soil layer). Soils have to be nourished and cared for, and allowed to rest from time to time. However, the use of fertilizers must consider the chemical properties of local soils, the crops planned and the required output. The local environment must be respected. Farmers should not use ready-made fertilizers that have been designed for other regions. They need mixtures that have been especially formulated to address the deficiencies of their particular soil.',
          videos: [
            'https://youtu.be/g6LMw9I6rxU?si=ZmldngWH-Y5i0yot',
            'https://youtu.be/hCMFZ8FCLLc?si=SDj3RGkTOWxoV44F',
          ],
        ),
        Resource(
          title: 'Erosion Control Methods',
          description:
              'Strategies to prevent soil erosion and maintain soil quality.',
          content:
              'Soil erosion:It is a natural phenomenon, in which physical factors like water and wind carry away or displaces the topsoil.The following are the methods of preventing soil erosion:Vegetation: It is a ground cover provided by plants, the roots of these plants will captivate the soil and inhibits soil erosion.Matting the soil: The installation of safeguarding covering like a blanket over the soil for the growth of small plants also helps in preventing soil erosionApplication of mulches: It is a layer of material applied to the soil surface, which betters the quality and holding capacity of the soil.Constructing windbreakers: It prevents soil erosion by obstructing the wind from blowing over it.Terrace farming: When the method of farming practiced on steep hilly slopes by cutting terraces makes the soil firm and restricts soil erosion.Plantation of trees: Roots of trees can hold the soil and help in the prevention of soil erosion.',
          videos: [
            'https://youtu.be/_nvBE8Fayds?si=GbKi6m_6KMTFmsXS',
            'https://youtu.be/B1ZdxdQRFM4?si=7s_0S5aIZ23AKiWU',
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 4,
            child: ListTile(
              leading: Icon(categories[index].icon),
              title: Text(categories[index].title),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResourceCategoryPage(
                      category: categories[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ResourceCategoryPage extends StatelessWidget {
  final ResourceCategory category;

  ResourceCategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: category.resources.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 4,
            child: ListTile(
              title: Text(category.resources[index].title),
              subtitle: Text(category.resources[index].description),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResourceDetailPage(
                      resource: category.resources[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ResourceDetailPage extends StatelessWidget {
  final Resource resource;

  ResourceDetailPage({required this.resource});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(resource.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                resource.content,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Related Videos:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...resource.videos.map(
                (videoUrl) => ListTile(
                  leading: Icon(Icons.play_circle_filled),
                  title: Text(videoUrl),
                  onTap: () => _launchURL(videoUrl),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class ResourceCategory {
  final String title;
  final IconData icon;
  final List<Resource> resources;

  ResourceCategory({
    required this.title,
    required this.icon,
    required this.resources,
  });
}

class Resource {
  final String title;
  final String description;
  final String content;
  final List<String> videos;

  Resource({
    required this.title,
    required this.description,
    required this.content,
    required this.videos,
  });
}

pubspec.yaml:  //just add this to your current file
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.0.0
