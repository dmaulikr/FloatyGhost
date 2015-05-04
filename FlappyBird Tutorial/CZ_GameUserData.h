//
//  CZ_GameUserData.h
//  FlappyBird Tutorial
//
//  Created by Michael Critz on 5/3/15.
//  Copyright (c) 2015 Sam Keene. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZ_GameUserData : NSObject

@property (nonatomic) NSUInteger score;
@property (nonatomic) NSUInteger topScore;
- (NSUInteger)increaseScore:(NSUInteger)amount;
- (CZ_GameUserData *)init;

@end
