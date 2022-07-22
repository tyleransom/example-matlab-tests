function tests = allTests
    tests = functiontests(localfunctions);
end

function testFanciness1(testCase)
    addpath('../src/');
    s = getFancy;
    testCase.verifyMatches(s, 'pretty fancy');
end

function testFanciness2(testCase)
    addpath('../src/');
    s = getFancy;
    testCase.assertEqual(s, 'pretty fancy');
end

function testRealSolution(testCase)
    addpath('../src/');
    actSolution = quadraticSolver(1,-3,2);
    expSolution = [2 1];
    verifyEqual(testCase,actSolution,expSolution)
end

function testImaginarySolution(testCase)
    addpath('../src/');
    actSolution = quadraticSolver(1,2,10);
    expSolution = [-1+3i -1-3i];
    verifyEqual(testCase,actSolution,expSolution)
end

function testPi(testCase)
    addpath('../src/');
    actSolution = 3.14159;
    expSolution = pi;
    verifyEqual(testCase,actSolution,expSolution,'AbsTol', 1e-5)
end
