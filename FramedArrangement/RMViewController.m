//
//  RMViewController.m
//  FramedArrangement
//
//  Created by Ross McIlwaine on 1/31/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RMViewController.h"

@interface RMViewController ()

@property (strong, nonatomic) UIView *redView;
@property (strong, nonatomic) UIView *greenView;
@property (strong, nonatomic) UIView *blueView;
@property (strong, nonatomic) UIView *yellowView;

@end

@implementation RMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.redView = [UIView new];
    self.redView.frame = CGRectMake(0, 0, 160, 284);
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.frame = CGRectMake(160, 0, 160, 284);
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.frame = CGRectMake(0, 284, 160, 284);
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.frame = CGRectMake(160, 284, 160, 284);
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    
}

// referenceing help code for the below
- (void)layoutSquares
{
    CGFloat superViewWidth = self.view.frame.size.width;
    
    self.redView.frame = CGRectMake(0, 0, superViewWidth / 2, superViewWidth /2);
    self.greenView.frame = CGRectMake(superViewWidth / 2, 0, superViewWidth / 2, superViewWidth / 2);
    self.blueView.frame = CGRectMake(0, superViewWidth / 2, superViewWidth / 2, superViewWidth / 2);
    self.yellowView.frame = CGRectMake(superViewWidth / 2, superViewWidth / 2, superViewWidth / 2, superViewWidth / 2);
    [self performSelector:@selector(layoutSquares) withObject:self afterDelay:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
