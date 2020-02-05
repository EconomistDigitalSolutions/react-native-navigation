#import "RNNOverlayWindow.h"

@implementation RNNOverlayWindow

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
	UIView *hitTestResult = [super hitTest:point withEvent:event];
	
	if ([hitTestResult isKindOfClass:[UIWindow class]]) {
		return nil;
	}
    
    if ( UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad && [[hitTestResult class] isEqual:[UIView class]]) {
        return nil;
    }
	
	return hitTestResult;
}

@end
