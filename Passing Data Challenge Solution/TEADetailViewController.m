//
//  TEADetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Tony Angelo on 7/12/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import "TEADetailViewController.h"
#import "TEAViewController.h"

@interface TEADetailViewController ()

@end

@implementation TEADetailViewController

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
	
	self.label.text = self.informationFromTextField;
	
	self.textField.delegate = self;
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


- (IBAction)updatePressed:(UIButton *)sender {
	if (self.delegate) {
		if ([self.delegate isKindOfClass:[TEAViewController class]]) {
			self.label.text = self.textField.text;
			[self.delegate didUpdateText:self.textField.text];
		}
		
	}
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[self.textField resignFirstResponder];
	
	return YES;
}

@end
