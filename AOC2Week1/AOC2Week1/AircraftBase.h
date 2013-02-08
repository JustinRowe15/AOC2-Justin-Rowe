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
    NSString * aircraftType;
    NSString * pilotName;
    NSString * homeBase;
    int fuelCapacity;
}

-(void)aircraftAttributes:(NSString*)type pilotName:(NSString*)name homeBase:(NSString*)base fuelCapacity:(int)fuel;

@end
