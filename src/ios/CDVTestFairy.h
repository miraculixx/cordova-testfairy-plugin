/********* Cordova Plugin Header *******/

#import <Cordova/CDV.h>

@interface CDVTestFairy : CDVPlugin

- (void)init:(CDVInvokedUrlCommand*)command;
- (void)setCorrelationId:(CDVInvokedUrlCommand*)command;

@end

