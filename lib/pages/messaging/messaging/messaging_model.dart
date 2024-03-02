import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/breadcramp/breadcramp_widget.dart';
import '/pages/messaging/user_chat_list/user_chat_list_widget.dart';
import 'messaging_widget.dart' show MessagingWidget;
import 'package:flutter/material.dart';

class MessagingModel extends FlutterFlowModel<MessagingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Breadcramp component.
  late BreadcrampModel breadcrampModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for UserChatList component.
  late UserChatListModel userChatListModel1;
  // Model for UserChatList component.
  late UserChatListModel userChatListModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    breadcrampModel = createModel(context, () => BreadcrampModel());
    userChatListModel1 = createModel(context, () => UserChatListModel());
    userChatListModel2 = createModel(context, () => UserChatListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    breadcrampModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    userChatListModel1.dispose();
    userChatListModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
