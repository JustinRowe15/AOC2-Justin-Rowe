//
//  ViewController.h
//  AOC2Week3
//
//  Created by Justin Rowe on 2/16/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <AddEventViewDelegate>

//Main View Outlets Declared
{
    IBOutlet UITextView * eventListing;
    IBOutlet UIButton * newEventButton;
}

//Event declared for New Event Button
- (IBAction)newEventClick:(id)sender;

@end
