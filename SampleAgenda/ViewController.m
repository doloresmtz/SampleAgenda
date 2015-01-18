//
//  ViewController.m
//  SampleAgenda
//
//  Created by SantiagoDls on 17/01/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "Globals.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgIntro;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.imgIntro.image = [UIImage imageNamed:imagesArray[pos]];
    self.imgIntro.alpha=(double)trans/100;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)moveLeft:(id)sender {
    if (pos > 0){
        pos--;
    }
    else{
        pos = 4;
    }
    self.imgIntro.image = [UIImage imageNamed:imagesArray[pos]];
}
- (IBAction)moveRigh:(id)sender {
    if (pos >= 4){
        pos = 0;
    }else{
        pos++;
    }
   self.imgIntro.image = [UIImage imageNamed:imagesArray[pos]];
}
- (IBAction)goVer:(id)sender {
}

@end
