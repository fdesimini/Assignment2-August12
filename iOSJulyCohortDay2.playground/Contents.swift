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

Working with the above function, it's difficult to know which each parameter is. Swift has a concept called external parameter name to clarify sometimes confusing syntax.

*   func hello(fromName name: String) {
*       println("\(name) says hello to you!")
*   }

*   hello(fromName: "Kwame Bryan")

### Have a go. Create a function that uses the **external parameter name** concept. In your challenge, instead of a string use an Integer value.
*/

/*:
Now, you may be asking. What if the name of the variable is the name I want for the external parameter name. Do I need to write this twice? Lucky for us, this is not the case. Swift has a handy operator we can use for these types of situations. Looking back at our previous example.

* func hello(#name: String) {
*   println("Hello \(name)")
* }
We now get:
* hello(name:"Kwame Bryan")
*/

/*:
 ## More on Parameters in Swift

Compared to Objective-C, Swift has a lot of extra options for what type of parameters can be passed in. Here are some examples.

## Variadic Parameters

In Swift, there is a new concept of optional types:

**Optionals say either “there is a value, and it equals x” or “there isn’t a value at all.” Optionals are similar to using nil with pointers in Objective-C, but they work for any type, not just classes. Optionals are safer and more expressive than nil pointers in Objective-C and are at the heart of many of Swift’s most powerful features.**

To indicate that a parameter type is optional (can be nil), just add a question mark after the type specification:

* func myFuncWithOptionalType(parameter: String?) {
*       // function execution
* }

myFuncWithOptionalType("someString")
myFuncWithOptionalType(nil)

One caveat, that you should be aware of is that when working with optional parameters. You are forced to unwrap.

*   func myFuncWithOptionalType(optionalParameter: String?) {
*       if let unwrappedOptional = optionalParameter {
*           println("The optional has a value! It's \(unwrappedOptional)")
*      } else {
*           println("The optional is nil!")
*       }
*   }

* myFuncWithOptionalType("someString")
* // The optional has a value! It's someString

* myFuncWithOptionalType(nil)
* // The optional is nil

## Parameters with Default Values

* func hello(name: String = "you") {
* println("hello, \(name)")
* }

* hello(name: "Kwame Bryan")
* // hello, Kwame Bryan

* hello()
* // hello, you

Note that a parameter with a default value automatically has an external parameter name.

And since parameters with a default value can be skipped when the function is called, it is best practice to put all your parameters with default values at the end of a function’s parameter list. 

Here is a note from the [Swift Programming Language Book on the topic.](https://developer.apple.com/library/mac/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html):
Place parameters with default values at the end of a function’s parameter list. This ensures that all calls to the function use the same order for their non-default arguments, and makes it clear that the same function is being called in each case.
I’m a huge fan of default parameters, mostly because it makes code easy to change and backward compatible. You might start out with two parameters for your specific use case at the time, such as a function to configure a custom UITableViewCell, and if another use case comes up that requires another parameter (such as a different text color for your cell’s label), just add a new parameter with a default value — all the other places where this function has already been called will be fine, and the new part of your code that needs the parameter can just pass in the non-default value!

*/

/*:

## Variadic Parameters

Variadic parameters are simply a more readable version of passing in an array of elements. In fact, if you were to look at the type of the internal parameter names in the below example, you’d see that it is of type [String] (array of strings):

* func helloWithNames(names: String...) {
* for name in names {
* println("Hello, \(name)")
* }
* }

* // 2 names
* helloWithNames("Mr. Bryan", "Mr. Lattner")
* // Hello, Mr. Bryan
* // Hello, Mr. Lattner

* // 4 names

* helloWithNames("Batman", "Superman", "Wonder Woman", "Catwoman")
* // Hello, Batman
* // Hello, Superman
* // Hello, Wonder Woman
* // Hello, Catwoman

The catch here is to remember that it is **possible to pass in 0 values**, just like it is possible to pass in an empty array, so don’t forget to check for the empty array if needed:

* func helloWithNames(names: String...) {
*  if names.count > 0 {
* for name in names {
* println("Hello, \(name)")
* }
* } else {
* println("Nobody here!")
* }
* }

* helloWithNames()
* // Nobody here!


*/

