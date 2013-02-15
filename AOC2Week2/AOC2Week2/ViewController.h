//
//  ViewController.h
//  AOC2Week2
//
//  Created by Justin Rowe on 2/14/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AircraftFactory.h"

@interface ViewController : UIViewController

//Declare outlets
{
    IBOutlet UITextField * aircraftEntered;
    IBOutlet UIButton * fighterButton;
    IBOutlet UIButton * tankerButton;
    IBOutlet UIButton * bomberButton;
    IBOutlet UIButton * calculateButton;
    IBOutlet UIStepper * stepperButton;
    IBOutlet UILabel * stepperLabel;
}

//Button click action functions
- (IBAction)infoClick:(id)sender;
- (IBAction)fighterClick:(id)sender;
- (IBAction)bomberClick:(id)sender;
- (IBAction)tankerClick:(id)sender;
- (IBAction)stepperClick:(id)sender;
- (IBAction)calculateClick:(id)sender;

@property int stepperNumber;

@end
