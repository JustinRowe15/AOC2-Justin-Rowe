//
//  AddEventViewController.h
//  AOC2Week3
//
//  Created by Justin Rowe on 2/16/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

//Add Event View Delegate Declaration
@protocol AddEventViewDelegate <NSObject>

-(void)AddEvent:(NSString *)eventString;

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>

//Outlets Declared
{
    id<AddEventViewDelegate> delegate;
    
    IBOutlet UIButton * saveEventButton;
    IBOutlet UIButton * closeKeyboardButton;
    IBOutlet UITextField * eventDescriptionTextField;
    IBOutlet UIDatePicker * eventDatePicker;
}

//Actions Declared
- (IBAction)saveEventClick:(id)sender;
- (IBAction)closeKeyboardClick:(id)sender;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

//Properties Declared
@property NSString * eventDate;
@property UIDatePicker * datePicker;
@property (strong) id<AddEventViewDelegate> delegate;

@end
