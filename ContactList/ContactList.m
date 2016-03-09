//
//  ContactList.m
//  ContactList
//
//  Created by Thomas Friesman on 2016-03-08.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    
    [self.contacts addObject:newContact];
}

-(void)listOfContacts {
    NSUInteger contactCount = [self.contacts count];
    for (int i = 0; i < contactCount; i++) {
        Contact *contact = self.contacts[i];
        NSLog(@"%i:%@", i, contact.contactName);
    }
}



@end
