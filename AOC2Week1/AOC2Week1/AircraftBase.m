//
//  AircraftBase.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "AircraftBase.h"

@implementation AircraftBase

-(void)aircraftAttributes:(NSString*)type pilotName:(NSString*)name homeBase:(NSString*)base fuelCapacity:(int)fuel;
{
    aircraftType = type;
    pilotName = name;
    homeBase = base;
    fuelCapacity = fuel;
}

@end
