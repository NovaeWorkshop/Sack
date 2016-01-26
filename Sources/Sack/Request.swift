import Foundation

public class Request {
    public var path     : String = ""
    public var verb     : String = ""
    public var url      : NSURL
    public var headers  : Headers = Headers()

    public init (_ aVerb: String, _ aPath: String) {
        verb = aVerb
        path = aPath
        url = NSURL(string: aPath)!
    }
}
