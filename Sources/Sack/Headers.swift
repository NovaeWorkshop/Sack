import Foundation

public class Headers {
    private var headers = [String: String]()

    public init () {

    }

    public func get (key: String) -> String? {
        return headers[key]
    }

    public func set (key: String, _ value: String) {
        headers[key] = value
    }

    public func add (key: String, _ value: String) {
        let h = headers[key]
        if (h == nil) {
            headers[key] = value
        } else {
            headers[key] = h! + "," + value
        }
    }

    public func remove (key: String) {
        headers[key] = nil
    }
}
