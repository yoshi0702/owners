class BuyPoint < ApplicationRecord
	belongs_to :supporter

	enum deposit_status: { 入金待ち: false, 入金確認: true }
end
