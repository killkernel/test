//
//  singlton.h
//  test
//
//  Created by pit on 25.04.14.
//  Copyright (c) 2014 pit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singlton : NSObject {
    id delegate;
}
+(singlton*) sharedInstance;
@end
