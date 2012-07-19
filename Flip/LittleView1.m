//
//  LittleView1.m
//  Flip
//
//  Created by NYU User on 11/3/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "LittleView1.h"

@implementation LittleView1

- (id) initWithFrame: (CGRect) frame
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor blueColor];
		UIFont *font = [UIFont systemFontOfSize: 24];
		CGFloat height = [@"A" sizeWithFont: font].height;
		
		//Center the UITextField in the TextFieldView.
		CGRect b = self.bounds;
		
		CGRect f = CGRectMake(
							  b.origin.x,
							  b.origin.y+100,
							  b.size.width,
							  height
							  );
		textField0 = [[UITextField alloc] initWithFrame: f];
		textField0.borderStyle = UITextBorderStyleNone;	//default
		textField0.backgroundColor = [UIColor yellowColor];
		textField0.textColor = [UIColor blackColor];
		
		textField0.clearButtonMode = UITextFieldViewModeAlways;
		textField0.keyboardType = UIKeyboardTypeDefault;
		textField0.returnKeyType = UIReturnKeyDone;
		
		textField0.font = font;
		textField0.placeholder = @"the value of a";
		textField0.textAlignment = UITextAlignmentLeft;	//default
		textField0.autocapitalizationType = UITextAutocapitalizationTypeNone; //default
		textField0.autocorrectionType = UITextAutocorrectionTypeNo;
		textField0.secureTextEntry = NO;	//for secret passwords
		
		//textField0.delegate = self;
		[self addSubview: textField0];
		
		f = CGRectMake(
						b.origin.x,
						b.origin.y+150,
						b.size.width,
						height
						);
		textField1 = [[UITextField alloc] initWithFrame: f];
		textField1.borderStyle = UITextBorderStyleNone;	//default
		textField1.backgroundColor = [UIColor yellowColor];
		textField1.textColor = [UIColor blackColor];
		
		textField1.clearButtonMode = UITextFieldViewModeAlways;
		textField1.keyboardType = UIKeyboardTypeDefault;
		textField1.returnKeyType = UIReturnKeyDone;
		
		textField1.font = font;
		textField1.placeholder = @"the value of b";
		textField1.textAlignment = UITextAlignmentLeft;	//default
		textField1.autocapitalizationType = UITextAutocapitalizationTypeNone; //default
		textField1.autocorrectionType = UITextAutocorrectionTypeNo;
		textField1.secureTextEntry = NO;	//for secret passwords
		
		//textField1.delegate = self;
		[self addSubview: textField1];
		
		f = CGRectMake(
					   b.origin.x,
					   b.origin.y+200,
					   b.size.width,
					   height
					   );
		textField2 = [[UITextField alloc] initWithFrame: f];
		textField2.borderStyle = UITextBorderStyleNone;	//default
		textField2.backgroundColor = [UIColor yellowColor];
		textField2.textColor = [UIColor blackColor];
		
		textField2.clearButtonMode = UITextFieldViewModeAlways;
		textField2.keyboardType = UIKeyboardTypeDefault;
		textField2.returnKeyType = UIReturnKeyDone;
		
		textField2.font = font;
		textField2.placeholder = @"the value of c";
		textField2.textAlignment = UITextAlignmentLeft;	//default
		textField2.autocapitalizationType = UITextAutocapitalizationTypeNone; //default
		textField2.autocorrectionType = UITextAutocorrectionTypeNo;
		textField2.secureTextEntry = NO;	//for secret passwords
		
		//textField2.delegate = self;
		[self addSubview: textField2];
		
		
		buttonCompute = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		//Center the button in the view.
		
		CGSize s = CGSizeMake(200, 40);	//size of button
		
		buttonCompute.frame = CGRectMake(
								  b.origin.x + (b.size.width - s.width) / 2,
								  b.origin.y + 250,
								  s.width,
								  s.height
								  );
		
		[buttonCompute setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[buttonCompute setTitle: @"Compute" forState: UIControlStateNormal];
		
		[buttonCompute addTarget: [UIApplication sharedApplication].delegate
				   action: @selector(touchUpInside:)
		 forControlEvents: UIControlEventTouchUpInside
		 ];
		
		[self addSubview: buttonCompute];

		
		
	}
	return self;
}


#pragma mark -
#pragma mark methods of UITextFieldDelegate protocol

//Called when return key is pressed.
//Decide if the app should accept this input and hide the keyboard.

- (BOOL) textFieldShouldReturn: (UITextField *) tf {
	if ([tf.text isEqualToString: @""]) {
		textField0.placeholder = @"<type a non-empty word>";
	} else {
		[tf resignFirstResponder];	//Hide keyboard.
	}
	return YES;	//The text field should do its default behavior.
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	//Print the name of the class.  See the main function in main.m.
	NSString *string = NSStringFromClass([self class]);
	UIFont *font = [UIFont systemFontOfSize: 32];
	[string drawAtPoint: CGPointZero withFont: font];
}

@end
