//
//  AircraftBase.h
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AircraftBase : NSObject

{
    int aircraftEnum;
}

//custom typedef for three different types of aircraft
typedef enum {
    FIGHTER,
    BOMBER,
    TANKER
} aircraftEnum;

//properties to define all aircrafts in the base class
@property NSString * aircraftType;
@property NSString * pilotName;
@property NSString * homeBase;
@property int fuelCapacity;
@property int gallonsUsedPerHour;

//initialize
-(id)init;

//display aircraft information
-(void)displayAircraft;

@end
