import 'package:flutter/material.dart';
import 'package:green_gather/presentation/report_page_screen/report_page_screen.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class PieChartScreen extends StatelessWidget {
  final double dryWaste;
  final double wetWaste;
  final double biomedicalWaste;
  final double eWaste;
  final double hazardousWaste;
  final List wasteDisposalFacility;

  PieChartScreen({
    required this.dryWaste,
    required this.wetWaste,
    required this.biomedicalWaste,
    required this.eWaste,
    required this.hazardousWaste,
    required this.wasteDisposalFacility,
  });

  @override
  Widget build(BuildContext context) {
    List<WasteData> data = [
      WasteData('Dry Waste', dryWaste),
      WasteData('Wet Waste', wetWaste),
      WasteData('Biomedical Waste', biomedicalWaste),
      WasteData('E-waste', eWaste),
      WasteData('Hazardous Waste', hazardousWaste),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Waste Recycling Chart'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 400,
              height: 400,
              child: SfCircularChart(
                series: <CircularSeries>[
                  PieSeries<WasteData, String>(
                    dataSource: data,
                    xValueMapper: (WasteData waste, _) => waste.category,
                    yValueMapper: (WasteData waste, _) => waste.quantity,
                    dataLabelMapper: (WasteData waste, _) =>
                        '${waste.category}: ${waste.quantity.toString()} Kg',
                    dataLabelSettings: DataLabelSettings(isVisible: true),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to results screen and pass collected data
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsScreen(
                    wasteDisposalFacility: wasteDisposalFacility,
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(300, 80), // Adjust the size as needed
            ),
            child: Text('Results'),
          ),
        ],
      ),
    );
  }
}

class WasteData {
  final String category;
  final double quantity;

  WasteData(this.category, this.quantity);
}