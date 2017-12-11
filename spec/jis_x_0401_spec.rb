require "spec_helper"

RSpec.describe JisX0401 do
  describe 'version' do
    it "has a version number" do
      expect(JisX0401::VERSION).not_to be nil
    end
  end

  describe '.find_by_name' do
    context 'with String' do
      it 'is perfect match' do
        prefecture = JisX0401.find_by_name('東京都')

        expect(prefecture.code).to eq('13')
        expect(prefecture.name).to eq('東京都')
      end

      it 'is not partial match' do
        expect(JisX0401.find_by_name('東京')).to eq(nil)
      end
    end

    context 'with Regexp' do
      it 'is perfect match' do
        prefecture = JisX0401.find_by_name(/東京都/)

        expect(prefecture.code).to eq('13')
        expect(prefecture.name).to eq('東京都')
      end

      it 'is partial match' do
        prefecture = JisX0401.find_by_name(/東京/)

        expect(prefecture.code).to eq('13')
        expect(prefecture.name).to eq('東京都')
      end
    end

    describe '.find_by_code' do
      it 'match by code' do
        prefecture = JisX0401.find_by_code('13')

        expect(prefecture.code).to eq('13')
        expect(prefecture.name).to eq('東京都')
      end
    end
  end
end
