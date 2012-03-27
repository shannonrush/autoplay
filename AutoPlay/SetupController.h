//
//  SetupController.h
//  AutoPlay
//
//  Created by Shannon Rush on 3/27/12.
//  Copyright (c) 2012 Rush Devo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface SetupController : UIViewController <MPMediaPickerControllerDelegate>
-(IBAction)loadNew;
@end
