//
//  FighterAircraft.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "FighterAircraft.h"
#import "AircraftBase.h"

@implementation FighterAircraft

-(id)init
{
    if (self = [super init])
    {
        [self aircraftAttributes:@"F-16" pilotName:@"Captain Smith" homeBase:@"Falcon Air Base" fuelCapacity:5000];
    }
    return self;
}

@end
