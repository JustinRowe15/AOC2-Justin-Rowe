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

- (void)viewWillAppear:(BOOL)animated
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeEventLabel addGestureRecognizer:rightSwipe];
}

-(void)onRightSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        AddEventViewController * eventView = [[AddEventViewController alloc] initWithNibName:@"AddEventViewController" bundle:nil];
        {
            eventView.delegate = self;
            [self presentViewController:eventView animated:TRUE completion:nil];
        }
    }
}

//Function declared from AddEventViewController To Event Listing Outlet
-(void)AddEvent:(NSString *)eventString;
{
    eventListing.text = eventString;
}

@end
