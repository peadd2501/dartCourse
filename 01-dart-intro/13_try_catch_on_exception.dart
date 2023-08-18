void main () async {
  
  print('Inicio del programa');
  
  try{
      final value = await httpGet('https://www.google.com.gt');
    print('Exito: $value');
  } on Exception catch (err){
   print('Existe una excepcion: $err'); 
  }  
  catch(err){
    print('Algo salio mal: $err');
  }finally{
    print('Fin del try/catch');
  }

  
  
  print('Fin del programa');

}

Future<String> httpGet( String url ) async {
 
  await Future.delayed( const Duration(seconds: 1));
  
  throw Exception('No hay parametros en el URL');
  
  // return 'Respuesta de la peticion HTTP';
 
  
}