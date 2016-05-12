//
//  CustomTableViewController.m
//  AllOfMe
//
//  Created by Arama Brown on 4/28/16.
//  Copyright (c) 2016 Arama Brown. All rights reserved.
//

#import "CustomTableViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
    
    NSArray *myImages;
    NSArray *myNames;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    myImages = @[@"beach.jpg",@"braids.jpg", @"guitar.jpg", @"hamptons.jpg", @"painting.jpg"];
    myNames = @[@"beach", @"braids", @"guitar", @"hamptons", @"painting"];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return myImages.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.thumbNailImage.image   = [UIImage imageNamed: [myImages objectAtIndex:indexPath.row] ];
    cell.nameLabel.text = [myNames objectAtIndex:indexPath.row];
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString: @"showLargeLook"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];//get the path for the selected row
        DetailViewController *destViewController = segue.destinationViewController;
        destViewController.lookName = [myNames objectAtIndex:indexPath.row];
//        destViewController.lookView = [myImages objectAtIndex:indexPath.row]; //why does the large image show up without this line??
//        NSString *name = myNames[indexPath.row];//once we know the path we can access the name from the myNames array3
//        [[segue destinationViewController] setLookName:name];
        
    }
        
    // Get the new view controller using [segue destinationViewController].
     //Pass the selected object to the new view controller.
}


@end
    
    
