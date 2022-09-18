//
//  ListRow.swift
//  first swift application
//
//  Created by Awais Sarwar Khan on 16/09/2022.
//

import SwiftUI

struct ListRow: View {
    var listModel : ListModel
    var body: some View {
        Text(listModel.name).font(.system(size: 40))
        
       
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        let myList:[ListModel] = ResourceLoader().loadListData()
        ListRow(listModel: myList[0])
    }
}
