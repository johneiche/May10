//
//  ModalView.m
//  May10
//
//  Created by John Eiche on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ModalView.h"
#import "ModalViewController.h"

@implementation ModalView


/*
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
*/
 
 
- (id) initWithFrame: (CGRect) frame controller: (ModalViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor orangeColor];
		self.textAlignment = UITextAlignmentCenter;
		//self.text = @"ModalView";
        self.text = NSStringFromClass([self class]);        
		self.userInteractionEnabled = YES;
		modalViewController = c;
	}
	return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
