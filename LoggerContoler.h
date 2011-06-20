//
//  LoggerContoler.h
//  logger
//
//  Created by 菊川 真理子 on 11/06/16.
//  Copyright 2011 北陸先端科学技術大学院大学. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface LoggerContoler : NSObject {
	IBOutlet NSTextField *_logOutput;
	NSTimer *_timer;
	BOOL _logSwitch;
}

-(void)logging:(NSTimer*)_timer;
-(IBAction)logStart:(id)sender;
-(IBAction)logStop:(id)sender;

@end
