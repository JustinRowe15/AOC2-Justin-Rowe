//
//  AircraftBase.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "AircraftBase.h"

@implementation AircraftBase

//synthesize properties from the aircraftBase.h file
@synthesize aircraftType, pilotName, homeBase, fuelCapacity, gallonsUsedPerHour;

//established initial function defining values for each property
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setAircraftType:@"A-10"];
        [self setPilotName:@"Captain Jones"];
        [self setHomeBase:@"Home Base"];
        [self setFuelCapacity:10000];
        [self setGallonsUsedPerHour:2000];
    }
    return self;
};

-(void)displayAircraft
{
    NSLog(@"The Type of Aircraft is %@ with a fuel capacity of %d, piloted by %@ and is stationed at %@", aircraftType, fuelCapacity, pilotName, homeBase);
};

@end
