//
//  ViewController.m
//  AUPlayerDemo
//
//  Created by 芝麻酱 on 2020/1/16.
//  Copyright © 2020 芝麻酱. All rights reserved.
//

#import "ViewController.h"
#import "CommonUtil.h"
#import "AUGraphPlayer.h"

@interface ViewController ()
{
    AUGraphPlayer*                  graphPlayer;
}
@property(nonatomic, assign) BOOL   isAcc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _isAcc = NO;
}

- (IBAction)playMusic:(id)sender {
    NSLog(@"Play Music...");
    if(graphPlayer) {
        [graphPlayer stop];
    }
    NSString* filePath = [CommonUtil bundlePath:@"MiAmor.mp3"];
//    NSString* filePath = [CommonUtil bundlePath:@"0fe2a7e9c51012210eaaa1e2b103b1b1.m4a"];
    graphPlayer = [[AUGraphPlayer alloc] initWithFilePath:filePath];
    [graphPlayer play];
}

- (IBAction)switchSource:(id)sender {
    _isAcc = !_isAcc;
    [graphPlayer setInputSource:_isAcc];
}

- (IBAction)stopMusic:(id)sender {
    NSLog(@"Stop Music...");
    [graphPlayer stop];
}


@end
