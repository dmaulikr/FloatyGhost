//
//  ViewController.h
//  FlappyBird Tutorial
//

//  Copyright (c) 2014 Sam Keene. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "MyScene.h"

@interface ViewController : UIViewController <FlappyGame>

@property (weak, nonatomic) IBOutlet SKView *gameView;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end
