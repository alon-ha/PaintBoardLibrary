//
//  RNTPaintBoardManager.m
//  RNPaintBoardLibrary
//
//  Created by Alon Haiut on 10/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNPaintBoardLibrary-Swift.h"
#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>

@interface RNTPaintBoardManager : RCTViewManager
@property (nonatomic, strong) PaintBoard *paintBoard;
@end

@implementation RNTPaintBoardManager
@synthesize paintBoard;

RCT_EXPORT_MODULE()

- (UIView *)view
{
    if (!self.paintBoard) {
        self.paintBoard = [[PaintBoard alloc] initWithIrrelevantParameter:YES];
        return self.paintBoard;
    }
    
    return self.paintBoard;
}

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(clear) {
    [self.paintBoard clear];
}

RCT_EXPORT_METHOD(save) {
    [self.paintBoard save];
}

RCT_EXPORT_METHOD(load) {
    [self.paintBoard load];
}

@end
