# MenuBarExampleObjectiveC

Example Objective C project implementing navigation menu bar. The project shows off a menu containing two options (Fruits & Vegetables) switching different data displayed in a table view. The project doesn't use storyboards. There are two view controllers - list view controller and an item view controller, created programmatically in code. For this simple project the MVC design pattern is used. When creating the item view controller instance, the model is being injected as a dependency in the designated initializer to follow best practices and for future testability of the class.    

## UI Control

[Menu Bar](https://github.com/stellz/MenuBar)

A bridging header is generated after drag&drop-ing the MenuBar & MenuCell classes and the list controller imports the "MenuBarExampleObjectiveC-Swift.h" header file. Read more: [Importing Swift into Objective-C](https://developer.apple.com/documentation/swift/imported_c_and_objective-c_apis/importing_swift_into_objective-c)

* Example Usage
```objc
#pragma mark - Menu bar initalisation

// Create menu object and give it a frame
MenuBar *menu = [[MenuBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width - 2*15, self.navigationController.navigationBar.intrinsicContentSize.height)]; 
// Put as many items as you want to have in you menu bar
menu.items = @[@"Fruits", @"Veggies"]; 
// Don't forget to set the delegate
menu.delegate = self; 
// Add the menu to the navigation bar
self.navigationItem.titleView = menu; 

#pragma mark - Menu bar delegate

- (void)menuBar:(MenuBar * _Nonnull)menuBar didSelect:(NSInteger)index {
    NSLog(@"Selected menu item: %ld", (long)index);
}
```

## Example project in Swift

[MenuBarExampleSwift](https://github.com/stellz/MenuBarExampleSwift)

## Build tools

* Xcode 10.3
* Objective C
* iOS 12.4
