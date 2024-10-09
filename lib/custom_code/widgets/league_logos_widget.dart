// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

class LeagueLogosWidget extends StatelessWidget {
  final Function(String) onLeagueSelected;

  const LeagueLogosWidget({
    Key? key,
    required this.onLeagueSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a fixed height for the container
    return SizedBox(
      height:
          120, // Set a fixed height to ensure it shows correctly in FlutterFlow
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // Display a few hardcoded league logos
            _buildLeagueLogo(
                "Premier League", "assets/images/premier_league.png"),
            _buildLeagueLogo("La Liga", "assets/images/laliga.png"),
            _buildLeagueLogo("Serie A", "assets/images/serie_a.png"),
            _buildLeagueLogo("Bundesliga", "assets/images/bundesliga.png"),
            _buildLeagueLogo("Ligue 1", "assets/images/ligue_1.png"),
            _buildLeagueLogo("Eredivisie", "assets/images/eredivisie.png"),
            _buildLeagueLogo("MLS", "assets/images/mls.png"),
          ],
        ),
      ),
    );
  }

  // Helper method to build individual league logos with onTap functionality
  Widget _buildLeagueLogo(String leagueName, String assetPath) {
    return GestureDetector(
      onTap: () {
        // Call the onLeagueSelected callback with the league's ID
        onLeagueSelected(leagueName.toLowerCase().replaceAll(' ', '_'));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.asset(
              assetPath,
              height: 50,
              width: 50,
            ),
            SizedBox(height: 4),
            Text(
              leagueName,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
