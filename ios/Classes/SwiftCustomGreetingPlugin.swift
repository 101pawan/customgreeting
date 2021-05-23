import Flutter
import UIKit

public class SwiftCustomGreetingPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "custom_greeting", binaryMessenger: registrar.messenger())
    let instance = SwiftCustomGreetingPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch(call.method){
           case "getPlatformVersion":
                 result("iOS " + UIDevice.current.systemVersion)
           case "getDefaultGreeting":
                 result("welcome ios user")
           default :
                 result("nothing")
    }
  }
}
