//
//  ViewController.m
//  DemoOfDrawLine
//
//  Created by 蔡成汉 on 15/3/10.
//  Copyright (c) 2015年 JW. All rights reserved.
//

#import "ViewController.h"
#import "MyDrawLineView.h"

@interface ViewController ()
{
    MyDrawLineView *drawLineView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initiaNav];
    
    drawLineView = [[MyDrawLineView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 64)];
    [self.view addSubview:drawLineView];
}

-(void)initiaNav
{
    //title
    NSMutableDictionary *attributesDic = [NSMutableDictionary dictionary];
    [attributesDic setValue:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [attributesDic setValue:[UIFont systemFontOfSize:18] forKey:NSFontAttributeName];
    self.navigationItem.title = @"画线";
    self.navigationController.navigationBar.titleTextAttributes = attributesDic;
    
    //leftBtn
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"重绘" style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemIsTouch:)];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    //rightBtn
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"撤销" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemIsTouch:)];
    NSMutableDictionary *rightAttributesDic = [NSMutableDictionary dictionary];
    [rightAttributesDic setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [rightAttributesDic setObject:[UIFont systemFontOfSize:16] forKey:NSFontAttributeName];
    [rightBarButtonItem setTitleTextAttributes:rightAttributesDic forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

-(void)leftBarButtonItemIsTouch:(UIBarButtonItem *)barButtonItem
{
    [drawLineView clearLine];
}

-(void)rightBarButtonItemIsTouch:(UIBarButtonItem *)barButtonItem
{
    [drawLineView goBack];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
