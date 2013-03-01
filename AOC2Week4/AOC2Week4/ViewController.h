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
    IBOutlet UITextView * eventListing;
    IBOutlet UIButton * newEventButton;
    IBOutlet UILabel * swipeEventLabel;
    UISwipeGestureRecognizer * rightSwipe;
}

//Event declared for New Event Button
- (IBAction)saveEventClick:(id)sender;
- (void)onRightSwipe:(UISwipeGestureRecognizer*)recognizer;

@end
