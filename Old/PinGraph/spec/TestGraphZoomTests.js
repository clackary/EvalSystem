describe("Test Graph Zoom ", function () {
	var tempObject;
	var vm;
	var _ZSPD = 0.01;
	/**
	 * Execute before any tests are run at all at the beginning.  Only run 1x (once)
	 */
	beforeAll(function() {
		vm = new ViewModel(ko);
	});
	
	/**
	 * Execute before each test
	 */
	beforeEach(function() {
		tempObject = { marker: "red", course: "CS 1400", instructor: "Brad Peterson", score: (Math.random() * 4).toFixed(2), year: 2015, term: 1 };
		setColorZIndex(tempObject);
	})

	/**
	 * Execute after each test it() 
	 */
	afterEach(function() {
		tempObject = null;
	})

	// Should be true to test running of SpecRunner.html
	it("should be true", function () {
		expect(true).toBeTruthy();
	});

	/**
	 * Utility functions
	 */
	describe("utility functions", function() {
		describe("vm.setColorZIndex", function() {
			it("red submitted", function() {
				tempObject.marker = "red";
				vm.setColorZIndex(tempObject);
				var expected = 40;
				expect(tempObject.zindex).toBe(expected);
			});
			it("green submitted", function() {
				tempObject.marker = "green";
				vm.setColorZIndex(tempObject);
				var expected = 25;
				expect(tempObject.zindex).toBe(expected);
			});
			it("blue submitted", function() {
				tempObject.marker = "blue";
				vm.setColorZIndex(tempObject);
				var expected = 15;
				expect(tempObject.zindex).toBe(expected);
			});
			it("any other color (chartruese) submitted", function() {
				tempObject.marker = "chartruese";
				vm.setColorZIndex(tempObject);
				var expected = 15;
				expect(tempObject.zindex).toBe(expected);
			});
		});
		
		describe("vm.setSemester on pinobject - dependent on the term property of the pin object", function () {
			it(" will be valid, Summer", function () {
				vm.setSemester(tempObject);
				expect(tempObject.semester).toEqual("Summer");
			});
			it(" will be valid, Fall", function () {
				tempObject.term = "2";
				vm.setSemester(tempObject);
				expect(tempObject.semester).toEqual("Fall");
			});
			it(" will be valid, Spring", function () {
				tempObject.term = "3";
				vm.setSemester(tempObject);
				expect(tempObject.semester).toEqual("Spring");
			});
			it(" will be invalid, invalid semester number (5), default Spring", function () {
				tempObject.term = "5";
				vm.setSemester(tempObject);
				expect(tempObject.semester).toEqual("Spring");
			});
			it(" will be invalid, invalid semester number (-1), default Spring", function () {
				tempObject.term = "5";
				vm.setSemester(tempObject);
				expect(tempObject.semester).toEqual("Spring");
			});
		});

		describe("vm.setYear on pinobject", function () {
			it("pass in object with year 2015, spring semester, eturn 2014", function () {
				vm.setYear(tempObject);
				expect(tempObject.year).toEqual(2014);
			});

			it("set year to 1972, fall semester, return 1971", function () {
				tempObject.term = 2;
				tempObject.year = 1972;
				vm.setYear(tempObject);
				expect(tempObject.year).toEqual(1971);
			});

			it("set year to 1989, spring semester, return 1989", function () {
				tempObject.term = 3;
				tempObject.year = 1989;
				vm.setYear(tempObject);
				expect(tempObject.year).toEqual(1989);
			});

			it("set year to 0, spring semester, return 0", function () {
				tempObject.term = 3;
				tempObject.year = 0;
				vm.setYear(tempObject);
				expect(tempObject.year).toEqual(0);
			});
		});

	});
	
	/**
	 * UI functionality
	 */
	xdescribe("Zoom Button tests won't work - examining desired properties not possible ", function () {
		it("vm.leftClick move left 1 click", function () {
			leftBound = 1;
			rightBound = 3;
			vm.leftClick();
			expect(leftBound).toEqual(1 - _ZSPD);
			expect(rightBound).toEqual(3 - _ZSPD);
		});

		it("vm.rightClick move right 1 click", function () {
			leftBound = 1;
			rightBound = 3;
			vm.rightClick();
			expect(leftBound).toEqual(1 + _ZSPD);
			expect(rightBound).toEqual(3 + _ZSPD);
		});

		it("vm.leftClick move left 1 click not past scale", function () {
			leftBound = 0;
			rightBound = 3;
			vm.leftClick();
			expect(leftBound).toEqual(0);
			expect(rightBound).toEqual(3);
		});

		it("vm.rightClick move right 1 click not past scale", function () {
			leftBound = 1;
			rightBound = 4;
			vm.rightClick();
			expect(leftBound).toEqual(1);
			expect(rightBound).toEqual(4);
		});
	});
});