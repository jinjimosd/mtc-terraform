Default user/pass for application
1. Influxdb
user: truongblx
pass: 12345678a@
organization: dsodiary
init bucket: weather
influxdb api token: sZB6a8IrVTOXTzhYqugJpw3z0kV85csLcQj8p6Vky3V809AUxE8fIVfmVoiwJNZpC-H4V0LRTPRa9N18IeDjdA==
weather api token: 0083b22f4ae4b1fce251b5d91cae6733

2. Grafana
user: admin
pass: 12345678a@

# Example openweather api
curl -s -X GET "http://api.openweathermap.org/data/2.5/weather?q=Nam%20Dinh&units=imperial&appid=0083b22f4ae4b1fce251b5d91cae6733" | jq
curl -s -X GET "http://api.openweathermap.org/data/2.5/weather?q=hanoi&units=imperial&appid=0083b22f4ae4b1fce251b5d91cae6733" | jq

curl -X GET "http://api.openweathermap.org/geo/1.0/direct?q=Nam%20Dinh&limit=5&appid=0083b22f4ae4b1fce251b5d91cae6733" | jq
curl -X GET "http://api.openweathermap.org/geo/1.0/direct?q=hanoi&limit=5&appid=0083b22f4ae4b1fce251b5d91cae6733" | jq
