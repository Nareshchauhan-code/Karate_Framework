function fn(){

var config = {
name : "Naresh"
}
karate.configure('connectTimeout',5000)
karate.configure('readTimeout',5000)
return config;
}