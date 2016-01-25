import Foundation

public class Request {
    public var  path : String = ""
    public var  verb : String = ""
    public var  url  : NSURL

    public init (_ aVerb: String, _ aPath: String) {
        verb = aVerb
        path = aPath
        url = NSURL(string: aPath)!
    }
}
