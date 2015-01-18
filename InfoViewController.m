//
//  InfoViewController.m
//  SampleAgenda
//
//  Created by SantiagoDls on 18/01/15.
//  Copyright (c) 2015 SantiagoDls. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.stepper.autorepeat=YES;
    self.stepper.minimumValue=0;
    self.stepper.maximumValue=100;
    self.stepper.stepValue=20;
    self.stepper.value=100;
    self.label.text=[NSString stringWithFormat:@"%d",(int)self.stepper.value];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)stepperChange:(id)sender {
    self.label.text=[NSString stringWithFormat:@"%d",(int)self.stepper.value];
    self.intro.alpha=(double)self.stepper.value/100;
}
@end
