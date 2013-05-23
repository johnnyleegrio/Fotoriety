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
    
    //[self performSegueWithIdentifier: @"EditViewSegue" sender:self];
    [self dismissViewControllerAnimated:YES completion:nil];
    
    //NSMutableDictionary *metadata = [[NSMutableDictionary alloc] initWithDictionary: [info objectForKey:UIImagePickerControllerMediaMetadata]];
    NSURL *assetURL = [info objectForKey:UIImagePickerControllerReferenceURL];
    NSLog(@"%@",assetURL);
    
    UIStoryboardSegue *segue = [[UIStoryboardSegue alloc] init];
    EditViewController* edit = segue.destinationViewController;
    // Get the Edit View Controller set up properly
    edit.editPagePhoto = self.mainPagePhoto;
    
    
    //NSData *imgData = [NSData dataWithContentsOfURL:assetURL];
    
    //NSLog(@"original metadata: %@",metadata);
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EditViewController* edit = segue.destinationViewController;
    // Get the Edit View Controller set up properly
    edit.editPagePhoto = self.mainPagePhoto;

}




@end
