//
//  ViewController.m
//  test
//
//  Created by pit on 23.04.14.
//  Copyright (c) 2014 pit. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()
- (IBAction)Click2:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *m_click2;
- (IBAction)Click1:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *m_button1;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Click1:(id)sender {
  //  NSMutableSet *set = [NSMutableSet setWithObjects:@"a", @"b",nil];
 /*   for (NSString *str in [[set copy] autorelease]) {
        [set removeObject:str];
    }
  */
}
- (IBAction)Click2:(id)sender {
    Class _class = NSClassFromString(@"NSView");
    if (Nil == _class) {
        return ;
    }
    unsigned int _i;
    Ivar *_var = class_copyIvarList(_class, &_i);
    free(_var);
    id view = [_class new];
    int _count = objc_getClassList(NULL, 0);
 //   Class _cl = objc_allocateClassPair(view->isa, "Fake", 0);
}
@end
