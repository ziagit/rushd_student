import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/student_of_the_year/students_of_the_years/students_of_the_years_widget.dart';
import 'student_of_the_year_widget.dart' show StudentOfTheYearWidget;
import 'package:flutter/material.dart';

class StudentOfTheYearModel extends FlutterFlowModel<StudentOfTheYearWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // Model for StudentsOfTheYears component.
  late StudentsOfTheYearsModel studentsOfTheYearsModel1;
  // Model for StudentsOfTheYears component.
  late StudentsOfTheYearsModel studentsOfTheYearsModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampModel = createModel(context, () => BreadcrampModel());
    studentsOfTheYearsModel1 =
        createModel(context, () => StudentsOfTheYearsModel());
    studentsOfTheYearsModel2 =
        createModel(context, () => StudentsOfTheYearsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopSidebarModel.dispose();
    breadcrampModel.dispose();
    studentsOfTheYearsModel1.dispose();
    studentsOfTheYearsModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
