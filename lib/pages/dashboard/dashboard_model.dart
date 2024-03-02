import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp_with_drawer/breadcramp_with_drawer_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/components/mobile_sidebar/mobile_sidebar_widget.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MobileSidebar component.
  late MobileSidebarModel mobileSidebarModel;
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for BreadcrampWithDrawer component.
  late BreadcrampWithDrawerModel breadcrampWithDrawerModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mobileSidebarModel = createModel(context, () => MobileSidebarModel());
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampWithDrawerModel =
        createModel(context, () => BreadcrampWithDrawerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileSidebarModel.dispose();
    desktopSidebarModel.dispose();
    breadcrampWithDrawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
