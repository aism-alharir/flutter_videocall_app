import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'constent/constent.dart';

final userID = Random().nextInt(9999);

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: AppInfo
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: AppInfo
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID.toString(),
      userName: 'userName $userID',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
