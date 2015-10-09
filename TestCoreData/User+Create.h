//
//  User+Create.h
//  TestCoreData
//
//  Created by Eugenio Penate on 10/8/15.
//  Copyright © 2015 TimeSet. All rights reserved.
//

#import "User.h"

@interface User (Create)

+(User *)userWithName:(NSString *)name
             lastName:(NSString *)lastname
inManagedObjectContext:(NSManagedObjectContext *)context;
@end
