//
//  BusinessCustomCell.h
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BusinessCustomCell : UITableViewCell
{
    IBOutlet UILabel *businessName;
    IBOutlet UILabel *businessAddress;
    IBOutlet UIImageView *businessImage;
}

-(void)refreshCellWithInfo:(NSString*)firstString secondString:(NSString*)secondString cellImage:(UIImage*)cellImage;

@end
