//
//  ViewController.m
//  GenericComponents
//
//  Created by kipen on 2018/2/20.
//  Copyright © 2018年 kipen. All rights reserved.
//

#import "ViewController.h"
#import "globalhead.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 字典转属性声明
-(void)propertyTrans{
    
    NSString * path = [[NSBundle mainBundle]pathForResource:@"a.plist" ofType:nil];
    NSDictionary * dic = [NSDictionary dictionaryWithContentsOfFile:path];
    [NSObject propertyTransform:dic];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
