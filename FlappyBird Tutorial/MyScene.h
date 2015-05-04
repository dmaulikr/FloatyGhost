//
//  MyScene.h
//  FlappyBird Tutorial
//

//  Copyright (c) 2014 Sam Keene. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@protocol FlappyGame <NSObject>

- (void)updateCount:(NSUInteger)count;
- (void)startGame;
- (void)endGameWithText:(NSString *)displayText
				andText:(NSString *)supplementalText;

@end

@interface MyScene : SKScene

@property (nonatomic)NSObject <FlappyGame> *gameDelegate;

@end
