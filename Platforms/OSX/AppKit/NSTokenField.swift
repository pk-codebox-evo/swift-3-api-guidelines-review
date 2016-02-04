
class NSTokenField : NSTextField {
  func setDelegate(anObject: NSTokenFieldDelegate?)
  func delegate() -> NSTokenFieldDelegate?
  var tokenStyle: NSTokenStyle
  var completionDelay: TimeInterval
  class func defaultCompletionDelay() -> TimeInterval
  @NSCopying var tokenizingCharacterSet: CharacterSet!
  class func defaultTokenizingCharacterSet() -> CharacterSet
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
protocol NSTokenFieldDelegate : NSTextFieldDelegate {
  optional func tokenField(tokenField: NSTokenField, completionsForSubstring substring: String, indexOfToken tokenIndex: Int, indexOfSelectedItem selectedIndex: UnsafeMutablePointer<Int>) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, shouldAdd tokens: [AnyObject], at index: Int) -> [AnyObject]
  optional func tokenField(tokenField: NSTokenField, displayStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, editingStringForRepresentedObject representedObject: AnyObject) -> String?
  optional func tokenField(tokenField: NSTokenField, representedObjectForEditing editingString: String) -> AnyObject
  optional func tokenField(tokenField: NSTokenField, writeRepresentedObjects objects: [AnyObject], to pboard: NSPasteboard) -> Bool
  optional func tokenField(tokenField: NSTokenField, readFrom pboard: NSPasteboard) -> [AnyObject]?
  optional func tokenField(tokenField: NSTokenField, menuForRepresentedObject representedObject: AnyObject) -> NSMenu?
  optional func tokenField(tokenField: NSTokenField, hasMenuForRepresentedObject representedObject: AnyObject) -> Bool
  optional func tokenField(tokenField: NSTokenField, styleForRepresentedObject representedObject: AnyObject) -> NSTokenStyle
}