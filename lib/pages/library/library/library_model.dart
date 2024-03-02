import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp_with_drawer/breadcramp_with_drawer_widget.dart';
import '/pages/components/desktop_sidebar/desktop_sidebar_widget.dart';
import '/pages/components/mobile_sidebar/mobile_sidebar_widget.dart';
import 'library_widget.dart' show LibraryWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LibraryModel extends FlutterFlowModel<LibraryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DesktopSidebar component.
  late DesktopSidebarModel desktopSidebarModel;
  // Model for BreadcrampWithDrawer component.
  late BreadcrampWithDrawerModel breadcrampWithDrawerModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for MobileSidebar component.
  late MobileSidebarModel mobileSidebarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopSidebarModel = createModel(context, () => DesktopSidebarModel());
    breadcrampWithDrawerModel =
        createModel(context, () => BreadcrampWithDrawerModel());
    mobileSidebarModel = createModel(context, () => MobileSidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    desktopSidebarModel.dispose();
    breadcrampWithDrawerModel.dispose();
    mobileSidebarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
