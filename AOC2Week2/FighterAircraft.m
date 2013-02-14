//
//  FighterAircraft.m
//  AOC2Week2
//
//  Created by Justin Rowe on 2/14/13.
//  Copyright (c) 2013 Justin Rowe. All rights reserved.
//

#import "FighterAircraft.h"
#import "AircraftBase.h"

@implementation FighterAircraft

//synthesize properties from fighterAircaft.h file
@synthesize numberOfBulletsFiredPerSecond, numberOfBullets, fighterType;

//established initial function defining values for each property
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

//displayAircraft function inherited from the base class
-(void)displayAircraft
{
    [self setNumberOfBullets:(numberOfBullets / numberOfBulletsFiredPerSecond)];
    [self setPilotName:@"Captain Smith"];
    NSLog(@"This jet flown by %@ will use all of it's bullets in %d seconds.", self.pilotName, self.numberOfBullets);
};

@end
