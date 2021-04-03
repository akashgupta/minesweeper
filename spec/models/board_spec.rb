require 'rails_helper'

RSpec.describe Board, type: :model do
  describe 'validations' do
    it 'can be created' do
      expect do
        Board.create!({
          width: 2,
          height: 2,
          spaces: [[1, 2], [3, 4]],
        })
      end.to change(Board, :count).by(1)
    end
  end
end
