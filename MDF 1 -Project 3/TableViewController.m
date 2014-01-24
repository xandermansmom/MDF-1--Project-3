//
//  TableViewController.m
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/20/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "TableViewController.h"
#import "BusinessCustomCell.h"
#import "BusinessViewController.h"
#import "SharedData.h"
#import "BusCustomClass.h"

@interface TableViewController ()

@end

@implementation TableViewController

{
//vars for singleton
NSString *toInsertTitle;
CLLocationCoordinate2D toInsertLocation;
}


- (void)viewDidLoad
{
    locationManager = [[CLLocationManager alloc]init];
      if(locationManager != nil)
      {
          locationManager.desiredAccuracy = kCLLocationAccuracyBest;
          locationManager.delegate = self;
          
          //tell Core location to start gathering location information
          [locationManager startUpdatingLocation];
      }
    
        BusCustomClass *bus1 =[[BusCustomClass alloc] init];
        bus1.name = @"Bella Medical Spa & Laser";
        bus1.address = @"707 Third Street, Marble Falls, TX 78654 ";
        bus1.busImage = [UIImage imageNamed:@"Bella.png"];
        bus1.bLocation = CLLocationCoordinate2DMake(30.571427, -98.275748);
        
        BusCustomClass *bus2 =[[BusCustomClass alloc] init];
        bus2.name = @"Horseshoe Bay Resort";
        bus2.address = @"200 Hi Circle, Horseshoe Bay, TX 78657";
        bus2.busImage = [UIImage imageNamed:@"hsbayresort.png"];
        bus2.bLocation = CLLocationCoordinate2DMake(30.546588, -98.360245);
        
        BusCustomClass *bus3 =[[BusCustomClass alloc] init];
        bus3.name = @"Flat Creek Estate Vineyard and Winery";
        bus3.address =@"24912 Singleton Rd. East, Marble Falls, TX 78654";
        bus3.busImage = [UIImage imageNamed:@"FlatCreek.png"];
        bus3.bLocation = CLLocationCoordinate2DMake(30.481595, -98.045168);
        
        BusCustomClass *bus4 =[[BusCustomClass alloc] init];
        bus4.name = @"Doc's Fish Camp & Grill";
        bus4.address = @"900 Hwy 1431 West, Marble Falls, TX 78654";
        bus4.busImage = [UIImage imageNamed:@"Docs.png"];
        bus4.bLocation = CLLocationCoordinate2DMake(30.578463,-98.273170);
        
        BusCustomClass *bus5 =[[BusCustomClass alloc] init];
        bus5.name = @"Hill Country Community Theatre";
        bus5.address = @"4003 FM 2147, Marble Falls, TX 78654";
        bus5.busImage = [UIImage imageNamed:@"HCTheatre.png"];
        bus5.bLocation = CLLocationCoordinate2DMake(30.570910, -98.237234);
        
        BusCustomClass *bus6 =[[BusCustomClass alloc] init];
        bus6.name = @"BJ Designs";
        bus6.address = @"309 Main Street, Suite 2, Marble Falls, TX 78654";
        bus6.busImage = [UIImage imageNamed:@"BJDesignsLogo8.png"];
        bus6.bLocation = CLLocationCoordinate2DMake(30.572526, -98.276513);
        
        BusCustomClass *bus7 =[[BusCustomClass alloc] init];
        bus7.name = @"Choccolatte's";
        bus7.address = @"301 Main Street, Marble Falls, TX 78654";
        bus7.busImage = [UIImage imageNamed:@"choccolattes.png"];
        bus7.bLocation = CLLocationCoordinate2DMake(30.571988, -98.277311 );
        
        BusCustomClass *bus8 =[[BusCustomClass alloc] init];
        bus8.name = @"Blue Bonnet Cafe";
        bus8.address = @"211 Hwy 281, Marble Falls, TX 78654";
        bus8.busImage = [UIImage imageNamed:@"bbcafe.png"];
        bus8.bLocation = CLLocationCoordinate2DMake(30.570262 , -98.276273);
        
        BusCustomClass *bus9 =[[BusCustomClass alloc] init];
        bus9.name = @"Julie's Cocina";
        bus9.address = @"4119 Hwy 2147 Unit 1, Cottonwood Shores, TX 78657";
        bus9.busImage = [UIImage imageNamed:@"Julies.png"];
        bus9.bLocation = CLLocationCoordinate2DMake(30.549033, -98.329119);
        
        BusCustomClass *bus10 =[[BusCustomClass alloc] init];
        bus10.name = @"Showbiz Cinema";
        bus10.address = @"2800 Hwy 281, Marble Falls, TX 78654";
        bus10.busImage = [UIImage imageNamed:@"showbiz.png"];
        bus10.bLocation = CLLocationCoordinate2DMake(30.528276, -98.284728);
        
        // place all business objects into an array
    businesses = [[NSMutableArray alloc] initWithObjects:bus1, bus2, bus3, bus4, bus5, bus6, bus7, bus8, bus9, bus10, nil];
	
    // Do any additional setup after loading the view, typically from a nib.
        
        [super viewDidLoad];
        // Do any additional setup after loading the view, typically from a nib.
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
        BusinessCustomCell *cell =[tableView dequeueReusableCellWithIdentifier:@"BusinessCustomCell"];
        if(cell != nil)
        {
            BusCustomClass *currentBus = [businesses objectAtIndex:indexPath.row];
            
            [cell refreshCellWithInfo:currentBus.name secondString:currentBus.address cellImage:currentBus.busImage];
            
            
            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            
        }
        return cell;
    }


   //Selecting table cell to open BusinessViewController
    -(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
    {
        if([[segue identifier] isEqualToString:@"business"])
        
    {
        BusinessViewController *destination = segue.destinationViewController;
        if (destination != nil)
        {
        
            destination.thisName = toInsertTitle;
            destination.thisLocation = toInsertLocation;
            
            //UITableViewCell *cell = (UITableViewCell *)sender;
            //NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
            
            //Show string in array based on which table item was clicked
            //BusCustomClass *currentBus = [businesses objectAtIndex:indexPath.row];
            
            //destination.currentBusItem = currentBus;
        }
    }
}
   

-(IBAction)buttonClicked:(id)sender {
    
    {
        //Edit button change mode for editing on or off
        if (myTableView.editing == NO)
        {
            [myTableView setEditing: YES];
        }
        else
            [myTableView setEditing:NO];
    }
    
}
//Edit
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //delete mode
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSLog(@"We want to delete row =%d", indexPath.row);
        
        //remove object from data array
        [businesses removeObjectAtIndex:indexPath.row];
        
        [self->myTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath]withRowAnimation:true];
    }
}

-(void)viewDidAppear:(BOOL)animated

{
    //default set editing to off
    [myTableView setEditing:FALSE];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    {
    //selected table cell
        UITableViewCell *selectedCell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:indexPath.row inSection:0]];
        
      NSString *cellTitle = [selectedCell.textLabel text];
        NSString *thisName = [[businesses objectAtIndex:indexPath.row]name];
        CLLocationCoordinate2D thisLocation  = [[businesses objectAtIndex:indexPath.row]bLocation];
                            
                            
        toInsertTitle = thisName;
        toInsertLocation = thisLocation;
        
    //list table items according to number in array
    //for (NSUInteger i = 0; i < [businesses count]; i++)
        //{
           // NSString *stringFromArray = [[businesses objectAtIndex:i]name];
            
            //if the cell selected is equal to the string from the array, initialize businessviewcontroller and print details to the labels
            //if ([cellTitle isEqualToString:stringFromArray])
            //{
                
              //  NSString *thisName = [[businesses objectAtIndex:indexPath.row]name];
                
               // NSString *thisLocation = ;
                
            }
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
       
    


@end

