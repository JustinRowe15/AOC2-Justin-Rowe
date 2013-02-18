//
//  ViewController.h
//  AOC2Week3
//
//  Created by Justin Rowe on 2/16/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@protocol AddEventViewDelegate <NSObject>

@required
-(void)AddEvent:(NSString *)eventString;

@end

@interface ViewController : UIViewController <AddEventViewDelegate>

{
    IBOutlet UITextView * eventListing;
    IBOutlet UIButton * newEventButton;
}

- (IBAction)newEventClick:(id)sender;

@end
