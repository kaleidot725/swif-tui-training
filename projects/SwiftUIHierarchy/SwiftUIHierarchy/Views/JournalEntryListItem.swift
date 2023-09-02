import SwiftUI

struct JournalEntryListItem: View {
    let journalEntry: JournalEntry

    var body: some View {
        VStack(alignment: .leading) {
            DateView(date: journalEntry.createdDate)
            Text("\(journalEntry.text)").lineLimit(2)
        }
    }
}

#Preview {
    JournalEntryListItem(
        journalEntry: JournalEntry(
            createdDate: Date(),
            text: "Had a wonderful time at the country fair."
        )
    )
}
