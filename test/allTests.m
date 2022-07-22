function tests = allTests
    tests = functiontests(localfunctions);
end

function testFanciness(testCase)
    addpath('../src/');
    s = getFancy;
    testCase.assertEqual(s, 'pretty fancy');
end
