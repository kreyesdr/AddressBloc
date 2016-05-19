require '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "respond to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#remove_entry" do
    it "remove only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Kenny Reyes', '00118400480', 'kreyes616@gmail.com')
      name = 'Luis Sepulveda'
      phone_number = '00898343312'
      email_address = 'lsulveda@gmail.com'
      book.add_entry(name, phone_number, email_address)
      expect(book.entries.size).to eq 2

      book.remove_entry(name, phone_number, email_address)
      expect(book.entries.size).to eq 1
      expect(book.entries.name).to eq('Kenny Reyes')
    end
  end

  describe "#add_entry" do
    it "adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Kenny Reyes', '00118400480', 'kreyes616@gmail.com')
      expect(book.entries.size).to eq(1)
    end
  end

  it "adds the correct information to entries" do
    book = AddressBook.new
    book.add_entry('Kenny Reyes', '00118400480', 'kreyes616@gmail.com')
    new_entry = book.entries[0]
    expect(new_entry.name).to eq('Kenny Reyes')
    expect(new_entry.phone_number).to eq('00118400480')
    expect(new_entry.email).to eq('kreyes616@gmail.com')
  end
end
