//
//  ModelData.swift
//  SwiftUiStudy
//
//  Created by App005 SYNERGY on 2022/4/13.
//

import Foundation
import Combine

//声明一个新的模型类型，它符合来自组合框架的协议。ObservableObject
final class ModelData: ObservableObject {
    //可观察对象需要发布对其数据的任何更改，以便其订阅者可以获取更改。
    @Published var landmarks: [Landmark] = load(fileName: "landmarkData.json")
    
    @Published var profile = Profile.defalut
    
    var hikes:[Hike] = load(fileName: "hikeData.json")

    var categories:[String:[Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
    
    var features:[Landmark] {
        landmarks.filter { $0.isFeatured }
    }
}


func load<T:Decodable> (fileName:String) -> T {
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    guard let data = try? Data(contentsOf: file) else {
        fatalError("Couldn't load \(fileName) from main bundle")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
    
}
