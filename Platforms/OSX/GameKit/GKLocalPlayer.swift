
@available(OSX 10.8, *)
class GKLocalPlayer : GKPlayer {
  class func localPlayer() -> GKLocalPlayer
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(OSX 10.9, *)
  var authenticateHandler: ((NSViewController?, Error?) -> Void)?
  @available(OSX 10.10, *)
  func loadFriendPlayers(completionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func setDefaultLeaderboardIdentifier(leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func loadDefaultLeaderboardIdentifier(completionHandler completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func generateIdentityVerificationSignature(completionHandler completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  init()
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener, GKSavedGameListener {
}
extension GKLocalPlayer {
  @available(OSX 10.10, *)
  func register(listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterListener(listener: GKLocalPlayerListener)
  @available(OSX 10.10, *)
  func unregisterAllListeners()
}
@available(OSX 10.8, *)
let GKPlayerAuthenticationDidChangeNotificationName: String
extension GKLocalPlayer {
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryID(categoryID: String?, completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryID(completionHandler completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  func loadFriends(completionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(OSX, introduced=10.8, deprecated=10.10, message="use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}