//
//  TEADetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Tony Angelo on 7/12/14.
//  Copyright (c) 2014 Tony Angelo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetailViewControllerDelegate <NSObject>

@required

-(void)didUpdateText:(NSString *) text;

@end


@interface TEADetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) id <DetailViewControllerDelegate> delegate;


@property(strong, nonatomic) NSString *informationFromTextField;

@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)updatePressed:(UIButton *)sender;

@end
