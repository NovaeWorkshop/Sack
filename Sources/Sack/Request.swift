import Foundation

public class Request {
    public var path     : String = ""
    public var verb     : String = ""
    public var url      : NSURL
    public var headers  = Headers()
    public var body     = NSData()

    public init (_ aVerb: String, _ aPath: String) {
        verb = aVerb
        path = aPath
        url = NSURL(string: aPath)!
    }
}
