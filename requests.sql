COPY (SELECT * FROM works where works_year >= '2017') TO 'C:/psqlout/201719.csv' CSV;
COPY (select agency_name, sum(works_price) from works where works_year >=2017 GROUP BY agency_name) TO 'C:/psqlout/sum201719.csv' CSV;
COPY (select agency_name,device_name,device_firm,works_type,works_what, works_price from works where works_year=2017 and agency_name like '%авлова%' ORDER BY works_price desc)  TO 'C:/psqlout/pavlova.csv' CSV;
