require 'rails_helper'

RSpec.describe Contact, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with a firstname, lastname" do
    contact = Contact.new(
      firstname: 'kai', 
      lastname: 'ci')
    expect(contact).to be_valid
  end

  t "is valid with a firstname" do
    contact = Contact.new(firstname: nil)
    contact.valid?
    expect(contact.error[:firstname]).to include("can't be blank")

end
