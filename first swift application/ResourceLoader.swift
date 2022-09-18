import Foundation

enum ResourceLoadingError: Error {
    case filenameNotFound
    case resourceNotFound
    case unableToParse
}

struct ResourceLoader {
    
    func loadListData() -> [ListModel] {
        
        let result = loadFromMainBundle("landmarkData.json")
        switch result {
        case .success(let data):
            do {
                let decoder = JSONDecoder()
                return  try decoder.decode([ListModel].self, from: data)
            } catch {
                print("System Failure: Unable to pass JSON stored in main bundle")
                return []
            }
        case .failure(let error):
            print("System Failure: Unable to load JSON file with error: \(error)")
            return []
        }
    }
    
    private func loadFromMainBundle(_ filename: String) -> Result<Data, ResourceLoadingError> {
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else { return(.failure(.filenameNotFound)) }
                    
        do {
            return try .success(Data(contentsOf: file))
        } catch {
            return .failure(.resourceNotFound)
        }
    }
}
