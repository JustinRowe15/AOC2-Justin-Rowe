//
//  ViewController.m
//  AOC2Week4
//
//  Created by Justin Rowe on 2/28/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSUserDefaults * defaultScreen = [NSUserDefaults standardUserDefaults];
    if (defaultScreen != nil)
    {
        NSString * eventDisplay = [defaultScreen objectForKey:@"Saved"];
        self.savedEvents.text = eventDisplay;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onRightSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeEventLabel addGestureRecognizer:rightSwipe];
}

//Right Swipe Label to Move to Second View
-(void)onRightSwipe:(UISwipeGestureRecognizer*)recognizerRight
{
    if (recognizerRight.direction == UISwipeGestureRecognizerDirectionRight)
    {
        AddEventViewController * eventView = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
        {
            eventView.delegate = self;
            [self presentViewController:eventView animated:TRUE completion:nil];
        }
    }
}

//Function declared from AddEventViewController To Event Listing Outlet With Append If Needed
-(void)AddEvent:(NSString *)eventString;
{
    if (eventState != nil)
    {
        eventState = [eventState stringByAppendingString:eventString];
    } else {
        eventState = [NSString stringWithFormat:@"%@", eventString];
    }
    
    eventListing.text = eventString;
}

//Save Event Button Action
- (IBAction)saveEventClick:(id)sender;
{
    NSUserDefaults * defaultEvent = [NSUserDefaults standardUserDefaults];
    if (defaultEvent != nil)
    {
        NSString * eventDisplay = self.savedEvents.text;
        [defaultEvent setObject:eventDisplay forKey:@"Saved"];
        
        //Saves The Events
        [defaultEvent synchronize];
    }
}

@end
