require_relative "test_maker"

t = Test.new
t.setup
t.create("methods_quiz")
    t.new_test("has_teen?")
        t.function_test([
            t.test("13 is a teen", [1,2,13], true),
            t.test("no teens present", [1,2,3], false)
        ])
    t.new_test("not_string")
    t.function_test([
        t.test("adds not to hot", ["hot"], "not hot"),
        t.test("returns not hot", ["not hot"], "not hot")
    ])
    t.new_test("icy_hot?")
    t.function_test([
        t.test("one is icy and the other is hot", [-2, 101], true),
        t.test("one is icy and the other is hot", [-101, 1002], true),
        t.test("neither are icy or hot", [1, 1], false)
    ])
    t.new_test("closer_to")
    t.function_test([
        t.test("32 is closer to 30", [30,1,32], 32),
        t.test("28 is closer to 30", [30,28,1], 28),
        t.test("28 is closer to 30", [7,8,10], 8),
        t.test("-12 is closer to -8", [-8,0,-12], -12),
        t.test("32 and 48are the same distance to 30", [30,28,32], 0)
    ])
    t.new_test("two_as_one?")
    t.function_test([
        t.test("can add two of them", [1,2,3], true),
        t.test("can add two of them", [3,2,1], true),
        t.test("can add two of them", [1,3,2], true),
        t.test("cant add two of them", [1,1,1], false)
    ])
t.write(File.basename(__FILE__))