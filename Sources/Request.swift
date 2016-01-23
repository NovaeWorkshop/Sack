import Foundation

public class Request {
    public var verb : String?
    public var scheme : String?
    public var host : String?
    public var path : String?
    public var port : Int?

    public func init () {
        
    }

    public var fullpath : String? {
        set {
            if (newValue == nil) {
                return
            }
            let str = newValue!
            let nsStr = str as NSString
            _fullpath = String(str)
            let regex = try! NSRegularExpression(pattern: "^(.+?):\\/\\/(.+?)(?::([0-9]{1,5}))?(\\/.*)?$", options: [])
            let matches = regex.matchesInString(str, options: [], range: NSMakeRange(0, nsStr.length))
            scheme = nsStr.substringWithRange(matches[1].range)
        }
        get {
            return _fullpath
        }
    }

    private var _fullpath : String?
}
