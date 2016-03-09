//
//  ContactList.h
//  ContactList
//
//  Created by Thomas Friesman on 2016-03-08.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "InputCollector.h"

@interface ContactList : NSObject

@property (nonatomic, strong)NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

-(void)listOfContacts;

@end
