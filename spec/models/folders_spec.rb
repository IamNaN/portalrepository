require 'rails_helper'

RSpec.describe Folder, type: :model do
  let(:a)  { Folder.create name: 'a' }
  let(:b)  { Folder.create parent: a, name: 'b' }

  it 'shows parents' do
    a
    expect(b.ancestors).to include a
  end

  it 'shows the path' do
    a
    expect(b.path).to eq '/a/b'
  end
end
