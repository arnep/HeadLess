
#import <Cocoa/Cocoa.h>
#import "HeadLessAppDelegate.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [NSAutoreleasePool new];
	
	NSApplication *application = [NSApplication sharedApplication];
	[application setDelegate:[[HeadLessAppDelegate alloc]init]];
	[application run];
	[pool release];
	return( EXIT_SUCCESS );
}
