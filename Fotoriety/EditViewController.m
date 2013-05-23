//
//  EditViewController.m
//  Fotoriety
//
//  Created by John Lee on 5/14/13.
//  Copyright (c) 2013 John Lee. All rights reserved.
//

#import "EditViewController.h"

@implementation EditViewController

- (void)viewWillAppear:(BOOL)animated
{
    _fm = [[FotorietyModel alloc] init];
    typedef void (^ALAssetsLibraryAssetForURLResultBlock)(ALAsset *asset);
    typedef void (^ALAssetsLibraryAccessFailureBlock)(NSError *error);

    NSString *mediaurl = [NSString stringWithFormat:@"%@",_fm.imageURL];
    
    //
    ALAssetsLibraryAssetForURLResultBlock resultblock = ^(ALAsset *myasset)
    {
        ALAssetRepresentation *rep = [myasset defaultRepresentation];
        CGImageRef iref = [rep fullResolutionImage];
        if (iref) {
            _editPagePhoto.image = [UIImage imageWithCGImage:iref];
            _editPagePhoto.contentMode = UIViewContentModeScaleAspectFit;
        }
    };
    
    //
    ALAssetsLibraryAccessFailureBlock failureblock  = ^(NSError *myerror)
    {
        NSLog(@"Can't get image - %@",[myerror localizedDescription]);
    };
    
    ALAssetsLibrary* assetslibrary = [[ALAssetsLibrary alloc] init];
    [assetslibrary assetForURL:[NSURL URLWithString:mediaurl]
                   resultBlock:resultblock
                  failureBlock:failureblock];
}

- (IBAction)submitPhotoNotes:(id)sender {
}

@end
