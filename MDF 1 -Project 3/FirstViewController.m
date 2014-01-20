//
//  FirstViewController.m
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "FirstViewController.h"
#import "BusinessCustomCell.h"
#import "BusinessViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

{
    NSArray *businesses;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize table data
    businesses = [NSArray arrayWithObjects:@"Bella Medical Spa & Laser", @"Horseshoe Bay Resort", !" Flat Creek Estate Vineyard and Winery", @"Doc's Fish Camp & Grill", @"Hill Country Community Theatre", @"BJ Designs", @"Choccolattes's", @"Blue Bonnet Cafe", @" Julie's Cocina", @"Elements", nil];	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [businesses count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *businessTableIdentifier = @"BusinessCustomCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:businessTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:businessTableIdentifier];
    }
    
    cell.textLabel.text = [businesses objectAtIndex:indexPath.row];
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    BusinessViewController *businessViewController = segue.destinationViewController;
    if (businessViewController != nil)
    {
        UITableViewCell *cell = (UITableViewCell *)sender;
        NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
        
        //Show string in array based on which table item was clicked
       //BusCustomClass *currentBus = [businesses objectAtIndex:indexPath.row];
       // businessViewController.currentBus = currentBus;
   }
}

@end
