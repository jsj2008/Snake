//
//  LQSGLFileUtils.m
//  Snake
//
//  Created by Ariel on 2013-08-12.
//  Copyright (c) 2013 Liquid Sparks. All rights reserved.
//

#import "LQSGLFileUtils.h"
#import <OpenGLES/ES2/gl.h>

@implementation LQSGLFileUtils

+ (const GLchar *)loadVertexShaderSource:(NSString *)resourceName
{
    NSStringEncoding *vertexShaderSourceEncoding = nil;
    NSError *vertexShaderError;
    NSString *vertexShaderFilePath = [[NSBundle mainBundle] pathForResource:resourceName ofType:@"vsh"];
    NSAssert(vertexShaderFilePath != nil, @"Could not find file %@.%@", resourceName, @"vsh");
    NSString *vertexShaderSource = [NSString stringWithContentsOfFile:vertexShaderFilePath usedEncoding:vertexShaderSourceEncoding error:&vertexShaderError];
    NSAssert(vertexShaderSource != nil, @"Could not load file %@.%@", resourceName, @"vsh");
    return [vertexShaderSource UTF8String];

}

+ (const GLchar *)loadFragmentShaderSource:(NSString *)resourceName
{
    NSStringEncoding *fragmentShaderSourceEncoding = nil;
    NSError *fragmentShaderError;
    NSString *fragmentShaderFilePath = [[NSBundle mainBundle] pathForResource:resourceName ofType:@"fsh"];
    NSAssert(fragmentShaderFilePath != nil, @"Could not find file %@.%@", resourceName, @"fsh");
    NSString *fragmentShaderSource = [NSString stringWithContentsOfFile:fragmentShaderFilePath usedEncoding:fragmentShaderSourceEncoding error:&fragmentShaderError];
    NSAssert(fragmentShaderSource != nil, @"Could not load file %@.%@", resourceName, @"vsh");
    return [fragmentShaderSource UTF8String];

}

@end
