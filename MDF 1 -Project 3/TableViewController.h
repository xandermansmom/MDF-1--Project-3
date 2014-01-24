//
//  TableViewController.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/20/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface TableViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate>
{
    IBOutlet UITableView *myTableView;
    IBOutlet UIButton *editButton;
    NSMutableArray *businesses;
    CLLocationManager *locationManager;
   
}

@end
