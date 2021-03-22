# codeIgniter-api-demo

Version : 3.1.11

Includes CRUD operations &amp; API Demo

1. Create a database named `codeigniter-api` in MySQL, then import `codeigniter-api.sql` file from the root folder.
   
2. Set base URL in `application/config/config.php`

```
$config['base_url'] = 'http://localhost:8001';
```
3. Set database configuration in `application/config/database.php` for `hostname`, `username`, `password`

```
$db['default'] = array(
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => '',
	'database' => 'codeigniter-api',
);  
```
4. Go to Terminal / CLI. On the project root folder `codeIgniter-api-demo`, please run command `php -S localhost:8001`
   On success you will get message like below

```
PHP 7.1.23 Development Server started at Mon Mar 22 23:17:21 2021
Listening on http://localhost:8001
```
5. Import `CI- API.postman_collection.json` from the root folder to `Postman`. It consists of 3 APIs
- To get all object records from the database.
````
curl --location --request GET 'http://localhost:8001/api/object/get_all_records' \
--header 'Authorization: Basic YWRtaW46WmRzZEBkZHMyMzIzQFpE'
````

   - To get all object records from the database.

```
curl --location --request POST 'http://localhost:8001/api/object' \
--header 'Content-Type: application/json' \
--data-raw '{
	"key": "value"
}'
```
   - To get data by key and/or timestamp
    
```
curl --location --request GET 'http://localhost:8001/api/object/key?timestamp=1616263209'
```