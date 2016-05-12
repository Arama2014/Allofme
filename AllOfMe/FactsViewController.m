//
//  FactsViewController.m
//  AllOfMe
//
//  Created by Arama Brown on 5/9/16.
//  Copyright (c) 2016 Arama Brown. All rights reserved.
//

#import "FactsViewController.h"

@interface FactsViewController ()


@end

@implementation FactsViewController

{
    
    NSString *inPut;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)pressButton:(id)sender {
    inPut = self.enterText.text;
    self.displayText.text = inPut;
}
@end
