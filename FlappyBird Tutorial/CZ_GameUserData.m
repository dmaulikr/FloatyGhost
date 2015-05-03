//
//  CZ_GameUserData.m
//  FlappyBird Tutorial
//
//  Created by Michael Critz on 5/3/15.
//  Copyright (c) 2015 Sam Keene. All rights reserved.
//

#import "CZ_GameUserData.h"

@implementation CZ_GameUserData

@synthesize score;

- (NSUInteger)score {
	NSLog(@"scrore: %lu", score);
	return score;
}

- (NSUInteger)increaseScore:(NSUInteger)amount {
	self.score += amount;
	return self.score;
}

- (CZ_GameUserData *)init {
	self = [super init];
	score = 0;
	return self;
}

@end
