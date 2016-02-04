
@available(iOS 8.0, *)
class CLVisit : Object, SecureCoding, Copying {
  @NSCopying var arrivalDate: Date { get }
  @NSCopying var departureDate: Date { get }
  var coordinate: CLLocationCoordinate2D { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}