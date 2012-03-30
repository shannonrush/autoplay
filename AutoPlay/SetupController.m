//
//  SetupController.m
//  AutoPlay
//
//  Created by Shannon Rush on 3/27/12.
//  Copyright (c) 2012 Rush Devo. All rights reserved.
//

#import "SetupController.h"

@implementation SetupController


- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark MPMusicPlayerDelegate

- (void) mediaPicker: (MPMediaPickerController *) mediaPicker didPickMediaItems: (MPMediaItemCollection *) collection {
    NSManagedObject *playlist = [self playlistWithName:@"Working Hard"];
    // save items to core data playlist
    
    [self dismissModalViewControllerAnimated: YES];
}

- (void) mediaPickerDidCancel: (MPMediaPickerController *) mediaPicker {
    
    [self dismissModalViewControllerAnimated: YES];
}

# pragma mark music picker

-(IBAction)loadNew {
    MPMediaPickerController *picker = [[MPMediaPickerController alloc] initWithMediaTypes: MPMediaTypeMusic];
    picker.delegate = self;
    picker.allowsPickingMultipleItems = YES;
    picker.prompt = NSLocalizedString (@"Add songs to play", "Prompt in media item picker");
    
    [[UIApplication sharedApplication] setStatusBarStyle: UIStatusBarStyleDefault animated: YES];
    [self presentViewController:picker animated:YES completion:NULL];
}

#pragma mark unload

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
