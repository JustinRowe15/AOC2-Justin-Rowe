//
//  ViewController.h
//  AOC2Week4
//
//  Created by Justin Rowe on 2/28/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <AddEventViewDelegate>

//Main View Outlets Declared
{
    NSString * eventState;
    IBOutlet UITextView * eventListing;
    IBOutlet UIButton * saveEventButton;
    IBOutlet UILabel * swipeEventLabel;
    UISwipeGestureRecognizer * rightSwipe;
}

@property IBOutlet UITextView * savedEvents;

//Event declared for New Event Button
- (IBAction)saveEventClick:(id)sender;

@end
