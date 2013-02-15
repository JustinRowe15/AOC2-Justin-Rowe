//
//  ViewController.m
//  AOC2Week2
//
//  Created by Justin Rowe on 2/14/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ViewController.h"
#import "InfoViewController.h"

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

//Small info button action.
- (IBAction)infoClick:(id)sender;
{
    InfoViewController * infoView = [[InfoViewController alloc] initWithNibName:@"InfoViewController" bundle:nil];
    if (infoView != nil)
    {
        [self presentViewController:infoView animated:TRUE completion:nil];
    }
}

//Fighter Aircraft Button Action
- (IBAction)fighterClick:(id)sender;
{
    stepperLabel.text = [NSString stringWithFormat:@"Enter Bullet Quantity:"];
    
    int stepperNumber = stepperButton.value;
    aircraftEntered.text = [NSString stringWithFormat:@"Fighter number of bullets: %d", stepperNumber];
    
    //Button Enabling
    fighterButton.enabled = false;
    bomberButton.enabled = true;
    tankerButton.enabled = true;
    calculateButton.enabled = true;
}

//Bomber Aircraft Button Action
- (IBAction)bomberClick:(id)sender;
{
    stepperLabel.text = [NSString stringWithFormat:@"Enter Bomb Quantity:"];
    
    int stepperNumber = stepperButton.value;
    aircraftEntered.text = [NSString stringWithFormat:@"Bomber number of bombs: %d", stepperNumber];
    
    //Button Enabling
    fighterButton.enabled = true;
    bomberButton.enabled = false;
    tankerButton.enabled = true;
    calculateButton.enabled = true;
}

//Tanker Aircraft Button Action
- (IBAction)tankerClick:(id)sender;
{
    stepperLabel.text = [NSString stringWithFormat:@"Enter Fuel Quantity:"];
    
    int stepperNumber = stepperButton.value;
    aircraftEntered.text = [NSString stringWithFormat:@"Tanker number of gallons: %d", stepperNumber];
    
    //Button Enabling
    fighterButton.enabled = true;
    bomberButton.enabled = true;
    tankerButton.enabled = false;
    calculateButton.enabled = true;
}

//What happens when someone increases and decreases the stepper button.
- (IBAction)stepperClick:(id)sender;
{
    int stepperNumber = stepperButton.value;
    
    if (fighterButton.enabled == false)
    {
        aircraftEntered.text = [NSString stringWithFormat:@"Fighter number of bullets: %d", stepperNumber];
        stepperLabel.text = [NSString stringWithFormat:@"Enter Bullet Quantity: %d", stepperNumber];
    } else if (bomberButton.enabled == false)
    {
        aircraftEntered.text = [NSString stringWithFormat:@"Bomber number of bombs: %d", stepperNumber];
        stepperLabel.text = [NSString stringWithFormat:@"Enter Bomb Quantity: %d", stepperNumber];
    } else if (tankerButton.enabled == false)
    {
        aircraftEntered.text = [NSString stringWithFormat:@"Tanker number of gallons: %d", stepperNumber];
        stepperLabel.text = [NSString stringWithFormat:@"Enter Fuel Quantity: %d", stepperNumber];
    } else
    {
        aircraftEntered.text = [NSString stringWithFormat:@"No Aircraft Selected"];
    }
}

//Once the calculate button, execute these calculations depending on which type of Aircraft was chosen
- (IBAction)calculateClick:(id)sender;
{
    int stepperNumber = stepperButton.value;
    
    if (fighterButton.enabled == false)
    {
        FighterAircraft * fighter = (FighterAircraft*)[AircraftFactory createAircraft:FIGHTER];
        
        if (fighter !=nil)
        {
            [fighter setFighterType:F16];
            [fighter setNumberOfBullets:(stepperNumber + fighter.numberOfBullets)];
            [fighter setNumberOfBulletsFiredPerSecond:100];
            [fighter displayAircraft];
            
            aircraftEntered.text = [NSString stringWithFormat:@"%@ has fired %d bullets.", fighter.aircraftType, fighter.numberOfBullets];
        };
    } else if (bomberButton.enabled == false)
    {
        BomberAircraft * bomber = (BomberAircraft*)[AircraftFactory createAircraft:BOMBER];
        
        if (bomber !=nil)
        {
            [bomber setNumberOfClusterBombs:(stepperNumber + bomber.numberOfClusterBombs)];
            [bomber setNumberOfNuclearBombs:10];
            [bomber setNumberOfBombRuns:20];
            [bomber displayAircraft];
            
            aircraftEntered.text = [NSString stringWithFormat:@"%@ has dropped %d bombs.", bomber.aircraftType, bomber.numberOfClusterBombs];
        }
    } else if (tankerButton.enabled == false)
    {
        TankerAircraft * tanker = (TankerAircraft*)[AircraftFactory createAircraft:TANKER];
        
        if (tanker !=nil)
        {
            [tanker setFuelCapacity:250000];
            [tanker setNumberOfDistributedFuelGallons:(stepperNumber + tanker.numberOfDistributedFuelGallons)];
            [tanker setNumberOfRefuelCycles:25];
            [tanker displayAircraft];
            
            aircraftEntered.text = [NSString stringWithFormat:@"%@ has distributed %d gallons.", tanker.aircraftType, tanker.numberOfDistributedFuelGallons];
        }
    }
}

- (IBAction)segmentClick:(id)sender;
{
    UISegmentedControl * segmentedControl = (UISegmentedControl*)sender;
    if (segmentedControl != nil)
    {
        int selectedChoice = segmentedControl.selectedSegmentIndex;
        switch (selectedChoice)
        {
            case 0:
                self.view.backgroundColor = [UIColor blueColor];
                break;
            case 1:
                self.view.backgroundColor = [UIColor greenColor];
                break;
            case 2:
                self.view.backgroundColor = [UIColor yellowColor];
                break;
            default:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
        }
    }
}

@end
