function tests = fancyTests
    tests = functiontests(localfunctions);
end

function testFanciness(testCase)
    s = getFancy;
    testCase.assertEqual(s, 'kinda fancy');
end
