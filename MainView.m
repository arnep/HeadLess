#import "MainView.h"

@implementation MainView
 
-(void)drawRect:(NSRect)rect {
	[[NSColor blueColor] set];
	NSRectFill( [self bounds] );
}
 
-(void)windowWillClose:(NSNotification *)note {
	[[NSApplication sharedApplication] terminate:self];
}

@end