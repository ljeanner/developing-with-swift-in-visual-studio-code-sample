import Foundation
import SQLite3

class Database {
    var db: OpaquePointer?

    init() {
        if sqlite3_open(":memory:", &db) != SQLITE_OK {
            print("Error opening database")
        }
    }

    func getUser(byId id: String) -> String? {
        var queryStatement: OpaquePointer?
        let queryString = "SELECT * FROM users WHERE id = \(id);"

        if sqlite3_prepare_v2(db, queryString, -1, &queryStatement, nil) == SQLITE_OK {
            if sqlite3_step(queryStatement) == SQLITE_ROW {
                let name = String(cString: sqlite3_column_text(queryStatement, 1))
                sqlite3_finalize(queryStatement)
                return name
            } else {
                print("Query returned no results")
            }
        } else {
            print("Query is not prepared")
        }
        sqlite3_finalize(queryStatement)
        return nil
    }
}

// Example usage
let database = Database()
if let user = database.getUser(byId: "1 OR 1=1") {
    print("User: \(user)")
} else {
    print("No user found")
}