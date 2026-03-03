import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DestinationProfileScreen(),
    );
  }
}

class DestinationProfileScreen extends StatelessWidget {
  const DestinationProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1A2B),
      body: SafeArea(
        child: Column(
          children: [

            // ================= HEADER =================
            Container(
              height: 280,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [

                  // Dark overlay
                  Container(
                    color: Colors.black.withOpacity(0.4),
                  ),

                  // Top bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back, color: Colors.white),
                        Text(
                          "Destination Profile Made By NAMEERAH (B23110106052)",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(Icons.share, color: Colors.white),
                      ],
                    ),
                  ),

                  // Favorite icon
                  Positioned(
                    top: 60,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.3),
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Title at bottom of image
                  const Positioned(
                    bottom: 20,
                    left: 20,
                    child: Text(
                      "Lago di Braies",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ================= BODY =================
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Info Cards
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        InfoCard(
                          icon: Icons.location_on,
                          text: "120 km",
                        ),
                        InfoCard(
                          icon: Icons.access_time,
                          text: "2.5 hrs",
                        ),
                        InfoCard(
                          icon: Icons.attach_money,
                          text: "\$45.00",
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Overview",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Experience the heart of the Dolomites. Lago di Braies is one of the most beautiful lakes in South Tyrol, Italy. Famous for its crystal clear emerald waters and the impressive mountain backdrop of the Seekofel.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: const [
                        Icon(Icons.location_on,
                            color: Colors.white54, size: 16),
                        SizedBox(width: 5),
                        Text(
                          "South Tyrol, Italy",
                          style: TextStyle(color: Colors.white54),
                        )
                      ],
                    ),

                    const SizedBox(height: 40),

                    // Book Now Button
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    const Center(
                      child: Text(
                        "View Terms and Conditions",
                        style: TextStyle(
                          color: Colors.white38,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= INFO CARD WIDGET =================
class InfoCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF16263A),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}