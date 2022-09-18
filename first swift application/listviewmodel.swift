//
//  listviewmodel.swift
//  first swift application
//
//  Created by Awais Sarwar Khan on 18/09/2022.
//

import Foundation
class ListViewModel : ObservableObject {
    
    @Published var listOfData: [ListModel] = ResourceLoader().loadListData()
}
