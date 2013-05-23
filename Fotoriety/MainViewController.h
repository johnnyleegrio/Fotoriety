//
//  MainViewController.h
//  Fotoriety
//
//  Created by John Lee on 5/12/13.
//  Copyright (c) 2013 John Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FotorietyModel.h"

@interface MainViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *mainPagePhoto;
@property (strong, nonatomic) FotorietyModel *fm;

- (IBAction) viewPhotos:(id)sender;

@end
