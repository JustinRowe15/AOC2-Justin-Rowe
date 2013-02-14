//
//  AircraftFactory.h
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FighterAircraft.h"
#import "BomberAircraft.h"
#import "TankerAircraft.h"
#import "AircraftBase.h"

@interface AircraftFactory : NSObject

//factory createAircraft function
+(AircraftBase*)createAircraft: (int)aircraftModel;

@end
