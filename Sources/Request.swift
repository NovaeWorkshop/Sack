import Foundation

class Request {
    var verb : String?
    var scheme : String?
    var host : String?
    var path : String?
    var port : Int?

    var fullpath : String? {
        set {
            let str = newValue
            _fullpath = String(str)
            let regex = try! NSRegularExpression(pattern: "^(.+?):\\/\\/(.+?)(?::([0-9]{1,5}))?(\\/.*)?$", options: [])
            let matches = regex.matchesInString(str!, options: [], range: NSRange(location: 0, length: str!.characters.count))
        }
        get {
            return _fullpath
        }
    }

    private var _fullpath : String?
}
