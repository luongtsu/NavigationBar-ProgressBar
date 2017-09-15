# NavigationBar-ProgressBar

Add a progress bar under the UINavigationController's UINavigationBar. 
Allow to update progress bar easily. 

Preview
---------
![Screenshot](https://github.com/luongtsu/NavigationBar-ProgressBar/blob/master/Images/lmh_progressBar.gif)

Installation
---------

#### CocoaPods
Not available now
#### Manual Installation

Just drag and drop the `UINavigationBarController+ProgressBar` file into your project.

Demo
---------

Download and see the demo project [here](https://github.com/luongtsu/NavigationBar-ProgressBar/tree/master/DemoProject).

Usage:
---------
```swift
        // set progress bar background color
        self.navigationController?.backgroundColor = UIColor.white
        
        // set progress bar primary color
        self.navigationController?.primaryColor = UIColor.blue
        
        // show progress bar
        self.navigationController?.isShowingProgressBar = true
        
        // update progress bar with given value
        self.navigationController?.setProgress(slider.value, animated: false)
```

License
---------
MHCalendar is available under the MIT license. See the [LICENSE](https://github.com/luongtsu/NavigationBar-ProgressBar/blob/master/LICENSE) file for more info.
