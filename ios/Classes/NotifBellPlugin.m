#import "NotifBellPlugin.h"
#import <notif_bell/notif_bell-Swift.h>

@implementation NotifBellPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNotifBellPlugin registerWithRegistrar:registrar];
}
@end
