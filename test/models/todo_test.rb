require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test 'should be invalid' do
    item = Todo.new

    assert item.invalid?
    assert item.errors.include?(:item)
  end

  test 'should be valid' do
    item = Todo.new(item: 'Create a new rails app')

    assert item.valid?
  end
end
