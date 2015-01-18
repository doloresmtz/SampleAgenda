//
//  ViewController.m
//  SampleAgenda
//
//  Created by SantiagoDls on 17/01/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

NSMutableArray  *imagesArray;
int iImage = 0;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgIntro;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    imagesArray = [[NSMutableArray alloc] initWithObjects:@"march.gif", @"magy.jpg", @"lissa.jpg", @"homero.jpg", @"bar.gif", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)moveLeft:(id)sender {
    if (iImage > 0){
        iImage--;
    }
    else{
        iImage = 4;
    }
    self.imgIntro.image = [UIImage imageNamed:imagesArray[iImage]];
}
- (IBAction)moveRigh:(id)sender {
    if (iImage >= 4){
        iImage = 0;
    }else{
        iImage++;
    }
   self.imgIntro.image = [UIImage imageNamed:imagesArray[iImage]];
}
- (IBAction)goVer:(id)sender {
}

@end
