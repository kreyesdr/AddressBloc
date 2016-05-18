require '../models/address_book'

RSpec.describe AdressBook do
  describe "attributes" do
    it "respond to entries" do
      book = AdressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as empty" do
      book = AdressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AdressBook.new
      book.add_entry('Kenny Reyes', '00118400480', 'kreyes616@gmail.com')
      expect(book.entries.size). to eq(1)
    end

    it "adds the correct information to entries" do
      book = AdressBook.new
      book.add_entry('Kenny Reyes', '00118400480', 'kreyes616@gmail.com')
      new_entry = book.entries[0]
      expect(new_entry.name).to eq('Kenny Reyes')
      expect(new_entry.phone_number).to eq('00118400480')
      expect(new_entry.email).to eq('kreyes616@gmail.com')
    end
  end
end