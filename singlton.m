//
//  singlton.m
//  test
//
//  Created by pit on 25.04.14.
//  Copyright (c) 2014 pit. All rights reserved.
//

#import "singlton.h"

static singlton *g_singl;
@implementation singlton


+(void) initialize {
    if ([singlton class] == self) {
        g_singl = [self new];
    }
}

+(singlton*) sharedInstance  {
    return g_singl;
}


+ (id) allocWithZone:(struct _NSZone *)zone {
    if (g_singl && [singlton class] == self) {
        [NSException raise:NSGenericException format:@"aaaa"];
    }
    return [super allocWithZone:zone];
}

-(id) forwardingTargetForSelector:(SEL)aSelector {
    return delegate;
}

-(void) forwardInvocation:(NSInvocation *)anInvocation {
    [anInvocation delete:delegate];
}

@end
