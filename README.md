# Unhandled Exception in Dart Future

This repository demonstrates a common error in Dart asynchronous programming: improper exception handling within a `Future`. The provided code fetches data from a remote API.  The `try-catch` block handles exceptions during the API call, but the `rethrow` statement isn't always ideal.  The solution shows how to improve exception handling to prevent app crashes.

## Bug
The `bug.dart` file contains code with a `Future` that handles exceptions but then re-throws them, potentially crashing the application if not handled further up the call stack.

## Solution
The `bugSolution.dart` file presents improved error handling.  Instead of simply rethrowing, the improved version includes more robust handling.