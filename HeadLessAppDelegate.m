
#import "HeadLessAppDelegate.h"
#import "MainView.h"
#import <Cocoa/Cocoa.h>

@implementation HeadLessAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	
	NSRect frame = NSMakeRect( 100., 100., 300., 300. );
	
	NSWindow *window = [[NSWindow alloc]
						initWithContentRect:frame
						styleMask:NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask
						backing:NSBackingStoreBuffered
						defer:false];
	
	[window setTitle:@"Testing"];
	
	MainView *view = [[[MainView alloc] initWithFrame:frame] autorelease];
	[window setContentView:view];
	[window setDelegate:view];
	[window makeKeyAndOrderFront:nil];
	
    NSRect tframe = NSMakeRect(40, 200, 80, 30);
    NSTextView *textLabel = [[NSTextView alloc] initWithFrame:tframe];
    [textLabel setString:@"Testapp without NIV"];
    
    
    [view addSubview:textLabel];
	[textLabel release];
	
	
	
}

@end
