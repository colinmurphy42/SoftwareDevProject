<?php
$db = pg_connect("dbname= d30ja9oeokuudf user= oxajqwvmxwcygq host= ec2-54-221-192-231.compute-1.amazonaws.com password= 88649658013b5e0cbdf162b20cc5c46160b147eb6837d4bcc36a79b3fe107cbd");
$query = "INSERT INTO student VALUES ('$POST_[studi], $POST_[firstn], $POST_[lastn], $POST_[password], ";

$result = pg_query($query);

?>