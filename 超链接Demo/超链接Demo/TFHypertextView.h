//
//  TFHypertextView.h
//  超链接Demo
//
//  Created by yangxiaofei on 16/8/29.
//  Copyright (c) 2016年 yangxiaofei. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    TFHypertextViewTypeDefault = 0,
    TFHypertextViewTypeLine,
}TFHypertextViewType;

@interface TFHypertextView : UITextView

+ (instancetype) createViewWithAttributedText:(NSString *)text LinkText:(NSString *)linkText fontSize:(CGFloat) fontsize color:(UIColor *)ttColor type:(TFHypertextViewType) textviewType;

@end
