
protocol DBManaging {
  func add(_ animal: Animal) -> Bool
  func update<T: Animal> (_ animal: T, _ id: Int) -> Bool
  func fetchAll<T: Animal> (_ type: T.Type) -> [T]
  func fetch<T: Animal> (_ id: Int) -> T?
}

// TODO: add local SQLLite functionality so db works
class DBManager: DBManaging {
  func add(_ animal: any Animal) -> Bool {
  false
  }
  
  func update<T>(_ animal: T, _ id: Int) -> Bool where T : Animal {
    false
  }
  
  func fetchAll<T>(_ type: T.Type) -> [T] where T : Animal {
    []
  }
  
  func fetch<T>(_ id: Int) -> T? where T : Animal {
    nil
  }
}
