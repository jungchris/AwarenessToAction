//
//  ViewController.m
//  AwarenessToAction
//
//  Created by Chris Jungmann on 9/22/15.
//  Copyright (c) 2015 Chris Jungmann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageBackground;
@property (weak, nonatomic) IBOutlet UILabel *labelHeader;

- (IBAction)buttonStartTouch:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonStart;

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

- (IBAction)buttonStartTouch:(id)sender {
}
@end
