function fn() {

  var config = {
    urlBase: 'https://petstore.swagger.io/v2',
  };

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}