import AsyncHTTPClient
import Dependencies

extension DependencyValues {
    public var httpClient: HTTPClient {
        get { self[HTTPClient.self] }
        set { self[HTTPClient.self] = newValue }
    }
}

extension HTTPClient: @retroactive DependencyKey {
    public static var liveValue: HTTPClient {
        @Dependency(\.mainEventLoopGroup) var eventLoopGroup
        return HTTPClient(eventLoopGroupProvider: .shared(eventLoopGroup))
    }
}
