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
    
    if ([self size].width == 0 || [self size].height == 0) return self;
    
    CGSize size = CGSizeMake([self size].width * [self scale], [self size].height * [self scale]);
    CGRect bounds = CGRectMake(0, 0, size.width, size.height);
    
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [color set];
    
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextClipToMask(context, bounds, [self CGImage]);
    CGContextFillRect(context, bounds);
    
    UIImage *image = [UIImage imageWithCGImage:[UIGraphicsGetImageFromCurrentImageContext() CGImage] scale:[[UIScreen mainScreen] scale] orientation:UIImageOrientationUp];
    
    UIGraphicsEndImageContext();
    
    return image;
    
}

@end
