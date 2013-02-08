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
    return [[FighterAircraft alloc] init];
}

@end