//
//  Photo+CoreDataProperties.h
//  TestCoreData
//
//  Created by Eugenio Penate on 10/8/15.
//  Copyright © 2015 TimeSet. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Photo.h"

NS_ASSUME_NONNULL_BEGIN

@interface Photo (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *url;
@property (nullable, nonatomic, retain) NSData *thumbnail;
@property (nullable, nonatomic, retain) User *owner;

@end

NS_ASSUME_NONNULL_END
