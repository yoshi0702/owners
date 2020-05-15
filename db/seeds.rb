Admin.create(
	email: "admin@example.com",
	password: "adminadmin",
	)

Owner.create(
	email: "kasuga@example.com",
	password: "kasugakasuga",
	surname: "春日",
	name: "俊彰",
	kana_surname: "カスガ",
	kana_name: "トシアキ",
	postal_code: "1234567",
	address: "埼玉県所沢市",
	phone_number: "1234567890",
	company_name: "株式会社春日",
	kana_company_name: "カブシキガイシャカスガ",
	bank_name: "三井住友銀行",
	branch_name: "岐阜支店",
 	account_type:"普通",
  	account_number: "1111111",
  	account_holder: "カスガトシアキ",
	)

Supporter.create(
	email: "wakabayashi@example.com",
	password: "wakabayashi",
	surname: "若林",
	name: "正恭",
	kana_surname: "ワカバヤシ",
	kana_name: "マサヤス",
	postal_code: "1234567",
	address: "東京都渋谷区笹塚",
	phone_number: "1234567890",
	owned_points: "100,000",
	)

Project.create(
	owner_id: 1,
    project_title: "カフェ存続の危機を乗り越えたい！",
  	summary_sentence: "自粛営業で存続の危機！新宿『カフェ　kasuga』に力をお貸しください！",
	area: "東京都",
	text: "2010年の営業開始から、今日まで素敵なお客様方に支えていただいて頑張ってきました。",
	publication_status: 0,
	target_amount: 1000000
	)

Area.create(name: '北海道', )
Area.create(name: '青森', )
Area.create(name: '秋田', )
Area.create(name: '岩手', )
Area.create(name: '宮城', )
Area.create(name: '山形', )
Area.create(name: '福島', )
Area.create(name: '栃木', )
Area.create(name: '茨城', )
Area.create(name: '群馬', )
Area.create(name: '埼玉', )
Area.create(name: '千葉', )
Area.create(name: '東京', )
Area.create(name: '神奈川', )
Area.create(name: '新潟', )
Area.create(name: '富山', )
Area.create(name: '石川', )
Area.create(name: '福井', )
Area.create(name: '山梨', )
Area.create(name: '長野', )
Area.create(name: '岐阜', )
Area.create(name: '静岡', )
Area.create(name: '愛知', )
Area.create(name: '三重', )
Area.create(name: '滋賀', )
Area.create(name: '京都', )
Area.create(name: '大阪', )
Area.create(name: '兵庫', )
Area.create(name: '奈良', )
Area.create(name: '和歌山', )
Area.create(name: '鳥取', )
Area.create(name: '島根', )
Area.create(name: '岡山', )
Area.create(name: '広島', )
Area.create(name: '山口', )
Area.create(name: '徳島', )
Area.create(name: '香川', )
Area.create(name: '愛媛', )
Area.create(name: '高知', )
Area.create(name: '福岡', )
Area.create(name: '佐賀', )
Area.create(name: '長崎', )
Area.create(name: '熊本', )
Area.create(name: '大分', )
Area.create(name: '宮崎', )
Area.create(name: '鹿児島', )
Area.create(name: '沖縄', )