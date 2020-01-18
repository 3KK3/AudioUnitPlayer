//
//  AVAudioSession+RouteUtils.h
//  AUPlayerDemo
//
//  Created by 芝麻酱 on 2020/1/17.
//  Copyright © 2020 芝麻酱. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AVAudioSession (RouteUtils)

- (BOOL)usingBlueTooth;

- (BOOL)usingWiredMicrophone;

- (BOOL)shouldShowEarphoneAlert;

@end

NS_ASSUME_NONNULL_END
