//
//  CustomTableViewCell.h
//  AllOfMe
//
//  Created by Arama Brown on 4/28/16.
//  Copyright (c) 2016 Arama Brown. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *thumbNailImage;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
