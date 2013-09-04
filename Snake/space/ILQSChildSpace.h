//
//  ILQSChildSpace.h
//  Snake
//
//  Created by Ariel on 2013-09-03.
//  Copyright (c) 2013 Liquid Sparks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ILQSAdjacentSpace.h"

@protocol ILQSTransformation;

@protocol ILQSChildSpace <ILQSAdjacentSpace>

- (NSObject<ILQSAdjacentSpace> *)parent;
- (NSObject<ILQSTransformation> *)transformToParent;

@end
