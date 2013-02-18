//
//  AddEventViewController.m
//  AOC2Week3
//
//  Created by Justin Rowe on 2/16/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "AddEventViewController.h"
#import "ViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

@synthesize delegate, eventDate, datePicker;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)saveEventClick:(id)sender;
{
    datePicker = [[UIDatePicker alloc]init];
    datePicker.date = [NSDate date];
    NSDateFormatter * dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateStyle:NSDateFormatterMediumStyle];
    [dateFormat setTimeStyle:NSDateFormatterShortStyle];
    eventDate = [NSString stringWithFormat:@"%@", [dateFormat stringFromDate:[datePicker date]]];
    
    NSString * newEvent = [[NSString alloc] initWithFormat:@"New Event: %@, %@", [eventDescriptionTextField text],eventDate];
    [eventDescriptionTextField resignFirstResponder];
    [self dismissViewControllerAnimated:TRUE completion:nil];
    if (delegate != nil)
    {
        [delegate AddEvent:newEvent];
    }
}
- (IBAction)closeKeyboardClick:(id)sender;
{
    [eventDescriptionTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}

@end
