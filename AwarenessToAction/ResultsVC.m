//
//  ResultsVC.m
//  AwarenessToAction
//
//  Created by Chris Jungmann on 9/22/15.
//  Copyright (c) 2015 Chris Jungmann. All rights reserved.
//

#import "ResultsVC.h"
#import "WebVC.h"

@interface ResultsVC ()

@property (weak, nonatomic) IBOutlet UIImageView *imageBackground;
@property (weak, nonatomic) IBOutlet UILabel *labelHeader;

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;

- (IBAction)button1Touch:(id)sender;
- (IBAction)button2Touch:(id)sender;
- (IBAction)button3Touch:(id)sender;
- (IBAction)button4Touch:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

@end

@implementation ResultsVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageBackground.image  = [UIImage imageNamed:@"danger"];
    
    self.labelHeader.text       = @"It's possible that you are in a dangerous relationship!";

    self.label1.text            = @"Click here to find out what to do";
    self.label2.text            = @"Check the Predator Alert Tool";
    self.label3.text            = @"Talk to someone";
    self.label4.text            = @"Message someone privately";
    
    [self configureLabelsAppearance];

    // button text
    [self.button1 setTitle:@"Find out!" forState:UIControlStateNormal];
    [self.button2 setTitle:@"Predator Alert Tool" forState:UIControlStateNormal];
    [self.button3 setTitle:@"Talk" forState:UIControlStateNormal];
    [self.button4 setTitle:@"Message" forState:UIControlStateNormal];
    
    [self configureButtonsAppearance];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Appearance

- (void)configureLabelsAppearance {
    
    CGFloat labelRed    = 1.0f;
    CGFloat labelGreen  = 1.0f;
    CGFloat labelBlue   = 1.0f;
    CGFloat labelAlpha  = 1.0f;
    
    self.labelHeader.textColor  = [UIColor colorWithRed:labelRed green:labelGreen blue:labelBlue alpha:labelAlpha];
    self.label1.textColor       = [UIColor colorWithRed:labelRed green:labelGreen blue:labelBlue alpha:labelAlpha];
    self.label2.textColor       = [UIColor colorWithRed:labelRed green:labelGreen blue:labelBlue alpha:labelAlpha];
    self.label3.textColor       = [UIColor colorWithRed:labelRed green:labelGreen blue:labelBlue alpha:labelAlpha];
    self.label4.textColor       = [UIColor colorWithRed:labelRed green:labelGreen blue:labelBlue alpha:labelAlpha];
    
    self.labelHeader.font       = [UIFont fontWithName:@"HelveticaNeue-Bold" size:22.0f];
    self.label1.font       = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    self.label2.font       = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    self.label3.font       = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    self.label4.font       = [UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0f];
    
    self.labelHeader.numberOfLines = 0;
    self.label1.numberOfLines = 0;
    self.label2.numberOfLines = 0;
    self.label3.numberOfLines = 0;
    self.label4.numberOfLines = 0;
    
    [self.labelHeader sizeToFit];
    [self.label1 sizeToFit];
    [self.label2 sizeToFit];
    [self.label3 sizeToFit];
    [self.label4 sizeToFit];
    
    // hide footer on iPhone 4
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenHeight = screenRect.size.height;
    NSLog(@"screen size: %f", screenHeight);
    if (screenHeight < 500) {
        // self.labelFooter.alpha = 0.0;
    }
    
}

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
    self.button1.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23.0f];
    self.button2.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23.0f];
    self.button3.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23.0f];
    self.button4.titleLabel.font    = [UIFont fontWithName:@"HelveticaNeue-Bold" size:23.0f];
    
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    
    
}

- (IBAction)button1Touch:(id)sender {
    [self performSegueWithIdentifier:@"showWeb" sender:self];
    
}

- (IBAction)button2Touch:(id)sender {
    [self performSegueWithIdentifier:@"showWeb" sender:self];

}
- (IBAction)button3Touch:(id)sender {
    [self performSegueWithIdentifier:@"showWeb" sender:self];

}

- (IBAction)button4Touch:(id)sender {
    [self performSegueWithIdentifier:@"showWeb" sender:self];

}
@end
