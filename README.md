
# Initialize project docker images
```
docker-compose build
```


# Run php composer actions on project directory
```
./composer.sh . install
./composer.sh . dump-autoload
```

# Run php unit test
```
./test.sh  test/MyApp/
./test.sh --testdox  test/MyApp/
./test.sh --testdox --filter=isOneWillReturnOne  test/MyApp/
```

# start database
```
docker-compose up -d mysql0
```

# enter database via mysql client
```
./db.sh
```
