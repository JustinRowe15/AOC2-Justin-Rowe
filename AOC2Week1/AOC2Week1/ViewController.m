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
    FighterAircraft * fighter = [[FighterAircraft alloc] init];
    if (fighter != nil)
    {
        [fighter displayAircraft];
    }
    BomberAircraft * bomber = [[BomberAircraft alloc] init];
    if (bomber != nil)
    {
        [bomber displayAircraft];
    }
    TankerAircraft * tanker = [[TankerAircraft alloc] init];
    if (tanker != nil)
    {
        [tanker displayAircraft];
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
