# Night Writer (Braille Converter)

The code at the end of <night_writer.rb> lines: 29-31 is commented out for RSpec testing, when using <night_writer.rb> as a runner, these will need to be commented back in and the program will work as expected.

also, when running the entire RSpec test, 2 tests will fail in <night_writer_spec.rb>. This is due to the fact that running the entire test will run <translator_spec.rb> first and store the fixture needed for those tests as ARGV[1]. I have it reassigning ARGV[1] in the top of <night_writer_spec.rb>, but when it calls on things like text_total it refers to the fixture for <translator_spec.rb> .

These tests pass fine on their own, but running the direct rspec command will induce the failures. coverage is still 100% regardless of failures.

![Simplecov report for RSpec](https://user-images.githubusercontent.com/117066950/213038681-abece756-f04b-46c3-a2e2-1636bba86c38.png)




