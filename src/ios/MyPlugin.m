#import "MyPlugin.h"
#import <Cordova/CDV.h>

@implementation MyPluginNativeClassName

- (void) echo:(CDVInvokedUrlCommand*)command{

	CDVPluginResult* pluginResult = nil;
	NSString* echo = [command.arguments objectAtIndex:0];

	if(echo != nil && [echo length] > 0){
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
	} else {
		pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Arg was null"];
	}

	[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end