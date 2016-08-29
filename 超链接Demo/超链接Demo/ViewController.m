//
//  ViewController.m
//  超链接Demo
//
//  Created by yangxiaofei on 16/8/29.
//  Copyright (c) 2016年 yangxiaofei. All rights reserved.
//
//本demo的效果是实现一个简单的文本超链接效果，以后用的时候可以直接使用.
//自定义封装一个UITextView，当想要使用超文本文字效果的话可以添加超文本文字效果，后期可以陆续添加其他的效果

#import "ViewController.h"
#import "TFHypertextView.h"

@interface ViewController ()<UITextViewDelegate>

@property (nonatomic,weak) TFHypertextView *vview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TFHypertextView *view = [TFHypertextView createViewWithAttributedText:@"我已经阅读并接受《EasyFair服务协议》" LinkText:@"《EasyFair服务协议》" fontSize:13 color:[UIColor lightGrayColor] type:TFHypertextViewTypeDefault];
    _vview = view;
    view.delegate = self;
    view.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:view];
}

- (BOOL) textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    NSLog(@"点击了超链接");
    //点击时改变文字颜色
//    _vview.tintColor = [UIColor redColor];
    return YES;
}

@end
