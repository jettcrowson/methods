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
	describe 'not_string' do
		it 'adds not to hot' do
			not_string('hot').must_equal('not hot')
		end
		it 'returns not hot' do
			not_string('not hot').must_equal('not hot')
		end
	end
	describe 'icy_hot?' do
		it 'one is icy and the other is hot' do
			icy_hot?(-2,101).must_equal(true)
		end
		it 'one is icy and the other is hot' do
			icy_hot?(-101,1002).must_equal(true)
		end
		it 'neither are icy or hot' do
			icy_hot?(1,1).must_equal(false)
		end
	end
	describe 'closer_to' do
		it '32 is closer to 30' do
			closer_to(1,32,30).must_equal(32)
		end
		it '28 is closer to 30' do
			closer_to(1,28,30).must_equal(28)
		end
		it '32 and 48are the same distance to 30' do
			closer_to(28,32,30).must_equal(0)
		end
	end
	describe 'two_as_one?' do
		it 'can add two of them' do
			two_as_one?(1,2,3).must_equal(true)
		end
		it 'can add two of them' do
			two_as_one?(3,2,1).must_equal(true)
		end
		it 'can add two of them' do
			two_as_one?(1,3,2).must_equal(true)
		end
		it 'cant add two of them' do
			two_as_one?(1,1,1).must_equal(false)
		end
	end
end
