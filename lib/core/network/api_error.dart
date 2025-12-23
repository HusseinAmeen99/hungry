class ApiError{
  final String message;
  final int? statusCode;

  ApiError({required this.message,this.statusCode});

 String toString(){
    return 'ApiError(message: $message, statusCode: $statusCode)';

  }



}