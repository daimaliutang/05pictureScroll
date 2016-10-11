//
//  ViewController.m
//  pictureScroll
//
//  Created by CHENZEQIANG on 08/10/2016.
//  Copyright © 2016 CHENZEQIANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //设置要展示的内容的范围，关键属性contentSize
    self.scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 3, 0);
    
    //设置ScrollView的背景颜色
    self.scrollView.backgroundColor = [UIColor blueColor];
    
    //创建不可变数组存放所有的图片名称
    NSArray* imageArray = @[@"image0", @"image1", @"image2"];
    
    
    //使用for...in结构遍历数组
    for (NSString* str in imageArray) {
        
        //创建图片
        UIImage* image = [UIImage imageNamed:str];
        
        //创建UIImageView，并为其设置图片
        UIImageView* imageView = [[UIImageView alloc]initWithImage:image];
        
        //取得当前图片张数,从0开始计数
        NSUInteger imageNumber = [imageArray indexOfObject:str];
        
        //设置imageView的位置和尺寸
        imageView.frame = CGRectMake(self.view.bounds.size.width * imageNumber, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        
        //将imageView添加到scrollView当中去
        [self.scrollView addSubview: imageView];
        
        //打印信息测试图片名是否正常
//        NSLog(@"%@",str);
        
    }
    
//    //使用for...in结构之前的代码
    
//    NSString* imageStr0 = [NSString stringWithFormat:@"image0"];
//    UIImage* image0 = [UIImage imageNamed:imageStr0];
//    UIImageView* imageView0 = [[UIImageView alloc]initWithImage:image0];
//    imageView0.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
//    [self.scrollView addSubview: imageView0];
//    
//    NSString* imageStr1 = [NSString stringWithFormat:@"image1"];
//    UIImage* image1 = [UIImage imageNamed:imageStr1];
//    UIImageView* imageView1 = [[UIImageView alloc]initWithImage:image1];
//    imageView1.frame = CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height);
//    [self.scrollView addSubview: imageView1];
//    
//    NSString* imageStr2 = [NSString stringWithFormat:@"image2"];
//    UIImage* image2 = [UIImage imageNamed:imageStr2];
//    UIImageView* imageView2 = [[UIImageView alloc]initWithImage:image2];
//    imageView2.frame = CGRectMake(self.view.bounds.size.width * 2, 0, self.view.bounds.size.width, self.view.bounds.size.height);
//    [self.scrollView addSubview: imageView2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
