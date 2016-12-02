class Book {
    var name: String

    var author: String

    var cost: Int

    init(name: String, author: String, cost: Int) {
        self.name = name
        self.author = author
        self.cost = cost
    }

    convenience init(fromJson map: [String:Any]) {
        self.init(name: "", author: "", cost: 0)
        fromJson(map)
    }
}

extension Book: CustomStringConvertible {
    var description: String {
        return toJson().description
    }
}

protocol Jsonable {
    func toJson() -> [String: Any]

    func fromJson(_ map: [String:Any])
}

extension Book {
    class Keys {
        static let name = "N"

        static let author = "A"

        static let cost = "C"
    }
}

extension Book: Jsonable {
    func toJson() -> [String: Any] {
        return [
            Keys.name: name,
            Keys.author: author,
            Keys.cost: cost,
        ]
    }

    func fromJson(_ map: [String:Any]) {
        guard map[Keys.name] is String else {
            return
        }

        guard map[Keys.author] is String else {
            return
        }

        guard map[Keys.cost] is Int else {
            return
        }

        name = map[Keys.name] as! String
        author = map[Keys.author] as! String
        cost = map[Keys.cost] as! Int
    }
}

let book = Book(name: "Book1", author: "Author1", cost: 100)
print(book.toJson())

let book1 = Book(fromJson: ["N": "Learn Dart", "A": "Teja", "C": 1000])
print(book1.toJson())
