# React-Native-Today-Widget

## Steps I followed

1. `react-native init TodayWidgetTest`
2. Added `TodayWidget` today widget extension target
3. Set `TodayViewController` as the `NSExtensionPrincipalClass` in the `TodayWidget` Info.plist file
4. Removed the storyboard file that came with it 
5. Added [this code](https://github.com/rclai/React-Native-Today-Widget/blob/master/ios/TodayWidget/TodayViewController.m#L19-L34) and [this code](https://github.com/rclai/React-Native-Today-Widget/blob/8ada7f4c3b893825649c960d1e5c0b872323a845/index.ios.js#L66)
6. Added `App Transport Security Settings` in order to `Allow Arbitrary Loads` in the Info.plist file
7. Under __Build Phases__, add all React Native binary libraries in the __Link Binary with Libraries__ for the `TodayWidget` target
8. Under __Build Settings__, add `-ObjC` linker flag
9. Set Deployment Target to 7.0

## Results

This works on the iOS Simulator, but unfortunately doesn't work on an actual phone.
