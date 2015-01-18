//
//  InfoViewController.h
//  SampleAgenda
//
//  Created by SantiagoDls on 18/01/15.
//  Copyright (c) 2015 SantiagoDls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UIStepper *StepperChangeValue;
- (IBAction)stepperChange:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *intro;
@property (weak, nonatomic) IBOutlet UILabel *labelname;
@property (weak, nonatomic) IBOutlet UILabel *labelage;
@property (weak, nonatomic) IBOutlet UIImageView *introImage;

@end
