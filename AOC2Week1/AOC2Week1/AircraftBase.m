//
//  AircraftBase.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "AircraftBase.h"

@implementation AircraftBase

@synthesize aircraftType, pilotName, homeBase, fuelCapacity, gallonsUsedPerHour;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setAircraftType:nil];
        [self setPilotName:nil];
        [self setHomeBase:nil];
        [self setFuelCapacity:nil];
        [self setGallonsUsedPerHour:nil];
    }
    return self;
};

-(void)displayAircraft
{
    NSLog(@"The Type of Aircraft is %@ with a fuel capacity of %d, piloted by %@ and is stationed at %@", aircraftType, fuelCapacity, pilotName, homeBase);
};

@end
