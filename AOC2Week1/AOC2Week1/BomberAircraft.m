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

@synthesize numberOfClusterBombs, numberOfNuclearBombs, numberOfBombRuns;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberOfClusterBombs:50];
        [self setNumberOfNuclearBombs:5];
        [self setNumberOfBombRuns:10];
    }
    return self;
};

-(void)displayAircraft
{
    [self setNumberOfClusterBombs:(numberOfClusterBombs % numberOfBombRuns)];
    [self setAircraftType:@"B-1"];
    NSLog(@"The %@ bomber will release %d of bombs per run.", self.aircraftType, self.numberOfClusterBombs);
};

@end
