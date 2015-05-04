//
//  CZ_GameUserData.m
//  FlappyBird Tutorial
//
//  Created by Michael Critz on 5/3/15.
//  Copyright (c) 2015 Sam Keene. All rights reserved.
//

#import "CZ_GameUserData.h"

@interface CZ_GameUserData()

@property (nonatomic)NSUserDefaults *userDefaults;

@end

@implementation CZ_GameUserData

@synthesize score = _score;
@synthesize topScore = _topScore;

- (NSUInteger)compareUInt:(NSUInteger)firstNumber toUInt:(NSUInteger)secondNumber {
	NSUInteger largerInt = firstNumber > secondNumber ? firstNumber : secondNumber;
	return largerInt;
}

- (NSUInteger)topScore {
	if (!_topScore) {
		NSNumber *savedTopScore = (NSNumber *)[_userDefaults valueForKey:@"topScore"];
		
		if (!savedTopScore) {
			_topScore = 0;
		}
	}
	
	if (self.score) {
		_topScore = [self compareUInt:_topScore
							   toUInt:self.score];
	}
	return _topScore;
}

- (void)setTopScore:(NSUInteger)topScore {
	_topScore = topScore;
	[_userDefaults setObject:[NSNumber numberWithUnsignedInteger:topScore]
					  forKey:@"topScore"];
	NSLog(@"Top Score: %lu", topScore);
}

- (void)setScore:(NSUInteger)score {
	_score = score;
	[_userDefaults setObject:[NSNumber numberWithUnsignedInteger:_score]
					  forKey:@"score"];
	self.topScore = [self compareUInt:_topScore
						   toUInt:score];
}

- (NSUInteger)score {
	NSLog(@"scrore: %lu", _score);
	return _score;
}

- (NSUInteger)increaseScore:(NSUInteger)amount {
	self.score += amount;
	return self.score;
}

- (CZ_GameUserData *)init {
	self = [super init];
	_userDefaults = [NSUserDefaults standardUserDefaults];

	NSNumber *savedScore = (NSNumber *)[_userDefaults valueForKey:@"score"];
	_score = savedScore.unsignedIntegerValue;
	
	return self;
}

@end
