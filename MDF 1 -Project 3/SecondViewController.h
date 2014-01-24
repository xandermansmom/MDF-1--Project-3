//
//  SecondViewController.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SecondViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

{
    IBOutlet MKMapView *allBusMapView;
    NSMutableArray *businesses;
}
@end

