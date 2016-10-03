//
//  ViewController.m
//  testHeightDemo
//
//  Created by Dee on 16/9/30.
//  Copyright © 2016年 Dee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic, strong) UITextView  *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITextView *textview = [[UITextView alloc] init];
    textview.frame = CGRectMake(0, 0, 300, 300);
    [self.view addSubview:textview];
    self.textView = textview;

    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:@"计算" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 320, 60, 40);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(calcuateSize) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)calcuateSize {
    
    CGFloat maxWidth = [[UIScreen mainScreen] bounds].size.width - 24;
    NSDictionary *dic = @{NSFontAttributeName:[UIFont systemFontOfSize:12]};
    CGSize size = [self.textView.text boundingRectWithSize:CGSizeMake(maxWidth, 10000) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:dic context:nil].size;
    NSLog(@"%@",self.textView.text);
    NSLog(@"----------------");
    NSLog(@"width:%f, height:%f",size.width,size.height);
    
}




@end
