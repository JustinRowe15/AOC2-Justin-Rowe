//
//  TankerAircraft.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "TankerAircraft.h"
#import "AircraftBase.h"

@implementation TankerAircraft

-(id)init
{
    if (self = [super init])
    {
        [self aircraftAttributes:@"KC-10" pilotName:@"Captain Jones" homeBase:@"Hawk Air Base" fuelCapacity:20000];
    }
    return self;
}

@end
