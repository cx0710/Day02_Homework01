//
//  FirstViewController.m
//  Day02_Homework01
//
//  Created by student on 15-8-11.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *viewBack = [[UIView alloc] initWithFrame:CGRectMake(0, 0,320, 64)];
    viewBack.backgroundColor = [UIColor colorWithRed:246/255.0 green:245/255.0 blue:246/255.0 alpha:1.0];
    [self.view addSubview:viewBack];
    
    //左边图片
    UIImageView *imageViewLeft = [[UIImageView alloc] initWithFrame:CGRectMake(0, 26, 32, 32)];
    imageViewLeft.image = [UIImage imageNamed:@"first1.png"];
    [viewBack addSubview:imageViewLeft];
    
    //中间标题
    UILabel *labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(32, 20, 320-32*2, 44)];
    labelTitle.backgroundColor = [UIColor clearColor];
    labelTitle.text = @"动漫";
    labelTitle.textAlignment = NSTextAlignmentCenter;
    labelTitle.font = [UIFont systemFontOfSize:16.0];
    labelTitle.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
    [viewBack addSubview:labelTitle];
    
    //标题旁文字
    UIImageView *imageViewCenter = [[UIImageView alloc] initWithFrame:CGRectMake(180, (64-20-19)/2+20, 19, 19)];
    imageViewCenter.image = [UIImage imageNamed:@"first2.png"];
    [viewBack addSubview:imageViewCenter];
    
    //
    UIImageView *imageViewRight = [[UIImageView alloc] initWithFrame:CGRectMake(320-34, (64-20-31)/2+20, 34, 31)];
    imageViewRight.image = [UIImage imageNamed:@"first3"];
    [viewBack addSubview:imageViewRight];

    //导航
    NSArray *titleArray = @[@"全部",@"推荐",@"专题",@"排行"];
    for (int i = 0; i < titleArray.count; i++) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(80*i, 64, 80, 35)];
        label.text = titleArray[i];
        label.textAlignment = NSTextAlignmentCenter;
        label.backgroundColor = [UIColor colorWithRed:246/255.0 green:246/255.0 blue:246/255.0 alpha:1.0];
        label.font = [UIFont systemFontOfSize:15.0];
        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        if (i == 2) {
            label.textColor = [UIColor orangeColor];
        }
        [self.view addSubview:label];
        
    }

//线220
    for (int i = 0; i < 4; i++) {
        UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 80, 64+35, 1)];
        lineView.backgroundColor = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1.0];
        if ( i == 2 ) {
            lineView.backgroundColor = [UIColor orangeColor];
            
        }
        [self.view addSubview:lineView];
    }
    //白色的背景
    UIView *viewWhite  = [[UIView alloc] initWithFrame:CGRectMake(0, 102, 320, 468)];
    viewWhite.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewWhite];
    NSArray *array1 = @[@"挥洒运动的汗水，跟着青春JUMP",@"游戏人物大复活！亮瞎你的双眼"];
    NSArray *array2 = @[@"first5",@"first6"];
    for ( int i = 0; i < array2.count; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(8.5, 15+(170+40)*i, 303, 170)];
        imageView.image =[UIImage imageNamed:array2[i]];
        [viewWhite addSubview:imageView];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 15+170+4+(170+43)*i, 300, 17)];
        label.text = array1[i];
        label.textColor = [UIColor colorWithRed:87/255.0 green:87/255.0 blue:87/255.0 alpha:1.0];
        label.font = [UIFont systemFontOfSize:14.0];
        [viewWhite addSubview:label];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
