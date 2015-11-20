class Message < ActiveRecord::Base
  # 名前は必須入力かつ20文字以内
  validates :name , length: { maximum: 20 } , presence: true
  # 内容は必須入力かつ2文字以上30文字以下
  validates :body , length: { maximum: 30, minimum: 2}, presence: true
  # 年齢は０才以上の整数, 入力は必須でない
  validates :age , numericality: { only_integer: true, greater_than_or_equal_to: 0, allow_nil: true}
end
