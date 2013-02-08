//
//  AircraftFactory.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "AircraftFactory.h"

@implementation AircraftFactory

+(AircraftBase*)createAircraft: (int)aircraftModel;
{
    if (aircraftModel == FIGHTER) {
    return [[FighterAircraft alloc] init];
    } else if (aircraftModel == BOMBER) {
        return [[BomberAircraft alloc] init];
    } else if (aircraftModel == TANKER) {
        return [[TankerAircraft alloc] init];
    }
    else return nil;
}

@end