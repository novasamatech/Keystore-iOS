import Foundation

struct DummyPerson: Codable, Equatable {
    let name: String
    let age: Int
    let parents: [DummyPerson]
    let relations: [DummyPerson]
}
