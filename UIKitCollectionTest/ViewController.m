//
//  ViewController.m
//  UIKitCollectionTest
//  UIViewController生命周期测试
//
//  Created by daoquan on 2016/11/16.
//  Copyright © 2016年 daoquan. All rights reserved.
//

#import "ViewController.h"


int tip = 0;

@interface ViewController ()

@end

@implementation ViewController


/**
 类的初始化方法
 只调用一次：在该类创建第一个对象时调用
 */
+ (void)initialize {
    [super initialize];
    NSLog(@"%d initialize", ++tip);
}

/**
 对象初始化方法:代码初始化
 */
- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    
    NSLog(@"%d init", ++tip);
    return self;
}

/**
 从归档初始化
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    NSLog(@"%d initWithCoder", ++tip);
    return self;
}

/**
 从nib文件初始化
 从xib/storyboard中加载的UIViewController将要激活时被调用
 */
- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib", ++tip);
}

/**
 加载视图：加载UI视图
 在生命周期内只会调用一次，除非手动调用
 */
- (void)loadView {
    [super loadView];
    NSLog(@"%d loadView", ++tip);
}

/**
 将要加载视图：
 在视图加载完成后调用，此时Controller的基本系统功能已经初始化完成
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%d viewDidLoad", ++tip);
}

/**
 将要布局子视图
 */
- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"%d viewWillLayoutSubviews", ++tip);
}

/**
 已经布局子视图
 */
- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%d viewDidLayoutSubviews", ++tip);
}

/**
 视图将要展示
 */
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%d viewWillAppear", ++tip);
}

/**
 视图已经展示
 */
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%d viewDidAppear", ++tip);
}

/**
 将要消失
 可以做一些数据清理
 */
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%d viewWillDisappear", ++tip);
}

/**
 已经消失
 */
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%d viewDidDisappear", ++tip);
}

/**
 被释放
 可以检查是否被释放
 */
- (void)dealloc {
    NSLog(@"%d dealloc", ++tip);
    //在ARC模式下，不需要调用父类[super dealloc]方法
}

/**
 收到内存警告
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"%d didReceiveMemoryWarning", ++tip);
}


@end
