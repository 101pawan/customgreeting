#import "CustomGreetingPlugin.h"
#if __has_include(<custom_greeting/custom_greeting-Swift.h>)
#import <custom_greeting/custom_greeting-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_greeting-Swift.h"
#endif

@implementation CustomGreetingPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomGreetingPlugin registerWithRegistrar:registrar];
}
@end
