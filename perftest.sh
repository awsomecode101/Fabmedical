host="fabmedical-565892.mongo.cosmos.azure.com"
username="fabmedical-565892"
password="6FA0JK6DUuoRvhk06qzUAWdzyMR0Xjm3LZydg8LeACvmnOaKlYdXlIoB5Hm23ppJSptDQBtu4F5tZ6lI7ZmvwA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
