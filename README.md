# StackUI

This is a swift package for handling stacks like SwiftUI but inside UIKit! Please let me know your feedbacks. 

You could create your `vertical` or `horizontal` stackview in a simple lines of code.

Usage example: 

```
let verticalStack = VStack {
    titleLabel
    headerImageView
    footerLabel
}
```

So you don't need to use ',' in the end of each element like adding views in the SwiftUI.

You can also use `Spacer` element to add your custom spacing between views. like this: 

```
let verticalStack = VStack {
    titleLabel
    headerImageView
    Spacer(20)
    footerLabel
}
```
For adding custom alignment, distribution and spacing to the stack view you could add your setup like this:

```
let verticalStack = VStack(alignment: .fill, distribution: .fill, spacing: 12) {
    titleLabel
    headerImageView
    footerLabel
}
```
