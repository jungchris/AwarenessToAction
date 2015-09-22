//
//  SurveyVC.m
//  AwarenessToAction
//
//  Created by Chris Jungmann on 9/22/15.
//  Copyright (c) 2015 Chris Jungmann. All rights reserved.
//

#import "SurveyVC.h"
#import "ResultsVC.h"

@interface SurveyVC ()

@property (weak, nonatomic) IBOutlet UIImageView *imageBackground;
@property (weak, nonatomic) IBOutlet UILabel *labelHeader;

- (IBAction)button1Touch:(id)sender;
- (IBAction)button2Touch:(id)sender;
- (IBAction)button3Touch:(id)sender;
- (IBAction)button4Touch:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

@end

@implementation SurveyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelHeader.text = @"You are getting ready for a night out on the town, and your partner ...";
    self.labelHeader.numberOfLines = 0;
    [self.labelHeader sizeToFit];
    
    // button text
    [self.button1 setTitle:@"says you look as beautiful as his mother" forState:UIControlStateNormal];
    [self.button2 setTitle:@"says you look like a drag queen and makes you change" forState:UIControlStateNormal];
    [self.button3 setTitle:@"takes a photo of you and posts it on Facebook without asking" forState:UIControlStateNormal];
    [self.button4 setTitle:@"says you look like a million bucks" forState:UIControlStateNormal];
    
    [self configureButtonsAppearance];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Main Methods


#pragma mark - Appearance 

- (void)configureButtonsAppearance {
    
    self.button1.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.button2.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.button3.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.button4.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    
    self.button1.titleLabel.numberOfLines = 2;
    self.button2.titleLabel.numberOfLines = 2;
    self.button3.titleLabel.numberOfLines = 2;
    self.button4.titleLabel.numberOfLines = 2;
    
    // border width
    self.button1.layer.borderWidth      = 2.0f;
    self.button2.layer.borderWidth      = 2.0f;
    self.button3.layer.borderWidth      = 2.0f;
    self.button4.layer.borderWidth      = 2.0f;
    
    // button corner radius
    self.button1.layer.cornerRadius     = 22.0f;
    self.button2.layer.cornerRadius     = 22.0f;
    self.button3.layer.cornerRadius     = 22.0f;
    self.button4.layer.cornerRadius     = 22.0f;
    
    // button text font
    self.button1.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    self.button2.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    self.button3.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    self.button4.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    
}

#pragma mark - Actions

- (IBAction)button1Touch:(id)sender {
    
    [self performSegueWithIdentifier:@"showResults" sender:self];
}

- (IBAction)button2Touch:(id)sender {

    [self performSegueWithIdentifier:@"showResults" sender:self];

}

- (IBAction)button3Touch:(id)sender {

    [self performSegueWithIdentifier:@"showResults" sender:self];
    
}

- (IBAction)button4Touch:(id)sender {
    
    [self performSegueWithIdentifier:@"showResults" sender:self];

}
@end
