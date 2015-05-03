//
//  MyScene.h
//  FlappyBird Tutorial
//

//  Copyright (c) 2014 Sam Keene. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@protocol FlappyGame <NSObject>

- (void)updateCount:(NSUInteger)count;

@end

@interface MyScene : SKScene

@property (nonatomic)NSObject <FlappyGame> *gameDelegate;

@end
