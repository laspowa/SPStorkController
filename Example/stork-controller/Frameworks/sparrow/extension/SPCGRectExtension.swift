// The MIT License (MIT)
// Copyright © 2017 Ivan Vorobei (hello@ivanvorobei.by)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit

extension CGRect {
    
    static var displayFrame: CGRect {
        let screenSize = UIScreen.main.bounds
        return CGRect.init(origin: .zero, size: screenSize.size)
    }
    
    var bottomXPosition: CGFloat {
        get {
            return self.origin.x + self.width
        }
        set {
            self.origin.x = newValue - self.width
        }
    }
    
    var bottomYPosition: CGFloat {
        get {
            return self.origin.y + self.height
        }
        set {
            self.origin.y = newValue - self.height
        }
    }
    
    var minSideSize: CGFloat {
        return min(self.width, self.height)
    }
    
    var isWidthLessThanHeight: Bool {
        return self.width < self.height
    }
}
