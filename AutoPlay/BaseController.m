//
//  BaseController.m
//  AutoPlay
//
//  Created by Shannon Rush on 3/30/12.
//  Copyright (c) 2012 Rush Devo. All rights reserved.
//

#import "BaseController.h"

@implementation BaseController

-(NSManagedObject *)playlistWithName:(NSString *)name {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
	NSManagedObjectContext *context = [appDelegate managedObjectContext];
	NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Playlists" inManagedObjectContext:context];
	NSFetchRequest *request = [[NSFetchRequest alloc] init];
	[request setEntity:entityDesc];
	NSPredicate *pred = [NSPredicate predicateWithFormat:@"name = %@", name];
	[request setPredicate:pred];
	NSError *error;
	NSArray *objects = [context executeFetchRequest:request error:&error];
    if ([objects count]>0) {
        return [objects objectAtIndex:0];
    } else {
        NSManagedObject *playlistObject = [NSEntityDescription
                                       insertNewObjectForEntityForName:@"Playlists" 
                                       inManagedObjectContext:context];
		[playlistObject setValue:name forKey:@"name"];
        NSError *error;
		[context save:&error];
        return playlistObject;
    }
}


@end
