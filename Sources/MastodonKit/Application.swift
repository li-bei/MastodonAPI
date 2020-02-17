import Foundation

/// Represents an application that interfaces with the REST API to access accounts or post statuses.
public struct Application: Codable {
    /// The name of your application.
    ///
    /// Added in 0.9.9
    public var name: String

    /// The website associated with your application.
    ///
    /// Added in 0.9.9
    public var website: URL?

    /// Client ID key, to be used for obtaining OAuth tokens.
    ///
    /// Added in 0.9.9
    public var clientID: String?

    /// Client secret key, to be used for obtaining OAuth tokens.
    ///
    /// Added in 0.9.9
    public var clientSecret: String?

    /// Used for Push Streaming API.
    ///
    /// Added in 2.8.0
    public var vapidKey: String?
}
