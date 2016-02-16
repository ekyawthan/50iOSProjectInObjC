//
//  ViewController.m
//  IOSProjectWithoutStoryBoard
//
//  Created by Kyaw Than Mong on 2/16/16.
//  Copyright © 2016 Kyaw Than Mong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *login;
@property (nonatomic, strong) UIButton  *signUp;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.login = [[UIButton alloc]init];
    [self.login setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.login.backgroundColor = [UIColor greenColor];
    [self.login setTitle:@"login" forState:UIControlStateNormal];
    [self.view addSubview:self.login];
    
    self.signUp = [[UIButton alloc]init];
    [self.signUp setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.signUp.backgroundColor = [UIColor orangeColor];
    [self.signUp setTitle:@"sign up" forState:UIControlStateNormal];
    [self.view addSubview:self.signUp];
    
    
    [NSLayoutConstraint constraintWithItem:self.login
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeadingMargin
                                multiplier:1.0
                                  constant:8].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.login
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.signUp
                                 attribute:NSLayoutAttributeLeading
                                multiplier:1.0
                                  constant:8].active = YES;
    [NSLayoutConstraint constraintWithItem:self.login
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottomMargin
                                multiplier:1.0
                                  constant:-8].active = YES;
    
    
    
    
    [NSLayoutConstraint constraintWithItem:self.signUp
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.login
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:8].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.signUp
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeTrailingMargin
                                multiplier:1.0
                                  constant:8].active = YES;
    [NSLayoutConstraint constraintWithItem:self.signUp
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottomMargin
                                multiplier:1.0
                                  constant:-8].active = YES;
    
    [NSLayoutConstraint constraintWithItem:self.signUp
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.login
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0].active = YES;
    
  
    
    
    NSLog(@"Hello world");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
