//
//  main.m
//  test10
//
//  Created by Vladimir Krinkin on 16/06/2019.
//  Copyright © 2019 Vladimir Krinkin. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog (@"Hello World!");
    [pool drain];
    return 0;
}
