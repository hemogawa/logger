//
//  LoggerContoler.m
//  logger
//
//  Created by 菊川 真理子 on 11/06/16.
//  Copyright 2011 北陸先端科学技術大学院大学. All rights reserved.
//

#import "LoggerContoler.h"


@implementation LoggerContoler

-(id)init{
	NSLog(@"init");
	_timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
											  target:self
											selector:@selector(logging:)
											userInfo:nil
											 repeats:YES
			  ];
	_logSwitch = NO;
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSLeftMouseDownMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSLeftMouseUpMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSLeftMouseDragged
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSRightMouseDownMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSRightMouseUpMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSRightMouseDragged
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSMouseMovedMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSScrollWheelMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	[NSEvent addGlobalMonitorForEventsMatchingMask:NSKeyDownMask
										   handler:^(NSEvent* event){
											   NSLog(@"GlovalMonitor:%@",event);
										   }];
	return self;
}

-(void)logging:(NSTimer*)_timer{
	if (_logSwitch == YES) {
		[_logOutput setStringValue:@"timer"];
	}
}

-(IBAction)logStart:(id)sender{
	_logSwitch = YES;
	[_logOutput setStringValue:@"start"];
}
-(IBAction)logStop:(id)sender{
	_logSwitch = NO;
	[_logOutput setStringValue:@"stop"];
}

@end
