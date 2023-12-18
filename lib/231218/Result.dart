enum ResultStatus { success, failed }

class Result<T> {
  final Exception? error;
  final T? value;
  final ResultStatus status;

  Result.success(this.value)
      : status = ResultStatus.success,
        error = null;

  Result.failure(this.error)
      : status = ResultStatus.failed,
        value = null;
}