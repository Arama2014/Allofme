//
//  FactsViewController.h
//  AllOfMe
//
//  Created by Arama Brown on 5/9/16.
//  Copyright (c) 2016 Arama Brown. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FactsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *displayText;
@property (weak, nonatomic) IBOutlet UITextField *enterText;
- (IBAction)pressButton:(id)sender;

@end
