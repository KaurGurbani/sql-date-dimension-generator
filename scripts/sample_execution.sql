EXEC PopulateDateDimension @InputDate = '2020-07-14';
SELECT * FROM DateDimension WHERE CalendarYear = 2020;
