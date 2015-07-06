import UIKit
/*:
## Bitmaker Labs Swift Fundamentals = Functions and Methods in Swift
Functions and Methods are a large topic. I will stress however, that they're an important one. If you come from another programming language, you may hear the term **function** and **method** used interchangeably. I'm going to refer to the Swift Programming Language Book for this definition. I would advise following the link for a more detailed explanation of this. [Helpful resourses on Swift Functions should be read before continuing.](https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/Methods.html) . **Methods are functions that are associated with a particular type. Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type. Classes, structures, and enumerations can also define type methods, which are associated with the type itself. Type methods are similar to class methods in Objective-C**

Ok, that's the long version. To put it in a concise manner. Functions are standalone pieces of functionality, while methods are functionality associated enclosed within a **class** **struct** or **enumeration**.

First, let's refresh ourselves with the creation of a simple function

*   func mySimpleFunction() {
*       println("hello, world")
*   }

* The func keyword denotes that this is a function.
* The name of this function is mySimpleFunction.
* There are no parameters passed in — hence the empty ( ).
* There is no return value.
* The function execution happens between the { }.

### Have a go. 
* Create a function that prints your name.
* Create a function that takes your name as a parameter and prints your name
*/



/*:

Great, since you completed the first challenge. This will look very familiar. 

* func myFunctionName(param1: String, param2: Int) -> String {
* return "hello, world!"
* }

This new function, takes two parameters of type **String** and type **Int** the **->** indicates that this function returns a string. In this example, it returns a the String "hello, world!"

### Have a go, update this function so that it returns both the passed String and an Integer. This could be your name and your age.

*/

/*:

## Calling Functions

One thing we have to be aware of when writing Swift code. Is how parameters work. Let's look at the following example.

*   func hello(name: String) {
*       println("hello \(name)")
*   }
*   calling the function would be as follows. **hello("Kwame")**. This doesn't look to bad, this issue that I do want to bring up is that having a function/method with multiple parameters is quite common. Let's look at another example.

*   func hello(name: String, age: Int, location: String) {
*       println("Hello \(name). I live in \(location) too. When is your \(age + 1)th birthday?")
*   }

*   hello("Kwame Bryan", 39, "Courtice")

Working with the above function, it's difficult to know which each parameter is. 



*/


