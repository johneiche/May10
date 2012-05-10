//
//  May10AppDelegate.h
//  May10
//
//  Created by John Eiche on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface May10AppDelegate : UIResponder <UIApplicationDelegate>{
	UIWindow *_window;
	NSArray *names;
	NSMutableArray *visited;
   
}

- (void) nextStation;

@property (strong, nonatomic) UIWindow *window;

@end
