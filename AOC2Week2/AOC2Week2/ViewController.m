//
//  ViewController.m
//  AOC2Week2
//
//  Created by Justin Rowe on 2/14/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ViewController.h"
#import "AircraftBase.h"
#import "FighterAircraft.h"
#import "BomberAircraft.h"
#import "TankerAircraft.h"
#import "AircraftFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Code Starts Here
    UIView * mainView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [mainView  setBackgroundColor:[UIColor whiteColor]];
    
    [self.view addSubview:mainView];
    
    //Name of function pulling from the FighterAircraft class and setting the values for each property.
    FighterAircraft * fighter = (FighterAircraft*)[AircraftFactory createAircraft:FIGHTER];
    
    if (fighter !=nil)
    {
        [fighter setFighterType:F16];
        [fighter setNumberOfBullets:20000];
        [fighter setNumberOfBulletsFiredPerSecond:100];
    };
    
    //Creation of fighter label to be displayed
    UILabel * fighterLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 140.0f)];
    {
        fighterLabel.text = [NSString stringWithFormat:@"For this mission, the fighter type will be %d and will carry %d rounds, capable of firing at %d rounds per second.", [fighter fighterType], [fighter numberOfBullets], [fighter numberOfBulletsFiredPerSecond]];
        fighterLabel.textColor = [UIColor blackColor];
        fighterLabel.textAlignment = NSTextAlignmentLeft;
        fighterLabel.numberOfLines = 4;
    }
    
    [self.view addSubview:fighterLabel];
    
    //Name of function pulling from the BomberAircraft class and setting the values for each property.
    BomberAircraft * bomber = (BomberAircraft*)[AircraftFactory createAircraft:BOMBER];
    
    if (bomber !=nil)
    {
        [bomber setNumberOfClusterBombs:200];
        [bomber setNumberOfNuclearBombs:10];
        [bomber setNumberOfBombRuns:20];
    }
    
    //Creation of bomber label to be displayed
    UILabel * bomberLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 140.0f, self.view.frame.size.width, 140.0f)];
    {
        bomberLabel.text = [NSString stringWithFormat:@"For this mission, the bomber will carry %d cluster bombs and %d nuclear bombs, making %d total bomb runs.", [bomber numberOfClusterBombs], [bomber numberOfNuclearBombs], [bomber numberOfBombRuns]];
        bomberLabel.textColor = [UIColor blackColor];
        bomberLabel.textAlignment = NSTextAlignmentLeft;
        bomberLabel.numberOfLines = 4;
    }
    
    [self.view addSubview:bomberLabel];
    
    //Name of function pulling from the TankerAircraft class and setting the values for each property.
    TankerAircraft * tanker = (TankerAircraft*)[AircraftFactory createAircraft:TANKER];
    
    if (tanker !=nil)
    {
        [tanker setFuelCapacity:250000];
        [tanker setNumberOfDistributedFuelGallons:25000];
        [tanker setNumberOfRefuelCycles:25];
    }
    
    //Creation of tanker label to be displayed
    UILabel * tankerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 280.0f, self.view.frame.size.width, 160.0f)];
    {
        tankerLabel.text = [NSString stringWithFormat:@"For this mission, the tanker will carry %d gallons of fuel, distributing a total number of %d gallons of fuel to other aircraft for a total number of %d refuel cycles.", [tanker fuelCapacity], [tanker numberOfDistributedFuelGallons], [tanker numberOfRefuelCycles]];
        tankerLabel.textColor = [UIColor blackColor];
        tankerLabel.textAlignment = NSTextAlignmentLeft;
        tankerLabel.numberOfLines = 5;
    }
    
    [self.view addSubview:tankerLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
