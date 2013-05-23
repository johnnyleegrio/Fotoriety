//
//  EditViewController.h
//  Fotoriety
//
//  Created by John Lee on 5/14/13.
//  Copyright (c) 2013 John Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "FotorietyModel.h"

@interface EditViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *editPagePhoto;
@property (weak, nonatomic) IBOutlet UITextView *editTextField;
@property (strong, nonatomic) FotorietyModel *fm;
@property(nonatomic, readonly) ALAsset *originalAsset;

@end
