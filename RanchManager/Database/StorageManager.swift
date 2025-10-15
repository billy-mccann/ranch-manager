import Foundation
import GRDB

protocol StorageManaging {
  func add(_ animal: Animal) async -> Bool
  func update<T: Animal> (_ animal: T, _ id: Int) async -> Bool
  func fetchAll<T: Animal> (_ type: T.Type) async -> [T]
  func fetch<T: Animal> (_ id: Int) async -> T?
}

// TODO: 1. add local SQLLite functionality so db works
class StorageManager: StorageManaging {
  // MARK: - DBManaging
  func add(_ animal: any Animal) async -> Bool {
  false
  }
  
  func update<T>(_ animal: T, _ id: Int) async -> Bool where T : Animal {
    false
  }
  
  func fetchAll<T>(_ type: T.Type) async -> [T] where T : Animal {
    []
  }
  
  func fetch<T>(_ id: Int) async -> T? where T : Animal {
    nil
  }

  // MARK: - Static methods
  private static func getDatabaseURL() throws -> URL {
    let fileManager = FileManager.default
      let appSupportURL = try fileManager.url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
      return appSupportURL.appendingPathComponent("livestock.sqlite")
  }

  private static func getDatabaseQueue() throws -> DatabaseQueue {
    let url = try StorageManager.getDatabaseURL()
      let dbQueue = try DatabaseQueue(path: url.absoluteString)
      return dbQueue
  }
}
