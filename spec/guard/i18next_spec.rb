require "spec_helper"

describe Guard::I18next do
  let(:guard) { Guard::I18next.new }

  before do
    guard.stub(:notify)
  end

  describe "#initialize" do
    context "when no options are given" do
      it 'defaults :namespace' do
        guard.options[:namespace].should eq('(global || window).Locales')
      end
      it 'defaults :output' do
        guard.options[:output].should be_a_kind_of(Pathname)
      end
    end

    context "when options are specified" do
      let(:guard) { Guard::I18next.new(nil, { :output => 'test/output' })}

      it "sets :output correctly" do
        guard.options[:output].should eql 'test/output'
      end
    end
  end

  #describe "#run_on_change" do
  #  before do
  #    Dir.stub(:mkdir)
  #    YAML.stub(:load) { Hash }
  #    contents = ""
  #    File.stub(:open)
  #    File.stub(:read) { contents }
  #    File.stub(:close)
  #    Hash.stub(:keys)
  #  end
  #
  #  context "when options are specified" do
  #    let(:guard) { Guard::I18next.new(nil, { :output => 'test/output' })}
  #
  #    it "creates a directory if the specified does not exist" do
  #      Dir.should_receive(:mkdir).with(guard.options[:output])
  #      File.should_receive(:new).with('test/input/input.yml', 'r').and_return File
  #
  #      guard.run_on_change(['test/input/input.yml'])
  #    end
  #  end
  #end


end