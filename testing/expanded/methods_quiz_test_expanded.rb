#To setup, add the following to your gem file and run 'bundle':
#
# gem 'minitest'
# gem 'minitest-reporters'
require './testing/test_setup'
require './methods_quiz'

describe 'methods_quiz' do
	describe 'has_teen?' do
		it '13 is a teen' do
			has_teen?(1,2,13).must_equal(true)
		end
		it 'no teens present' do
			has_teen?(1,2,3).must_equal(false)
		end
	end
end
