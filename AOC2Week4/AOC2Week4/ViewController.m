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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Click Action To Switch To Add Event View
- (IBAction)newEventClick:(id)sender;
{
    AddEventViewController * eventView = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
    {
        eventView.delegate = self;
        [self presentViewController:eventView animated:TRUE completion:nil];
    }
}

//Function declared from AddEventViewController To Event Listing Outlet
-(void)AddEvent:(NSString *)eventString;
{
    eventListing.text = eventString;
}

@end
