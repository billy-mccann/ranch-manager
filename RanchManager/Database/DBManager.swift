
protocol DBManaging {
  func add(_ animal: Animal) async -> Bool
  func update<T: Animal> (_ animal: T, _ id: Int) async -> Bool
  func fetchAll<T: Animal> (_ type: T.Type) async -> [T]
  func fetch<T: Animal> (_ id: Int) async -> T?
}

// TODO: 1. add local SQLLite functionality so db works
class DBManager: DBManaging {
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
}
