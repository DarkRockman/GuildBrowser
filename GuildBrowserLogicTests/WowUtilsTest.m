//
//  WowUtilsTest.m
//  GuildBrowser
//
//  Created by Michael Andrade on 19/03/14.
//  Copyright (c) 2014 Charlie Fulton. All rights reserved.
//

#import "WowUtilsTest.h"
#import "WoWUtils.h"

@implementation WowUtilsTest

- (void) testCharacterClassNameLookup
{
    STAssertEqualObjects(@"Warrior", [WoWUtils classFromCharacterType:1], @"ClassTyoe should be warrior");
    STAssertFalse([@"Mage" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
    STAssertTrue([@"Paladin" isEqualToString:[WoWUtils classFromCharacterType:2]], nil);
                  
    //add the rest as an exercise
}

- (void) testRaceTypeLookup
{
    STAssertEqualObjects(@"Human", [WoWUtils raceFromRaceType:1], nil);
    STAssertEqualObjects(@"Orc", [WoWUtils raceFromRaceType:2], nil);
    STAssertFalse([@"Night Elf" isEqualToString:[WoWUtils raceFromRaceType:45]], nil);
    
    //add the rest as an exercise
}

- (void) testQualityLookup
{
    STAssertEquals(@"Grey", [WoWUtils qualityFromQualityType:1], nil);
    STAssertFalse([@"Purple" isEqualToString:[WoWUtils qualityFromQualityType:10]], nil);
    //add the rest as an exercise
}

@end
