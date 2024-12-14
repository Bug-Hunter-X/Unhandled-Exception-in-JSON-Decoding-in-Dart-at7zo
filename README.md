# Unhandled Exception in JSON Decoding (Dart)

This repository demonstrates a common error in Dart: neglecting to handle potential exceptions during JSON decoding. The `jsonDecode` function can throw a `FormatException` if the response body isn't valid JSON, leading to application crashes.

The `bug.dart` file showcases the erroneous code, while `bugSolution.dart` presents a robust solution.

## Bug
The `bug.dart` file contains code that attempts to decode JSON without proper exception handling.  If the API returns an unexpected response or a non-JSON string, the application will crash.

## Solution
The `bugSolution.dart` file demonstrates how to correctly handle potential exceptions:
* A `try-catch` block is used to capture `FormatException` and other exceptions that might occur during `jsonDecode`.
* Specific error messages are provided to improve debugging.
* The solution also addresses error responses (non-200 status codes) from the API.

This comprehensive approach prevents crashes and facilitates graceful error handling within the application.