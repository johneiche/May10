//
//  View.m
//  May10
//
//  Created by John Eiche on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "ViewController.h"
#import "May10AppDelegate.h"
#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c
{
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		//self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor =
        [UIColor colorWithRed: (CGFloat)rand() / RAND_MAX
                        green: (CGFloat)rand() / RAND_MAX
                         blue: 1.0
                        alpha: 1.0
         ];
		self.font = [UIFont fontWithName: @"Courier" size: 16];
		//self.editable = NO;
        
        self.textAlignment = UITextAlignmentCenter;
		//self.text = @"MainView";
        self.text = NSStringFromClass([self class]);
		self.userInteractionEnabled = YES; //Make it touch-sensitive.
        
          
		viewController = c;
	}
	return self;
}



- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	[viewController presentModalViewController];
}


/*

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    UINavigationController *navigationController =
    [[UINavigationController alloc] initWithRootViewController: viewController];        
    
    NSString *imageName;
    NSUInteger i = navigationController.viewControllers.count;
    imageName = [[NSString alloc] initWithFormat: @"cover_%d.jpg", i];
    UIImage *image = [UIImage imageNamed: imageName];	//
    
    NSLog(@"image name == %@", imageName);
    
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    
    //upper left corner of image
    CGPoint point = CGPointMake(0,0);
    CGContextRef cr = UIGraphicsGetCurrentContext();
    
    [image drawAtPoint: point];        
    
    
    //Center the image in the view.
    CGRect b = self.bounds;
    
    
}
*/

@end
