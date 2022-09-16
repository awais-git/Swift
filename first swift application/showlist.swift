//
//  showlist.swift
//  first swift application
//
//  Created by Awais Sarwar Khan on 16/09/2022.
//

import SwiftUI

struct showlist: View {

    private var ListDetails :[ListModel] = [
        ListModel(ids: 1, Name: "Jhon"),
        ListModel(ids: 2, Name: "Doe"),
        
    ]
    var body: some View {
        List(ListDetails , id: \.Name){listData in
            ListRow(listModel: listData)
            }
}
}

struct showlist_Previews: PreviewProvider {
    static var previews: some View {
        showlist()
    }
}

