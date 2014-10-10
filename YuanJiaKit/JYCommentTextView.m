//
//  JYCommentTextView.m
//  OneToOne
//
//  Created by Herui on 9/3/14.
//  Copyright (c) 2014 jiayuan. All rights reserved.
//

#import "JYCommentTextView.h"

@interface JYCommentTextView ()

@property (nonatomic, retain) UILabel *placeHolderLabel;

@end

@implementation JYCommentTextView

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.font = [UIFont systemFontOfSize:14];
        label.text = @"";
        label.enabled = NO;
        label.backgroundColor = [UIColor clearColor];
        label.hidden = YES;
        self.placeHolderLabel = label;
        [self addSubview:self.placeHolderLabel];
        
        self.autoresizingMask = UIViewAutoresizingFlexibleHeight |UIViewAutoresizingFlexibleWidth;
        self.scrollEnabled = YES;
        self.returnKeyType = UIReturnKeyDone;
        // textView.enablesReturnKeyAutomatically = YES;
        if (SYSTEM_IS_IOS7) {
            self.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
        }
        self.font = [UIFont systemFontOfSize:14];
        self.dataDetectorTypes = UIDataDetectorTypeNone;
        
        // 添加观察
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}

- (void)textChanged:(NSNotification *)notification
{
    if (!self.placeHolder) {
        return;
    }
    if (self.text.length == 0) {
        self.placeHolderLabel.hidden = NO;
    } else {
        self.placeHolderLabel.hidden = YES;
    }
    
}

// setter method of _placeHolder
- (void)setPlaceHolder:(NSString *)placeHolder
{
    if (_placeHolder == placeHolder) {
        return;
    }
    _placeHolder = nil;
    _placeHolder = placeHolder;
    self.placeHolderLabel.hidden = NO;
    self.placeHolderLabel.text = placeHolder;
    
    // 根据开发需要, 可以根据placeHolder的长度动态设置frame
    self.placeHolderLabel.frame = CGRectMake(3, 5, self.frame.size.width, 20);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
