//
//  FighterAircraft.h
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AircraftBase.h"

@interface FighterAircraft : AircraftBase

{
    int fighterEnum;
}

typedef enum {
    F15,
    F16,
    A10
} fighterEnum;

//three variables or properties for this fighter class
@property int numberOfBulletsFiredPerSecond;
@property int numberOfBullets;
@property int fighterType;

@end
