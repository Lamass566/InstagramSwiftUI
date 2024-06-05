import Foundation

enum IconType{
    case like
    case message
    
    var setImage: String{
        switch self {
        case .like:
            return "heart"
        case .message:
            return "doc.on.doc"
        }
    }
}
