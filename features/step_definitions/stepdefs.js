const assert = require('assert');
const { Given, When, Then } = require('cucumber');
const { isItFriday } = require('../../src/is-it-friday');

let currentWeekDay;
let actualAnswer;

Given('today is {string}', function (_currentWeekDay) {
	currentWeekDay = _currentWeekDay;
});

When('I ask whether today is Friday or not', function () {
	actualAnswer = isItFriday(currentWeekDay);
});

Then('I should be told {string}', function (expectedAnswer) {
	assert.equal(actualAnswer, expectedAnswer);
});


