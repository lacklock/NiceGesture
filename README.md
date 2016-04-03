# NiceGesture
Best way to use UIGesture

#Usage

Use tapGesture:

```swift

  view.nc_addTapGestureWithConfigClosure { (tapGestureRecognizer) -> () in
            // Configure gesture recognizer,like this:
            tapGestureRecognizer.numberOfTapsRequired=2
        }.whenTapped {(tapGestureRecognizer) -> () in
            //doSomething()
        }
        
  view.nc_whenTapped {(tapGestureRecognizer) -> () in
        //doSomething()
  }

```

## License

`NiceGesture` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.