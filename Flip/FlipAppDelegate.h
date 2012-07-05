//
//  FlipAppDelegate.h
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID



@class BigView;
@class LittleView0;

@interface FlipAppDelegate: UIResponder <UIApplicationDelegate> {
	SystemSoundID sid;
	BigView *bigView;
	UIWindow *_window;
}

- (void) touchUpInside: (id) sender;



@property (strong, nonatomic) UIWindow *window;
@end
