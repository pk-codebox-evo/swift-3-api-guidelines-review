
@available(OSX 10.10, *)
enum CKSubscriptionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Query
  case RecordZone
}
@available(OSX 10.10, *)
struct CKSubscriptionOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var FiresOnRecordCreation: CKSubscriptionOptions { get }
  static var FiresOnRecordUpdate: CKSubscriptionOptions { get }
  static var FiresOnRecordDeletion: CKSubscriptionOptions { get }
  static var FiresOnce: CKSubscriptionOptions { get }
}
@available(OSX 10.10, *)
class CKSubscription : Object, SecureCoding, Copying {
  init(coder aDecoder: Coder)
  convenience init(recordType: String, predicate: Predicate, options subscriptionOptions: CKSubscriptionOptions = [])
  init(recordType: String, predicate: Predicate, subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions = [])
  convenience init(zoneID: CKRecordZoneID, options subscriptionOptions: CKSubscriptionOptions = [])
  init(zoneID: CKRecordZoneID, subscriptionID: String, options subscriptionOptions: CKSubscriptionOptions = [])
  var subscriptionID: String { get }
  var subscriptionType: CKSubscriptionType { get }
  var recordType: String? { get }
  @NSCopying var predicate: Predicate? { get }
  var subscriptionOptions: CKSubscriptionOptions { get }
  @NSCopying var notificationInfo: CKNotificationInfo?
  @NSCopying var zoneID: CKRecordZoneID?
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.10, *)
class CKNotificationInfo : Object, SecureCoding, Copying {
  var alertBody: String?
  var alertLocalizationKey: String?
  var alertLocalizationArgs: [String]?
  var alertActionLocalizationKey: String?
  var alertLaunchImage: String?
  var soundName: String?
  var desiredKeys: [String]?
  var shouldBadge: Bool
  var shouldSendContentAvailable: Bool
  @available(OSX 10.11, *)
  var category: String?
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}