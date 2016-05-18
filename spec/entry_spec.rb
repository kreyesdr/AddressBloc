require '../models/entry'

RSpec.describe Entry do
  describe "attribues" do

    let(:entry) {Entry.new('Kenny Reyes', '010.002.3123', 'kreyes@novosit.com')}

    it "respond to name" do
      expect(entry).to respond_to(:name)
    end

    it "respond to its name" do
      expect(entry.name).to eq('Kenny Reyes')
    end

    it "respond to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "respond to its phone number" do
      expect(entry.phone_number).to eq('010.002.3123')
    end

    it "respond to email address" do
      expect(entry).to respond_to(:email)
    end

    it "respond to its email address" do
      expect(entry.email).to eq('kreyes@novosit.com')
    end
  end

  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('Kenny Reyes', '010.002.3123', 'kreyes@novosit.com')
      expected_string = "Name: Kenny Reyes\nPhone Number: 010.002.3123\nEmail: kreyes@novosit.com"
      expect(entry.to_s).to eq(expected_string)
    end
  end
end