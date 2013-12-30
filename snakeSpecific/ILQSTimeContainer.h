//
//  ILQSTimeContainer.h
//  Snake
//
//  Created by Ariel School on 2013-12-29.
//  Copyright (c) 2013 Liquid Sparks. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ILQSTimeContainer <NSObject>

- (void)setTimeSinceFirstResume:(double)timeSinceFirstResume;
- (void)setTimeSinceLastUpdate:(double)timeSinceLastUpdate;

@end
