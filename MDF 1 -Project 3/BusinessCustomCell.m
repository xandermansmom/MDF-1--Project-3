//
//  BusinessCustomCell.m
//  MDF 1 -Project 3
//
//  Created by Michele Laramore on 1/18/14.
//  Copyright (c) 2014 Michele Laramore. All rights reserved.
//

#import "BusinessCustomCell.h"

@implementation BusinessCustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
      
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)refreshCellWithInfo:(NSString*)firstString secondString:(NSString*)secondString cellImage:(UIImage*)cellImage;
{
    businessName.text = firstString;
    businessAddress.text = secondString;
    businessImage.image = cellImage;
}

@end
