//
//  ViewController.m
//  XLImagePageViewDemo
//
//  Created by Eiwodetianna on 16/1/28.
//  Copyright © 2016年 Eiwodetianna. All rights reserved.
//

#import "ViewController.h"
#import "XLImagePageView.h"

@interface ViewController ()
<
XLImagePageViewDelegate
>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    XLImagePageView *xlImagePageView = [[XLImagePageView alloc] initWithFrame:self.view.bounds];
    xlImagePageView.imageArray = @[[UIImage imageNamed:@"0.jpg"], [UIImage imageNamed:@"1.jpg"], [UIImage imageNamed:@"2.jpg"]];
    xlImagePageView.delegate = self;
    [self.view addSubview:xlImagePageView];
}

- (void)XLImagePageView:(XLImagePageView *)imagePageView didSelectPageAtIndex:(NSInteger)pageIndex {
    NSLog(@"selected %ld", pageIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
