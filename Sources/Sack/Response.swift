import Foundation

public class Response {
    public var status: Int
    public var headers: Headers
    public var body: [NSData]

    public init () {
        status = 200
        headers = Headers()
        body = []
    }

    public func write (data: NSData) {
        body.append(data)
    }

    public func write (string: String) {
        write(string.dataUsingEncoding(NSUTF8StringEncoding)!)
    }
}
