//
//  ViewController.m
//  TestLogComponet
//
//  Created by gao on 13-6-22.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:1];
    [btn setTitle:@"exception" forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(0, 0, 100, 100)];
    [btn addTarget:self action:@selector(produceException) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


/**
 *  test case method
 */
-(void)produceException{
    NSMutableArray *array = [NSArray arrayWithObjects:@"1",nil];
    [array removeObjectAtIndex:0];
}
@end
