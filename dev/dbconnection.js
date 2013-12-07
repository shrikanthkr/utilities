//npm install before this

var pg = require('pg'); 
//or native libpq bindings
//var pg = require('pg').native


var client = new pg.Client({
	user: 'shrikanth',
	password: 'ayyappa',
	database: 'todo_database',
	host: 'localhost'
});
client.connect(function(err) {
  if(err) {
    return console.error('could not connect to postgres', err);
  }
  client.query('SELECT NOW() AS "theTime"', function(err, result) {
    if(err) {
      return console.error('error running query', err);
    }
    console.log(result.rows[0].theTime);
    //output: Tue Jan 15 2013 19:12:47 GMT-600 (CST)
    client.end();
  });
});
