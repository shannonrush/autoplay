//
//  BaseController.h
//  AutoPlay
//
//  Created by Shannon Rush on 3/30/12.
//  Copyright (c) 2012 Rush Devo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "AppDelegate.h"

@interface BaseController : UIViewController

-(NSManagedObject *)playlistWithName:(NSString *)name;

@end
