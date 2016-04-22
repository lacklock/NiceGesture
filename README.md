# NiceGesture
![Build Status](https://travis-ci.org/lacklock/NiceGesture.svg?branch=master)
![Language](https://img.shields.io/badge/language-Swift%202.2-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/v/NiceGesture.svg?style=flat)](http://cocoadocs.org/docsets/NiceGesture/)
![License](https://img.shields.io/github/license/mashape/apistatus.svg)

The best way to use UIGesture


#Usage

###TapGesture:

because tapGesture is only have one state,so it's only have method <code>whenTapped</code>

```swift

  view.nc_addTapGestureWithConfigClosure { (tapGestureRecognizer) -> () in
            // Configure gesture recognizer,like this:
            tapGestureRecognizer.numberOfTapsRequired=2
        }.whenTapped {(tapGestureRecognizer) -> () in
            //doSomething()
        }
        
  // or you can directly do something 
  view.nc_whenTapped {(tapGestureRecognizer) -> () in
        //doSomething()
  }

```

###LongPress,Pan,Pinch,Rotate,Swipe,ScreenEdgesPan:

if you want to cinfigure gesture,use this method:

```swift

  view.nc_addxxxxGestureWithConfigClosure({ (gestureRecognizer) -> () in
        //Configure gesture recognizer
  })

```
if you needn't configure,use this method to start:

```swift

  view.nc_addxxxxGesture()

```

then,you can add hanlder function as you want:


```swift

   view.nc_addPanGesture()
       .whenBegan { (recognizer) -> Void in
            
       }.whenCancelled { (recognizer) -> Void in
            
       }.whenChanged { (recognizer) -> Void in
            
       }.whenEnded { (recognizer) -> Void in
            
       }.whenFailed { (recognizer) -> Void in
            
       }

```

a convenient way to use SwipeGesture: 


```swift

   view.nc_whenSwipedInDirection(.Down) { (gestureRecognizer) in
            
        }

```

or if you want set one handler for many states,use <code>whenStatesHappend</code>:

```swift

lbState.nc_addPanGesture().whenStatesHappend([.Ended,.Changed]) { (gestureRecognizer) -> Void in
            
        }

```

###Attention

Custom gestureRecognizerHandler is retained by UIGestureRecognizer , UIGestureRecognizer is retained by target view, so if you're using self property remeber  explicit <code>[unowned self]</code> to avoid retain cycle:

```swift
 lbState.nc_whenSwipedInDirection(.Down) {[unowned self]  (gestureRecognizer) in
            self.lbState.text="Down"
        }

```
#Installation

###CocoaPods
To integrate NiceGesture into your Xcode project using CocoaPods, specify it in your Podfile:
``` ruby
platform :ios, '8.0'
use_frameworks!

pod 'NiceGesture'
```
###Manual
Just copy the files which under NiceGesture folder to your project

###Carthage
<code>github "lacklock/NiceGesture"</code>

#Contact

Weibo : [@没故事的卓同学](http://weibo.com/1926303682)

# License

`NiceGesture` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.