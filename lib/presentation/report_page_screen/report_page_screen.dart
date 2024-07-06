import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List wasteDisposalFacility;

  ResultsScreen({
    required this.wasteDisposalFacility,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              Text(
                'Waste Disposal Methods:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(height:20),
              for (var wasteType in WasteType.values)
                if (!wasteDisposalFacility.contains(wasteType
                    .toString().split('.').last))
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${wasteType.toString().split('.').last}:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            if (wasteDisposalMethods.containsKey(
                                wasteType)) // Check if disposal methods exist for this waste type
                              for (var disposalMethod
                                  in wasteDisposalMethods[wasteType]!)
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Text(
                                    '- ${disposalMethod.title}: ${disposalMethod.description}',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

enum WasteType { WET, DRY, EWASTE, HAZARDOUS, BIOMEDICAL }

class DisposalMethod {
  final String title;
  final String description;

  const DisposalMethod(this.title, this.description);
}

const Map<WasteType, List<DisposalMethod>> wasteDisposalMethods = {
  WasteType.WET: [
    const DisposalMethod('Composting',
        'Breaks down organic matter into nutrient-rich soil amendment.'),
    const DisposalMethod('Vermicomposting',
        'Uses worms to decompose food scraps in a small-scale bin.'),
    const DisposalMethod('Digestion (Anaerobic)',
        'Breaks down organic matter for biogas production (large-scale facilities).'),
    const DisposalMethod('Garbage Disposal (limited)',
        'Grinds food scraps for disposal through the drain (use sparingly).'),
    const DisposalMethod('Municipal Composting Programs',
        'Curbside collection for large-scale composting (if available).'),
  ],
  WasteType.DRY: [
    const DisposalMethod(
        'Recycling', 'Processes waste materials into new products.'),
    const DisposalMethod('Reuse',
        'Utilizes items for their original purpose or repurposes them.'),
    const DisposalMethod('Landfill',
        'Disposal in designated landfills for non-recyclable/compostable waste.'),
    const DisposalMethod('Waste-to-Energy (Incineration)',
        'Burning waste to generate electricity (controversial).'),
    const DisposalMethod('Mechanical Biological Treatment',
        'Sorts, shreds, and treats mixed waste for potential recovery.'),
  ],
  WasteType.EWASTE: [
    const DisposalMethod('E-waste Recycling',
        'Specialized facilities dismantle and process e-waste for material recovery.'),
    const DisposalMethod('Manufacturer Take-Back Programs',
        'Some electronics manufacturers accept old devices for recycling.'),
    const DisposalMethod('Refurbishment and Reuse',
        'Repairing and reusing old electronics to extend their lifespan.'),
    const DisposalMethod('Formal Collection Sites',
        'Designated drop-off locations for e-waste collection.'),
    const DisposalMethod('Informal Recycling (not recommended)',
        'Uncontrolled extraction of materials, often with environmental/health risks.'),
  ],
  WasteType.HAZARDOUS: [
    const DisposalMethod('Treatment Facilities',
        'Specialized facilities treat and dispose of hazardous waste according to regulations.'),
    const DisposalMethod('Collection Events',
        'Periodic events for safe disposal of household hazardous waste.'),
    const DisposalMethod('Reuse (with caution)',
        'Reusing certain hazardous materials only if done safely and in accordance with regulations.'),
    const DisposalMethod('Incineration (specific types only)',
        'High-temperature burning of some hazardous waste types in controlled facilities.'),
    const DisposalMethod('Landfill (specific types only)',
        'Deep burial in designated landfills for specific types of stabilized hazardous waste.'),
  ],
  WasteType.BIOMEDICAL: [
    const DisposalMethod('Autoclaving',
        'Kills microorganisms using high-pressure steam in a sealed chamber.'),
    const DisposalMethod('Incineration (specific types only)',
        'High-temperature burning of specific biomedical waste in specialized facilities.'),
    const DisposalMethod('Chemical Disinfection',
        'Using disinfectants to inactivate pathogens in certain types of biomedical waste.'),
    const DisposalMethod('Microwaving (specific types only)',
        'High-powered microwaves can be used to decontaminate specific biomedical waste.'),
    const DisposalMethod('Landfill (specific types only)',
        'Deep burial in designated landfills for specific types of pre-treated biomedical waste.'),
  ],
};