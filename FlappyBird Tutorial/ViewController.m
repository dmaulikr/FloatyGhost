//
//  ViewController.m
//  FlappyBird Tutorial
//
//  Created by Sam Keene on 2/10/14.
//  Copyright (c) 2014 Sam Keene. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    _gameView.showsFPS = NO;
    _gameView.showsNodeCount = NO;
	
    // Create and configure the scene.
    MyScene *scene = [MyScene sceneWithSize:_gameView.bounds.size];
    scene.scaleMode = SKSceneScaleModeAspectFill;
	scene.gameDelegate = self;
    
    // Present the scene.
    [_gameView presentScene:scene];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

// MyScene Protocol
- (void)updateCount:(NSUInteger)count {
	self.scoreLabel.text = [NSString stringWithFormat:@"Score: %lu", count];
}

- (void)startGame {
	self.modalShader.hidden = YES;
	self.endGameLabel.hidden = YES;
	self.endGameButton.hidden = YES;
	self.scoreLabel.hidden = NO;
}

- (void)endGame:(NSString *)displayText {
	self.modalShader.hidden = NO;
	self.endGameButton.hidden = NO;
	self.endGameLabel.text = displayText;
	self.endGameLabel.hidden = NO;
	self.scoreLabel.hidden = YES;
}

- (IBAction)endGameButtonPressed:(UIButton *)sender {
	[self startGame];
}
@end
