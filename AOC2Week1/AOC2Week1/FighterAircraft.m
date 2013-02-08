//
//  FighterAircraft.m
//  AOC2Week1
//
//  Created by Justin Rowe on 2/7/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "FighterAircraft.h"
#import "AircraftBase.h"

@implementation FighterAircraft

@synthesize numberOfBulletsFiredPerSecond, numberOfBullets, fighterType;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setNumberOfBullets:10000];
        [self setNumberOfBulletsFiredPerSecond:100];
        [self setFighterType:F15];
    }
    return self;
};

-(void)displayAircraft
{
    [self setNumberOfBullets:(numberOfBullets / numberOfBulletsFiredPerSecond)];
    [self setPilotName:@"Captain Smith"];
    NSLog(@"This jet flown by %@ will use all of it's bullets in %d seconds.", self.pilotName, self.numberOfBullets);
};

@end
