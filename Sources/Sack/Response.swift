import Foundation

public class Response {
    public var status: Int
    public var headers: Headers
    public var body: [NSData]
    private var size: Int

    public init () {
        status = 200
        headers = Headers()
        body = []
        size = 0
        headers.set("Content-Length", "0")
    }

    public func write (data: NSData) {
        body.append(data)
        size += data.length
        headers.set("Content-Length", String(size))
    }

    public func write (string: String) {
        write(string.dataUsingEncoding(NSUTF8StringEncoding)!)
    }
}
