import UIKit

private var maxLengths = [UITextField: Int]()

extension UITextField {
    @IBInspectable var maxLength: Int {
        get {
            guard let length = maxLengths[self]
                else {
                    return Int.max
            }
            return length
        }
        set {
            maxLengths[self] = newValue
            addTarget(
                self,
                action: #selector(limitLength),
                for: UIControl.Event.editingChanged
            )
        }
    }
    @objc func limitLength(textField: UITextField) {
        guard let prospectiveText = textField.text,
            prospectiveText.count > maxLength
            else {
                return
        }
        let selection = selectedTextRange
        let maxCharIndex = prospectiveText.index(prospectiveText.startIndex, offsetBy: maxLength)
        let newMaxCharIndex = String(prospectiveText[..<maxCharIndex])
        text = newMaxCharIndex
        selectedTextRange = selection
    }
}
