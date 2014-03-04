//
//  BNRViewController.m
//  Keming
//
//  Created by Graham Lee on 04/03/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRViewController.h"

@interface BNRViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation BNRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setKemingValue:self.slider];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setKemingValue:(UISlider *)sender
{
    float keming = [sender value];
    self.label.attributedText = [[NSAttributedString alloc] initWithString:@"Keming" attributes:@{NSKernAttributeName: @(keming)}];
}

@end
