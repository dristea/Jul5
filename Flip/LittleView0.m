//
//  LittleView0.m
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView0.h"
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID


@implementation LittleView0

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor redColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(200, 40);	//size of button
		
		button.frame = CGRectMake(
								  b.origin.x + (b.size.width - s.width) / 2,
								  b.origin.y + (b.size.height - s.height) / 2,
								  s.width,
								  s.height
								  );
		
		[button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[button setTitle: @"Triangle Existance" forState: UIControlStateNormal];
		
		[button addTarget: [UIApplication sharedApplication].delegate
				   action: @selector(touchUpInside:)
		 forControlEvents: UIControlEventTouchUpInside
		 ];
		
		[self addSubview: button];
	}
	return self;
}






// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	//Print the name of the class.  See the main function in main.m.
	Class class = [self class];
	NSString *string = NSStringFromClass(class);
	CGPoint point = CGPointMake(0.0, 0.0);
	UIFont *font = [UIFont systemFontOfSize: 32];
	[string drawAtPoint: point withFont: font];
}




@end
