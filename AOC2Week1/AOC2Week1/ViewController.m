//
//  ViewController.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/5/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "ViewController.h"
#import "AircraftBase.h"
#import "FighterAircraft.h"
#import "BomberAircraft.h"
#import "TankerAircraft.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    FighterAircraft * fighter = (FighterAircraft*)[AircraftFactory createAircraft:FIGHTER];
    
    if (fighter !=nil)
    {
        [fighter setFighterType:F16];
        [fighter setNumberOfBullets:20000];
        [fighter setNumberOfBulletsFiredPerSecond:100];
    };
    
    BomberAircraft * bomber = (BomberAircraft*)[AircraftFactory createAircraft:BOMBER];
    
    if (bomber !=nil)
    {
        [bomber setNumberOfClusterBombs:200];
        [bomber setNumberOfNuclearBombs:10];
        [bomber setNumberOfBombRuns:20];
    }
    
    TankerAircraft * tanker = (TankerAircraft*)[AircraftFactory createAircraft:TANKER];
    
    if (tanker !=nil)
    {
        [tanker setFuelCapacity:250000];
        [tanker setNumberOfDistributedFuelGallons:25000];
        [tanker setNumberOfRefuelCycles:25];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
