require 'rspec'
require 'experience'

describe 'An Experience' do

  before :all do
    @platform = double('platform')
    Platform.register_default @platform
  end

  it 'should find content' do
    expect(@platform).to receive(:get_content).with(:id => 'name').and_return('experience')
    class Example
      extend Experience

      content(:name, :id => 'name')
    end
    Example.read do |example|
      expect(example.name).to eq 'experience'
    end
  end
end