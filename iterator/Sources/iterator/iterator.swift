protocol Iterator {
    func hasNext() -> Bool
    func next() -> MenuItem
}

class MenuIterator  {
    var items: [Menu]
    var curPos: Int = -1

    init(_ items: [Menu]) {
        self.items = items
    }

    func hasNext() -> Bool {
        if curPos + 1 < items.endIndex {
            return true
        } else {
            return false
        }
    }

    func next() -> Menu {
        curPos += 1
        return items[curPos]
    }
}

class ArrayIterator: Iterator { 
    var items: [MenuItem]
    var curPos: Int = -1

    init(_ items: [MenuItem]) {
        self.items = items
    }

    func hasNext() -> Bool {
        if curPos + 1 < items.endIndex {
            return true
        } else {
            return false
        }
    }

    func next() -> MenuItem {
        curPos += 1
        return items[curPos]
    }
}

class DictIterator: Iterator {
    var items: [String: MenuItem]
    var keys: [String]
    var curPos: Int = -1

    init(_ items: [String: MenuItem]) {
        self.items = items
        self.keys = [String](self.items.keys)
    }

    func hasNext() -> Bool {
        if curPos + 1 < keys.endIndex {
            return true
        } else {
            return false
        }
    }

    func next() -> MenuItem {
        curPos += 1
        let key = keys[curPos]
        return items[key]!
    }
}
