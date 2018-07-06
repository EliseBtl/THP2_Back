require 'rails_helper'

RSpec.describe Lesson, type: :model do
  it 'has a valid Factory' do
    expect(build(:lesson)).to be_valid
  end

  describe 'lesson_title' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_most(50) }
  end

  describe 'lesson_description' do
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_most(300) }
  end
end
