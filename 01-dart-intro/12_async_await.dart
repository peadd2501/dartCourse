void main () async {
  
  print('Inicio del programa');
  
  try{
      final value = await httpGet('https://www.google.com.gt');
    print(value);
  }catch(err){
    print('Hay un error: $err');
  }

  
  
  print('Fin del programa');

}

Future<String> httpGet( String url ) async {
 
  await Future.delayed( const Duration(seconds: 1));
  
  throw 'Error en la peticion';
  
  // return 'Respuesta de la peticion HTTP';
 
  
}