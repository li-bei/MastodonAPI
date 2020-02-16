import Foundation

/// Represents a user of Mastodon and their associated profile.
public final class Account: Codable {
    /// The account id.
    ///
    /// Added in 0.1.0
    public var id: String

    /// The username of the account, not including domain.
    ///
    /// Added in 0.1.0
    public var username: String

    /// The Webfinger account URI. Equal to `username` for local users, or `username@domain` for remote users.
    ///
    /// Added in 0.1.0
    public var acct: String

    /// The location of the user's profile page.
    ///
    /// Added in 0.1.0
    public var url: URL

    /// The profile's display name.
    ///
    /// Added in 0.1.0
    public var displayName: String

    /// The profile's bio / description.
    ///
    /// Added in 0.1.0
    public var note: String

    /// An image icon that is shown next to statuses and in the profile.
    ///
    /// Added in 0.1.0
    public var avatar: URL

    /// An image banner that is shown above the profile and in profile cards.
    ///
    /// Added in 0.1.0
    public var header: URL

    /// Whether the account manually approves follow requests.
    ///
    /// Added in 0.1.0
    public var locked: Bool

    /// When the account was created.
    ///
    /// Added in 0.1.0
    public var createdAt: Date

    /// How many statuses are attached to this account.
    ///
    /// Added in 0.1.0
    public var statusesCount: Int

    /// The reported followers of this profile.
    ///
    /// Added in 0.1.0
    public var followersCount: Int

    /// The reported follows of this profile.
    ///
    /// Added in 0.1.0
    public var followingCount: Int

    /// A static version of the avatar. Equal to `avatar` if its value is a static image; different if `avatar` is an animated GIF.
    ///
    /// Added in 1.1.2
    public var avatarStatic: URL

    /// A static version of the header. Equal to `header` if its value is a static image; different if `header` is an animated GIF.
    ///
    /// Added in 1.1.2
    public var headerStatic: URL

    /// Indicates that the profile is currently inactive and that its user has moved to a new account.
    ///
    /// Added in 2.1.0
    public var moved: Account?

    /// Custom emoji entities to be used when rendering the profile. If none, an empty array will be returned.
    ///
    /// Added in 2.4.0
    public var emojis: [Emoji]

    /// Additional metadata attached to a profile as name-value pairs.
    ///
    /// Added in 2.4.0
    public var fields: [Field]

    /// A presentational flag. Indicates that the account may perform automated actions, may not be monitored, or identifies as a robot.
    ///
    /// Added in 2.4.0
    public var bot: Bool

    /// An extra entity to be used with API methods to [verify credentials]() and [update credentials]().
    ///
    /// Added in 2.4.0
    public var source: Source?

    /// Whether the account has opted into discovery features such as the profile directory.
    ///
    /// Added in 3.1.0
    public var discoverable: Bool
}
