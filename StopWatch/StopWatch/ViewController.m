//
//  ViewController.m
//  StopWatch
//
//  Created by Kyaw Than Mong on 2/16/16.
//  Copyright © 2016 Kyaw Than Mong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic , assign) double counter ;
@property (nonatomic, strong) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UILabel *CurrentCounter;

-(void) updateCounter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didClickOnReset:(id)sender {
    [self.timer invalidate];
    self.counter = 0;
    self.CurrentCounter.text = [NSString stringWithFormat:@"%.1f", self.counter];
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
- (IBAction)didClickOnPlay:(id)sender {
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateCounter) userInfo:nil repeats:YES];
    
}
- (IBAction)didClickOnPause:(id)sender {
    if (self.timer) {
        [self.timer invalidate];
    }
    
}

-(void)updateCounter {
    self.counter = self.counter + 0.1;
    self.CurrentCounter.text = [NSString stringWithFormat:@"%.1f", self.counter];
}

@end
