import 'package:flutter/material.dart';

class SurveyForm extends StatefulWidget {
  final Function({
    required String instituteName,
    required String pincode,
    required int totalArea,
    required double dryWaste,
    required double wetWaste,
    required double biomedicalWaste,
    required double eWaste,
    required double hazardousWaste,
    required List<String> wasteDisposalFacility,
  }) onComplete;

  SurveyForm({required this.onComplete});

  @override
  _SurveyFormState createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  final _formKey = GlobalKey<FormState>();
  late String _instituteName;
  late String _pincode;
  late int _totalArea;
  late double _dryWaste;
  late double _wetWaste;
  late double _biomedicalWaste;
  late double _eWaste;
  late double _hazardousWaste;
  List<String> _wasteDisposalFacility = [];
  List<String> multipleChoiceAnswers = [];

  @override
  void initState() {
    super.initState();
    _instituteName = '';
    _pincode = '';
    _totalArea = 0;
    _dryWaste = 0.0;
    _wetWaste = 0.0;
    _biomedicalWaste = 0.0;
    _eWaste = 0.0;
    _hazardousWaste = 0.0;
  }

  void _updateWasteDisposalFacility(String facility) {
    setState(() {
      _wasteDisposalFacility.add(facility);
    });
  }

  void _removeWasteDisposalFacility(String facility) {
    setState(() {
      _wasteDisposalFacility.remove(facility);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Campus Waste Survey'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green.shade200, Colors.green.shade600],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Institute Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your institute name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _instituteName = value!;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Pin Code',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || value.length != 6) {
                        return 'Please enter a valid 6-digit pin code';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _pincode = value!;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Total Area of Institute (in acres)',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || double.parse(value) < 0) {
                        return 'Please enter a valid area';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _totalArea = int.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Dry Waste (in Kg)',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || double.parse(value) < 0) {
                        return 'Please enter a valid quantity';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _dryWaste = double.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Wet Waste (in Kg)',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || double.parse(value) < 0) {
                        return 'Please enter a valid quantity';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _wetWaste = double.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Biomedical Waste (in Kg)',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || double.parse(value) < 0) {
                        return 'Please enter a valid quantity';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _biomedicalWaste = double.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-waste (in Kg)',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || double.parse(value) < 0) {
                        return 'Please enter a valid quantity';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _eWaste = double.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Hazardous Waste (in Kg)',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || double.parse(value) < 0) {
                        return 'Please enter a valid quantity';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _hazardousWaste = double.parse(value!);
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Please select the in-house treatment and disposal facilities used by your institute to dispose of solid waste:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Composting unit'),
                    value: multipleChoiceAnswers.contains('Option X'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          multipleChoiceAnswers.add('Option X');
                          _updateWasteDisposalFacility('WET');
                        } else {
                          multipleChoiceAnswers.remove('Option X');
                          _removeWasteDisposalFacility('WET');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Biogas Plant'),
                    value: multipleChoiceAnswers.contains('Option Y'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          multipleChoiceAnswers.add('Option Y');
                          _updateWasteDisposalFacility('WET');
                        } else {
                          multipleChoiceAnswers.remove('Option Y');
                          _removeWasteDisposalFacility('WET');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Bio methanation plant'),
                    value: multipleChoiceAnswers.contains('Option A'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          multipleChoiceAnswers.add('Option A');
                          _updateWasteDisposalFacility('WET');
                        } else {
                          multipleChoiceAnswers.remove('Option A');
                          _removeWasteDisposalFacility('WET');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Organic waste converter'),
                    value: multipleChoiceAnswers.contains('Option B'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          multipleChoiceAnswers.add('Option B');
                          _updateWasteDisposalFacility('WET');
                        } else {
                          multipleChoiceAnswers.remove('Option B');
                          _removeWasteDisposalFacility('WET');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Incinerators'),
                    value: multipleChoiceAnswers.contains('Option C'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          multipleChoiceAnswers.add('Option C');
                          _updateWasteDisposalFacility('BIOMEDICAL');
                        } else {
                          multipleChoiceAnswers.remove('Option C');
                          _removeWasteDisposalFacility('BIOMEDICAL');
                        }
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text('Sanitary Landfill'),
                    value: multipleChoiceAnswers.contains('Option Z'),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          multipleChoiceAnswers.add('Option Z');
                          _updateWasteDisposalFacility('HAZARDOUS');
                        } else {
                          multipleChoiceAnswers.remove('Option Z');
                          _removeWasteDisposalFacility('HAZARDOUS');
                        }
                      });
                    },
                  ),                  
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        // Call onComplete callback with collected data
                        widget.onComplete(
                          instituteName: _instituteName,
                          pincode: _pincode,
                          totalArea: _totalArea,
                          dryWaste: 5,
                          wetWaste: _wetWaste,
                          biomedicalWaste: _biomedicalWaste,
                          eWaste: _eWaste,
                          hazardousWaste: _hazardousWaste,
                          wasteDisposalFacility: _wasteDisposalFacility,
                        );

                        // Navigate back to the previous screen
                        Navigator.pop(context);
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      minimumSize: MaterialStateProperty.all<Size>(Size(200, 60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      elevation: MaterialStateProperty.all<double>(5.0),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
