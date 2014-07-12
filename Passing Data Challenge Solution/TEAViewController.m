//
//  TEAViewController.m
//  Passing Data Challenge Solution
//
//  Created by Tony Angelo on 7/12/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEAViewController.h"
#import "TEADetailViewController.h"

@interface TEAViewController ()

@end

@implementation TEAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([sender isKindOfClass:[UIButton class]]) {
		if ([segue.destinationViewController isKindOfClass:[TEADetailViewController class]]) {
			TEADetailViewController *detailVC = segue.destinationViewController;
			detailVC.informationFromTextField = self.textField.text;
		}
	}
}
@end
