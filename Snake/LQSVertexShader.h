//
//  LQSVertexShader.h
//  Snake
//
//  Created by Ariel on 2013-08-02.
//  Copyright (c) 2013 Liquid Sparks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/EAGL.h>
#import "ILQSGLShader.h"

@interface LQSVertexShader : NSObject <ILQSGLShader>

- (id)initWithSource:(const char*)source;
- (id)initWithSource:(const char*)source context:(EAGLContext *)context;
- (id)initWithSource:(const char*)source sharegroup:(EAGLSharegroup *)sharegroup;

@end
