# NavigationBar-ProgressBar

Add a progress bar under the UINavigationController's UINavigationBar. 
Allow to update progress bar easily. 

Preview
---------
![Screenshot]<img src="https://github.com/luongtsu/NavigationBar-ProgressBar/blob/master/Images/lmh_progressBar.gif">

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

Contact Me:
---------
If you have any questions comments or suggestions, send me a message. If you find a bug, or want to submit a pull request, let me know.

License
---------
MHCalendar is available under the MIT license. See the [LICENSE](https://github.com/luongtsu/NavigationBar-ProgressBar/blob/master/LICENSE) file for more info.

Copyright (c) 2016 luongtsu

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
