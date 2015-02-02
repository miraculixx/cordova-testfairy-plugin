#import "CDVTestFairy.h"
#import "TestFairy.h"

@implementation CDVTestFairy

/**
 * see http://docs.testfairy.com/iOS_SDK/Integrating_iOS_SDK.html
 * in particular step 4
 */
- (void)init:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{
		NSString* token = [[command arguments] objectAtIndex:0];
		NSString* msg = [NSString stringWithFormat: @"[INFO] testfairy token %@", token];
		
		CDVPluginResult* result = [CDVPluginResult
		                           resultWithStatus:CDVCommandStatus_OK
		                           messageAsString:msg];
		
		[TestFairy begin:token];
		
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    }];
}

/**
 * see http://docs.testfairy.com/iOS_SDK/Correlation_Id.html
 */
- (void)setCorrelationId:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{
		NSString* corrId = [[command arguments] objectAtIndex:0];
		NSString* msg = [NSString stringWithFormat: @"[INFO] testfairy correlation id %@", corrId];
		
		CDVPluginResult* result = [CDVPluginResult
		                           resultWithStatus:CDVCommandStatus_OK
		                           messageAsString:msg];
		
		[TestFairy setCorrelationId:corrId];
		
		[self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    }];
}


@end