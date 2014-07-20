//
//  TEAViewController.h
//  Passing Data Challenge Solution
//
//  Created by Tony Angelo on 7/12/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TEADetailViewController.h"

@interface TEAViewController : UIViewController <DetailViewControllerDelegate, UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
