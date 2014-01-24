//
//  BusinessViewController.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import "BusinessCustomCell.h"
#import "BusCustomClass.h"
#import <MapKit/MapKit.h>

@interface BusinessViewController:TableViewController
<MKMapViewDelegate, CLLocationManagerDelegate>
{
    IBOutlet MKMapView *businessMapView;
    IBOutlet UILabel *locationLabel;
    IBOutlet UILabel *longLabel;
    IBOutlet UILabel *nameLabel;
}

- (IBAction)unwindToMainMenu:(UIStoryboardSegue*)sender;

@property (nonatomic, strong)BusCustomClass *currentBusItem;
@property (nonatomic, retain)IBOutlet UIButton *closeButton;

//properties to pass data between views
@property (strong, nonatomic)  NSString *thisName;
@property (readwrite, nonatomic)  CLLocationCoordinate2D thisLocation;

@end
