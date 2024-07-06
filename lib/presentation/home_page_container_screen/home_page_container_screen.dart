import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:green_gather/presentation/home_page/home_page.dart';
import 'package:green_gather/presentation/image_upload_screen/image_upload_screen.dart';
import 'package:green_gather/presentation/maps_page_screen/maps_page_screen.dart';
import 'package:green_gather/presentation/report_page_screen/report_page_screen.dart';
import 'package:green_gather/presentation/survey_screen/survey_screen.dart';
import 'package:green_gather/presentation/survey_screen/piechart_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';

class HomePageContainerScreen extends StatefulWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  _HomePageContainerScreenState createState() =>
      _HomePageContainerScreenState();
}

class _HomePageContainerScreenState extends State<HomePageContainerScreen> {
  bool surveyCompleted = false;
  List<String> wasteDisposalFacility = [];
  String instituteName = "";
  String pincode = "";
  int totalArea = 0;
  double dryWaste = 0.0;
  double wetWaste = 0.0;
  double biomedicalWaste = 0.0;
  double eWaste = 0.0;
  double hazardousWaste = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        if (type == BottomBarEnum.Survey) {
          // Navigate to SurveyForm and handle completion
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurveyForm(
                onComplete: ({
                  required String instituteName,
                  required String pincode,
                  required int totalArea,
                  required double dryWaste,
                  required double wetWaste,
                  required double biomedicalWaste,
                  required double eWaste,
                  required double hazardousWaste,
                  required List<String> wasteDisposalFacility,
                }) {
                  setState(() {
                    // Set survey completion and store data
                    surveyCompleted = true;
                    this.instituteName = instituteName;
                    this.pincode = pincode;
                    this.totalArea = totalArea;
                    this.dryWaste = dryWaste;
                    this.wetWaste = wetWaste;
                    this.biomedicalWaste = biomedicalWaste;
                    this.eWaste = eWaste;
                    this.hazardousWaste = hazardousWaste;
                    this.wasteDisposalFacility =
                        List.from(wasteDisposalFacility);
                  });
                },
              ),
            ),
          );
        } else if (type == BottomBarEnum.Report && surveyCompleted) {
          // Navigate to PieChartScreen with updated values
          Navigator.push(
            context,
            AppRoutes.reportPageScreen(
              dryWaste: dryWaste,
              wetWaste: wetWaste,
              biomedicalWaste: biomedicalWaste,
              eWaste: eWaste,
              hazardousWaste: hazardousWaste,
              wasteDisposalFacility: wasteDisposalFacility,
            ),
          );
        } else {
          // Handle navigation for other bottom bar items
          Navigator.pushNamed(context, getCurrentRoute(type));
        }
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Maps:
        return AppRoutes.mapsPageScreen;
      case BottomBarEnum.Scan:
        return AppRoutes.imageuploadscreen;
      default:
        return AppRoutes.homePage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.imageuploadscreen:
        return HomePage();
      case AppRoutes.mapsPageScreen:
        return RecyclingMap();
      case AppRoutes.surveyScreen:
        return SurveyForm(
          onComplete: ({
            required String instituteName,
            required String pincode,
            required int totalArea,
            required double dryWaste,
            required double wetWaste,
            required double biomedicalWaste,
            required double eWaste,
            required double hazardousWaste,
            required List<String> wasteDisposalFacility,
          }) {
            setState(() {
              // Set survey completion and store data
              surveyCompleted = true;
              this.instituteName = instituteName;
              this.pincode = pincode;
              this.totalArea = totalArea;
              this.dryWaste = dryWaste;
              this.wetWaste = wetWaste;
              this.biomedicalWaste = biomedicalWaste;
              this.eWaste = eWaste;
              this.hazardousWaste = hazardousWaste;
              this.wasteDisposalFacility = List.from(wasteDisposalFacility);
            });
          },
        );
      default:
        return HomePage();
    }
  }
}
