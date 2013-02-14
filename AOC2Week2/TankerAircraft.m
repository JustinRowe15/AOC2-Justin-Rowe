//
//  TankerAircraft.m
//  AOC2Week2
//
//  Created by Justin Rowe on 2/14/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "TankerAircraft.h"
#import "AircraftBase.h"

@implementation TankerAircraft

//synthesize properties from tankerAircraft.h file
@synthesize numberOfDistributedFuelGallons, numberOfRefuelCycles;

//established initial function defining values for each property
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setFuelCapacity:80000];
        [self setNumberOfDistributedFuelGallons:10000];
        [self setNumberOfRefuelCycles:6];
    }
    return self;
};

//displayAircraft function inherited from the base class
-(void)displayAircraft
{
    [self setFuelCapacity:(numberOfDistributedFuelGallons * numberOfRefuelCycles)];
    NSLog(@"This tanker has the capacity of %d gallons.", self.fuelCapacity);
};

@end
