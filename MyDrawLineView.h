//
//  MyDrawLineView.h
//  DemoOfDrawLine
//
//  Created by 蔡成汉 on 15/3/10.
//  Copyright (c) 2015年 JW. All rights reserved.
//

/**
 *  画布
 */

#import <UIKit/UIKit.h>

@interface MyDrawLineView : UIView

/**
 *  线条的宽度
 */
@property (nonatomic , assign) CGFloat lineWidth;

/**
 *  线条的颜色
 */
@property (nonatomic , strong) UIColor *lineColor;

/**
 *  清空所有线条
 */
-(void)clearLine;

/**
 *  撤销，回到上一层
 */
-(void)goBack;


@end
