//
//  AddEventViewController.h
//  AOC2Week4
//
//  Created by Justin Rowe on 2/28/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>

//Add Event View Delegate Declaration
@protocol AddEventViewDelegate <NSObject>

-(void)AddEvent:(NSString *)eventString;

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>

//Outlets Declared
{
    id<AddEventViewDelegate> delegate;
    
    IBOutlet UIButton * closeKeyboardButton;
    IBOutlet UILabel * saveEventLabel;
    IBOutlet UITextField * eventDescriptionTextField;
    IBOutlet UIDatePicker * eventDatePicker;
    UISwipeGestureRecognizer * leftSwipe;
}

//Actions Declared
- (void)onLeftSwipe:(UISwipeGestureRecognizer*)recognizer;
- (IBAction)closeKeyboardClick:(id)sender;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

//Properties Declared
@property NSString * eventDate;
@property UIDatePicker * datePicker;
@property (strong) id<AddEventViewDelegate> delegate;

@end
