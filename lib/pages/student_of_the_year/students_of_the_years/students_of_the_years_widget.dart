import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'students_of_the_years_model.dart';
export 'students_of_the_years_model.dart';

class StudentsOfTheYearsWidget extends StatefulWidget {
  const StudentsOfTheYearsWidget({super.key});

  @override
  State<StudentsOfTheYearsWidget> createState() =>
      _StudentsOfTheYearsWidgetState();
}

class _StudentsOfTheYearsWidgetState extends State<StudentsOfTheYearsWidget> {
  late StudentsOfTheYearsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentsOfTheYearsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FlipCard(
        fill: Fill.fillBack,
        direction: FlipDirection.HORIZONTAL,
        speed: 400,
        front: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).rushdGreen1,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://static.vecteezy.com/system/resources/thumbnails/005/427/608/small/young-indian-student-holding-diary-file-in-hand-free-photo.JPG',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        back: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).rushdGreen3,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '2023',
                style: FlutterFlowTheme.of(context).headlineLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
