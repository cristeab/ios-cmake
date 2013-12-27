#import "HelloIOS.h"
#include "HelloWorld.h"

@implementation HelloIOS

HelloWorld _h;

- (NSString*)getHello
{
	NSString *text = [NSString stringWithUTF8String: _h.helloWorld().c_str()];
	return text;
}

@end
