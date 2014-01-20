//
//  BusinessViewController.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "BusinessCustomCell.h"
#import <MapKit/MapKit.h>

@interface BusinessViewController : BusinessCustomCell <MKMapViewDelegate>
{
    IBOutlet MKMapView *businessMapView;
}

@end
