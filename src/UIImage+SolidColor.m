//
//  UIImage+SolidColor.m
//  Posi
//
//  Created by Aaron Wojnowski on 1/7/2014.
//  Copyright (c) 2014 Posi. All rights reserved.
//

#import "UIImage+SolidColor.h"

@implementation UIImage (SolidColor)

-(UIImage *)convertedImageToColor:(UIColor *)color {
    
    CGSize size = CGSizeMake([[UIScreen mainScreen] scale] * [self size].width, [[UIScreen mainScreen] scale] * [self size].height);
    if (size.width == 0 || size.height == 0) return self;
    
    CGRect bounds = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [color set];
    CGContextClipToMask(context, bounds, [self CGImage]);
    CGContextFillRect(context, bounds);
    
    UIImage *image = [UIImage imageWithCGImage:UIGraphicsGetImageFromCurrentImageContext().CGImage scale:[[UIScreen mainScreen] scale] orientation:UIImageOrientationDownMirrored];
    
    UIGraphicsEndImageContext();
    
    return image;
    
}

@end
