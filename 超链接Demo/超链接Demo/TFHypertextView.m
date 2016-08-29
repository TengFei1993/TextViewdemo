//
//  TFHypertextView.m
//  超链接Demo
//
//  Created by yangxiaofei on 16/8/29.
//  Copyright (c) 2016年 yangxiaofei. All rights reserved.
//

#import "TFHypertextView.h"

@interface TFHypertextView ()

@end

@implementation TFHypertextView

+ (instancetype) createViewWithAttributedText:(NSString *)text LinkText:(NSString *)linkText fontSize:(CGFloat)fontsize color:(UIColor *)ttColor type:(TFHypertextViewType)textviewType
{
    TFHypertextView *view = [[self alloc] init];
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:text];
    [view setSelectable:YES];
    //    textview.dataDetectorTypes = UIDataDetectorTypeLink;
    [view setEditable:NO];
    
    //添加样式
    NSRange range = [text rangeOfString:linkText];
    
    //超链接的文本颜色
    view.tintColor = ttColor;
    [attStr addAttribute:NSLinkAttributeName
                          value:@""
                          range:range];
    
    //如果需要可以增加下划线
    if (textviewType == TFHypertextViewTypeLine) {
        [attStr addAttribute:NSUnderlineStyleAttributeName
                       value:[NSNumber numberWithInteger:NSUnderlineStyleSingle]
                       range:range];
    }
    
    
    view.font = [UIFont systemFontOfSize:fontsize];
    view.attributedText = attStr;
    return view;
}
@end