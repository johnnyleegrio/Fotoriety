//
//  MainViewController.m
//  Fotoriety
//
//  Created by John Lee on 5/12/13.
//  Copyright (c) 2013 John Lee. All rights reserved.
//

#import "MainViewController.h"
#import "EditViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.fm = [[FotorietyModel alloc] init];
}

- (IBAction)viewPhotos:(id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.delegate = self;
    [self presentViewController:picker animated:YES completion:nil];
    
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    _mainPagePhoto.image = [info valueForKey:@"UIImagePickerControllerOriginalImage"];
    _mainPagePhoto.contentMode = UIViewContentModeScaleAspectFit;
    
    NSURL *assetURL = [info objectForKey:UIImagePickerControllerReferenceURL];
    _fm = [[FotorietyModel alloc] init];
    _fm.imageURL = assetURL;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
