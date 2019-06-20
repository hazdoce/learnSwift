import UIKit

let message1 = "Hello"
let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
messageLabel.text = message1
messageLabel.backgroundColor = UIColor.blue
messageLabel.textColor = UIColor.white
messageLabel.textAlignment = NSTextAlignment.center
messageLabel.layer.cornerRadius = 15.0
messageLabel.clipsToBounds = true
