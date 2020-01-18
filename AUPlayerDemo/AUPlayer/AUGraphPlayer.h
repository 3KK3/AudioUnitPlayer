//
//  AUGraphPlayer.h
//  AUPlayerDemo
//
//  Created by 芝麻酱 on 2020/1/18.
//  Copyright © 2020 芝麻酱. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AUGraphPlayer : NSObject

- (instancetype)initWithFilePath: (NSString *)path;

- (BOOL)play;

- (void)stop;

- (void)setInputSource: (BOOL)isAcc;

@end

NS_ASSUME_NONNULL_END
