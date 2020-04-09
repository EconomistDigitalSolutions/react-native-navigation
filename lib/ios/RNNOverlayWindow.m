#import "RNNOverlayWindow.h"

@implementation RNNOverlayWindow

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
	UIView *hitTestResult = [super hitTest:point withEvent:event];

	if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad && [[hitTestResult class] isEqual:[UIView class]]) {
        return nil;
    }
	
	return hitTestResult;
}

@end
