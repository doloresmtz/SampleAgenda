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
    
    
    pos = 4; //Comenzamos con bart
    trans=100;
    
    imagesArray = [[NSMutableArray alloc]initWithObjects:
                  @"march.gif",
                  @"magy.jpg",
                  @"lissa.jpg",
                  @"homero.jpg",
                  @"bar.gif",
                  nil
                  ];
    namesArray = [[NSMutableArray alloc]initWithObjects:
                   @"March Simpson",
                   @"Maggie Simpson",
                   @"Lissa Simpson",
                   @"Homero Simpson",
                   @"Bart Simpson",
                   nil
                   ];
    agesArray = [[NSMutableArray alloc] initWithObjects:
                 @"39",
                 @"1",
                 @"10",
                 @"40",
                 @"11",
                 nil
                 ];

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
