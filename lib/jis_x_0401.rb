require_relative "./jis_x_0401/version"

module JisX0401
  PREFECTURES = []

  def self.find_by_name(prefecture_name)
    PREFECTURES.find {|prefecture| prefecture_name === prefecture.name }
  end

  def self.find_by_code(code)
    PREFECTURES.find {|prefecture| code == prefecture.code }
  end

  class Prefecture
    attr_reader :code, :name, :en_name

    def initialize(code:, name:, en_name:)
      @code = code
      @name = name
      @en_name = en_name
    end
  end
end

[
  {:code=>"01", :name=>"北海道",   :en_name=>"Hokkaido"},
  {:code=>"02", :name=>"青森県",   :en_name=>"Aomori"},
  {:code=>"03", :name=>"岩手県",   :en_name=>"Iwate"},
  {:code=>"04", :name=>"宮城県",   :en_name=>"Miyagi"},
  {:code=>"05", :name=>"秋田県",   :en_name=>"Akita"},
  {:code=>"06", :name=>"山形県",   :en_name=>"Yamagata"},
  {:code=>"07", :name=>"福島県",   :en_name=>"Fukushima"},
  {:code=>"08", :name=>"茨城県",   :en_name=>"Ibaraki"},
  {:code=>"09", :name=>"栃木県",   :en_name=>"Tochigi"},
  {:code=>"10", :name=>"群馬県",   :en_name=>"Gumma"},
  {:code=>"11", :name=>"埼玉県",   :en_name=>"Saitama"},
  {:code=>"12", :name=>"千葉県",   :en_name=>"Chiba"},
  {:code=>"13", :name=>"東京都",   :en_name=>"Tokyo"},
  {:code=>"14", :name=>"神奈川県", :en_name=>"Kanagawa"},
  {:code=>"15", :name=>"新潟県",   :en_name=>"Niigata"},
  {:code=>"16", :name=>"富山県",   :en_name=>"Toyama"},
  {:code=>"17", :name=>"石川県",   :en_name=>"Ishikawa"},
  {:code=>"18", :name=>"福井県",   :en_name=>"Fukui"},
  {:code=>"19", :name=>"山梨県",   :en_name=>"Yamanashi"},
  {:code=>"20", :name=>"長野県",   :en_name=>"Nagano"},
  {:code=>"21", :name=>"岐阜県",   :en_name=>"Gifu"},
  {:code=>"22", :name=>"静岡県",   :en_name=>"Shizuoka"},
  {:code=>"23", :name=>"愛知県",   :en_name=>"Aichi"},
  {:code=>"24", :name=>"三重県",   :en_name=>"Mie"},
  {:code=>"25", :name=>"滋賀県",   :en_name=>"Shiga"},
  {:code=>"26", :name=>"京都府",   :en_name=>"Kyoto"},
  {:code=>"27", :name=>"大阪府",   :en_name=>"Osaka"},
  {:code=>"28", :name=>"兵庫県",   :en_name=>"Hyogo"},
  {:code=>"29", :name=>"奈良県",   :en_name=>"Nara"},
  {:code=>"30", :name=>"和歌山県", :en_name=>"Wakayama"},
  {:code=>"31", :name=>"鳥取県",   :en_name=>"Tottori"},
  {:code=>"32", :name=>"島根県",   :en_name=>"Shimane"},
  {:code=>"33", :name=>"岡山県",   :en_name=>"Okayama"},
  {:code=>"34", :name=>"広島県",   :en_name=>"Hiroshima"},
  {:code=>"35", :name=>"山口県",   :en_name=>"Yamaguchi"},
  {:code=>"36", :name=>"徳島県",   :en_name=>"Tokushima"},
  {:code=>"37", :name=>"香川県",   :en_name=>"Kagawa"},
  {:code=>"38", :name=>"愛媛県",   :en_name=>"Ehime"},
  {:code=>"39", :name=>"高知県",   :en_name=>"Kochi"},
  {:code=>"40", :name=>"福岡県",   :en_name=>"Fukuoka"},
  {:code=>"41", :name=>"佐賀県",   :en_name=>"Saga"},
  {:code=>"42", :name=>"長崎県",   :en_name=>"Nagasaki"},
  {:code=>"43", :name=>"熊本県",   :en_name=>"Kumamoto"},
  {:code=>"44", :name=>"大分県",   :en_name=>"Oita"},
  {:code=>"45", :name=>"宮崎県",   :en_name=>"Miyazaki"},
  {:code=>"46", :name=>"鹿児島県", :en_name=>"Kagoshima"},
  {:code=>"47", :name=>"沖縄県",   :en_name=>"Okinawa"}
].each { |data|
  JisX0401::PREFECTURES << JisX0401::Prefecture.new(data)
}
JisX0401::PREFECTURES.freeze
