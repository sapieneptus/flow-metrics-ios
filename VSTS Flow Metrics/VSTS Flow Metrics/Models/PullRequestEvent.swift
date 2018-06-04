
import Foundation

class PullRequestEvent: Codable {
    var description: String
    var updatedDate: Date
    var type: String
    var id: UUID
    var timestamp: Date
    var createdDate: Date
}
