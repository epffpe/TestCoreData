//
//  User+Create.m
//  TestCoreData
//
//  Created by Eugenio Penate on 10/8/15.
//  Copyright © 2015 TimeSet. All rights reserved.
//

#import "User+Create.h"

@implementation User (Create)


+(User *)userWithName:(NSString *)name
             lastName:(NSString *)lastname
inManagedObjectContext:(NSManagedObjectContext *)context
{
    User *user = nil;
    
    if ([name length]) {
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"User"];
        request.predicate = [NSPredicate predicateWithFormat:@"(name = %@) AND (lastName = %@) ", name, lastname];
        
        NSError *error;
        NSArray *matches = [context executeFetchRequest:request error:&error];
        
        if (!matches || ([matches count] > 1)) {
            
        }else if (![matches count]){ //cero matches, es decir no existe
            user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:context];
            
            user.name = name;
            user.lastName = lastname;
        }else{
            user = [matches lastObject];
        }
    }
    
    return user;
}


@end
