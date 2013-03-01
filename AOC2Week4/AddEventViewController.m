//
//  AddEventViewController.m
//  AOC2Week4
//
//  Created by Justin Rowe on 2/28/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//
#import "AddEventViewController.h"

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
    //Date Picker Information
    datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 250, 325, 300)];
    datePicker.date = [NSDate date];
    [datePicker setMinimumDate:[NSDate date]];
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    [datePicker addTarget:self action:@selector(saveEventClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:datePicker];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    //left swipe gesture recognized to move to main screen
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onLeftSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [saveEventLabel addGestureRecognizer:leftSwipe];
}

//Left swipe to show information entered on the main screen
-(void)onLeftSwipe:(UISwipeGestureRecognizer*)recognizerLeft
{
    if (recognizerLeft.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        //Setting Date Formatter for Date and Time Presentation
        NSDateFormatter * dateFormat = [[NSDateFormatter alloc]init];
        [dateFormat setDateStyle:NSDateFormatterMediumStyle];
        [dateFormat setTimeStyle:NSDateFormatterShortStyle];
        eventDate = [NSString stringWithFormat:@"%@", [dateFormat stringFromDate:datePicker.date]];
        
        //Event action grabbing date and event description
        NSString * newEvent = [[NSString alloc] initWithFormat:@"New Event: %@, %@", [eventDescriptionTextField text],eventDate];
        
        [eventDescriptionTextField resignFirstResponder];
        [self dismissViewControllerAnimated:TRUE completion:nil];
        if (delegate != nil)
        {
            [delegate AddEvent:newEvent];
        }
    }
}

//Close Keyboard Click Action
- (IBAction)closeKeyboardClick:(id)sender;
{
    [eventDescriptionTextField resignFirstResponder];
}

//Close Keyboard Action From Return Button
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}

@end
