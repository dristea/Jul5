//
//  BigView.h
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID


@interface BigView: UIView {
	//holds the two subviews we transtion between
	NSArray *views;

	//index in views of the currently displayed little view: 0 or 1
	NSUInteger index;

}

@end
