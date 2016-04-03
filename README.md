# NiceGesture
Best way to use UIGesture

#Usage

tapGesture:

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

LongPress,Pan:

if you want to cinfigure gesture,use this method:

```swift

  view.nc_addLongPressGestureWithConfigClosure({ (gestureRecognizer) -> () in
            //Configure gesture recognizer
  })

```
if you needn't configure,use this method to start:

```swift

  view.nc_addPanGesture()

```

then,you can add hanlder function as you want:

```swift

   view.nc_addPanGesture().whenBegan { (recognizer) -> Void in
            
       }.whenCancelled { (recognizer) -> Void in
            
       }.whenChanged { (recognizer) -> Void in
            
       }.whenEnded { (recognizer) -> Void in
            
       }.whenFailed { (recognizer) -> Void in
            
       }

```

#Contact

here is my Weibo : [@没故事的卓同学](http://weibo.com/1926303682)

# License

`NiceGesture` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.