//
//  showlist.swift
//  first swift application
//
//  Created by Awais Sarwar Khan on 16/09/2022.
//

import SwiftUI

struct showlist: View {
    
    @StateObject var listInstance = ListViewModel()

    var body: some View {
        List(listInstance.listOfData){listOfData in
            ListRow(listModel: listOfData)
            }
        
      
}
    

}

struct showlist_Previews: PreviewProvider {
    static var previews: some View {
        showlist()
    }
}

