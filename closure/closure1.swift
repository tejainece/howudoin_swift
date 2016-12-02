class Book {
    var name: String

    var pages: Int

    init(_ name: String, _ pages: Int) {
        self.name = name;
        self.pages = pages
    }

    var description: String {
        return "Book(\(name), \(pages))"
    }
}

extension Book: CustomStringConvertible {}

class Author {
    var books : [Book] = []

    func printer(_ printFunc: (Book) -> String) {
        for book in books {
            print(printFunc(book))
        }
    }
}

let author = Author()
author.books += [Book("Book1", 100), Book("Book2", 150)]

print(author.books)

// Anonymous closure
author.printer {
    return "A book named \($0.name) with \($0.pages) pages."
}

func printBook(book: Book) -> String {
    return "A book named \(book.name) with \(book.pages) pages."
}
author.printer(printBook)

author.printer() {
    return "A book named \($0.name) with \($0.pages) pages."
}

author.printer { book in
    return "A book named \(book.name) with \(book.pages) pages."
}

author.printer { (book: Book) -> String in
    return "A book named \(book.name) with \(book.pages) pages."
}

author.printer({ book in
    return "A book named \(book.name) with \(book.pages) pages."
})
