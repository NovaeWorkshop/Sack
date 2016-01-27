import Foundation

public class Headers : SequenceType {
    public typealias Generator = Dictionary<String, Array<String>>.Generator
    private var headers = [String: [String]]()

    public init () {

    }

    public func get (key: String) -> [String]? {
        return headers[key]
    }

    public func set (key: String, _ value: String) {
        headers[key] = [value]
    }

    public func add (key: String, _ value: String) {
        var h = headers[key]
        if (h == nil) {
            headers[key] = [value]
        } else {
            h!.append(value)
        }
    }

    public func remove (key: String) {
        headers[key] = nil
    }

    public func generate () -> Generator {
        return headers.generate()
    }
}
