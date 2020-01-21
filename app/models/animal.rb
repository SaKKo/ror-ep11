# == Schema Information
#
# Table name: animals
#
#  id         :bigint           not null, primary key
#  age        :integer
#  name       :text
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_animals_on_type     (type)
#  index_animals_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Animal < ApplicationRecord
  belongs_to :user

  def make_sound
    raise "Please implement in subclass #{self.class}"
  end
end
