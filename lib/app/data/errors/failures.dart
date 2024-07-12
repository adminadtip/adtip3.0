abstract class Failure {}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class InternetException extends Failure {}

class RequestTimeOut extends Failure {}

class InvalidUrlException extends Failure {}

class FetchDataException extends Failure {}

