import UIKit

var message1 = "hello banan";
let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
messageLabel.backgroundColor = UIColor.orange
messageLabel.textAlignment = NSTextAlignment.center
messageLabel.layer.cornerRadius = 10.0
messageLabel.clipsToBounds = true
messageLabel.text = message1
messageLabel
