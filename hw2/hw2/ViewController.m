//
//  ViewController.m
//  hw2
//
//  Created by MIAFOREVER on 2019/9/10.
//  Copyright © 2019 MIAFOREVER. All rights reserved.
//

#import "ViewController.h"
#import "Language.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Language *learn_language;
    NSUInteger i = arc4random() % 4;
    if(i == 0)
    {
        learn_language = [[English new] init];
    }
    else if(i == 1)
    {
        learn_language = [[Japanese new] init];
    }
    else if(i == 2)
    {
        learn_language = [[German new] init];
    }
    else
    {
        learn_language = [[Spanish new] init];
    }
    [learn_language learnOneUnit];
}


@end
