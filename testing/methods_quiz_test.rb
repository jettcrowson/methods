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

t.write(File.basename(__FILE__))