//
//  MyCollectionViewCell.m
//  Animation
//
//  Created by Eiwodetianna on 15/6/19.
//  Copyright © 2015年 jinxinliang. All rights reserved.
//

#import "XLImagePageDetailCell.h"

@interface XLImagePageDetailCell ()<UIScrollViewDelegate>


@end

@implementation XLImagePageDetailCell

- (nonnull instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.scrollView = [[UIScrollView alloc] initWithFrame:self.contentView.frame];
        
        _scrollView.contentSize = self.contentView.frame.size;
        self.scrollView.delegate = self;
        [self.contentView addSubview:_scrollView];
        
        self.contentImageView = [[UIImageView alloc] initWithFrame:self.contentView.frame];
        _contentImageView.userInteractionEnabled = YES;
        [_scrollView addSubview:_contentImageView];
        
        UITapGestureRecognizer *tapGestuerRecogniazer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(p_contentImageViewSelected)];
        [_contentImageView addGestureRecognizer:tapGestuerRecogniazer];
    }
    return self;
}

- (void)p_contentImageViewSelected {
    
    [self.delegate XLImagePageDetailCellDidSelectedWithIndex:self.tag - 1000];
}

@end
