require 'bookmarks'

describe Class do
  subject(:bookmarks) { Bookmarks.new }

  it 'returns a hard-coded array of bookmarks' do
    array = ['www.google.com', 'www.bbc.co.uk']
    expect(Bookmarks.all).to eq array
  end
  
end
