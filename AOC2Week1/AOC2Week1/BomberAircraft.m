//
//  BomberAircraft.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "BomberAircraft.h"
#import "AircraftBase.h"

@implementation BomberAircraft

-(id)init
{
    if (self = [super init])
    {
        [self aircraftAttributes:@"B-2" pilotName:@"Captain Johnson" homeBase:@"Eagle Air Base" fuelCapacity:10000];
    }
    return self;
}

@end
