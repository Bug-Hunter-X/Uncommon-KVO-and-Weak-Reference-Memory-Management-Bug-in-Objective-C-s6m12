The solution involves ensuring the observer is removed before the observed object is deallocated.  This can be achieved using a block or other mechanism for handling cleanup.

```objectivec
#import "MyClass.h"

@implementation MyClass

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@