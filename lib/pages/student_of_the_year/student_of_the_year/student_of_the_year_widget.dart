import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/student_of_the_year/students_of_the_years/students_of_the_years_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'student_of_the_year_model.dart';
export 'student_of_the_year_model.dart';

class StudentOfTheYearWidget extends StatefulWidget {
  const StudentOfTheYearWidget({super.key});

  @override
  State<StudentOfTheYearWidget> createState() => _StudentOfTheYearWidgetState();
}

class _StudentOfTheYearWidgetState extends State<StudentOfTheYearWidget> {
  late StudentOfTheYearModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentOfTheYearModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                wrapWithModel(
                  model: _model.desktopSidebarModel,
                  updateCallback: () => setState(() {}),
                  child: const DesktopSidebarWidget(),
                ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 50.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.breadcrampModel,
                              updateCallback: () => setState(() {}),
                              child: const BreadcrampWidget(),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://i0.wp.com/www.additudemag.com/wp-content/uploads/2016/11/17_12_School_Behavior_Improving-Classroom-BehaviorSlideshow_17_student-doing-homework_ts_170081276.jpg',
                                        width: 470.0,
                                        height: 470.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Transform.rotate(
                                      angle: -0.7854,
                                      child: Icon(
                                        Icons.favorite_border_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 80.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Nov 2, 2024 - Explore archit\'s board "toring" on Pinterest. See more ideas about toe rings, foot jewelry, toe ring designs. Nov 2, 2017 - Explore archit\'s board "toring" on Pinterest. See more ideas about toe rings, foot jewelry, toe ring designs. Nov 2, 2017 - Explore archit\'s board "toring" on Pinterest. See more ideas about toe rings, foot jewelry, toe ring designs.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.thumb_up_alt,
                                      color: FlutterFlowTheme.of(context)
                                          .rushdPrimary,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.studentsOfTheYearsModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const StudentsOfTheYearsWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.studentsOfTheYearsModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const StudentsOfTheYearsWidget(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
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
