/**
 * The ClassesObjectsMethods class serves as an exploration into Object Oriented Programming in Apex.
 * It covers fundamental aspects such as class instantiation, method creation, encapsulation, and object interaction.
 *
 * This class introduces developers to the concept of creating and manipulating objects in Apex. It discusses
 * how to define classes, create methods, and use objects. This class uses two example classes - Person and Book.
 * 
 * Topics covered in this class include:
 * - Understanding how to define a class in Apex.
 * - Understanding how to create methods in Apex.
 * - Understanding how to instantiate objects of a class.
 * - Understanding encapsulation and the importance of getter and setter methods.
 *
 * Users of this class can expect to gain a strong understanding of Object Oriented Programming in Apex and
 * be prepared for more advanced topics in Salesforce development.
 * 
 * The Person class is a simple representation of a person with properties like name and age, and a method
 * that allows the person to introduce themselves.
 * 
 * The Book class is a simple representation of a book with properties like title and author, and methods
 * to read and close the book.
 * 
 * Resources:
 * String class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm
 * Date class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm
 * Math class: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm
 * Classes: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_understanding.htm
 *
 * @author Your Name
 */

public with sharing class ClassesObjectsMethods {
    
    /**
     * Question 1
     * It initializes a String to "Hello, Salesforce!" and demonstrates usage of
     * the length, substring, and toLowerCase methods of the String class.
     * Example: practiceStringMethods() should return a list like ["17", "Hello", "hello, salesforce!"].
     * @return A list containing the length of the string, a substring of the string, and the string in lower case.
     */
    public static List<String> practiceStringMethods() {
        // Initialize a String with 'Hello, Salesforce!'
        String myString = 'Hello, Salesforce!';
        // Declare a list to store the results
        List<String> resultList = new List<String>();
        // Get the length of the String and convert it to a string for later
        String stringLength = String.valueOf(myString.length());  
        // Get a substring of the String of the first 5 characters
        String substringString = myString.substring(0, 5);
        // Convert the String to lower case
        String lowerCaseString = myString.toLowerCase();
        // Log the lowercase string for debugging purposes
        System.debug(lowerCaseString); // Output will be: "hello, salesforce!"
        // In the first position add the string length 
        resultList.add(stringLength); // Adds the length to index 0
        // In the second position add the substring (index 1)
        resultList.add(substringString); // Adds the substring to index 1
        // In the third position add the string in lower case
        resultList.add(lowerCaseString); // Adds lowercase string to index 2
         // Return the list with the string data
         return resultList;
    }

    /**
     * Question 2
     * Check if the input string starts with 'Sales', ends with 'Force', and contains 'Awesome'.
     * Example: checkStringContent('Salesforce is Awesome!') should return a list like [true, false, true].
     * @param input The input string.
     * @return A list of boolean values indicating whether the string starts with 'Sales', ends with 'Force', or contains 'Awesome'.
     */
    public static List<Boolean> checkStringContent(String input) {
        // Initialize a list to store the results
        List<Boolean> resultList = new List<Boolean>();
        // Check if the string starts with 'Sales'
        Boolean startsWithSales = input.startsWith('Sales');
        // Check if the string ends with 'Force'
        Boolean endsWithForce = input.endsWith('Force');
        // Check if the string contains 'Awesome'
        Boolean containsString = input.contains('Awesome');
        // Add the results to the list
        resultList.add(startsWithSales); // Adds true or false if the input starts with 'Sales'
        resultList.add(endsWithForce); // Adds true or falsoe if the input ends with 'Force'
        resultList.add(containsString); // Adds true or false if the input contains 'Awesome'
        // Return the list with the boolean values
        return resultList;
    }

    /**
     * Question 3
     * Take a sentence then remove any duplicate words, and return the sentence with only unique words.
     * Example: removeDuplicateWords('Hello Hello Salesforce Salesforce') should return 'Hello Salesforce'.
     * @param sentence The input sentence.
     * @return A string consisting of only unique words from the input sentence.
     */
    public static String removeDuplicateWords(String sentence) {
        // Split the sentence into words using a space as a delimiter
        String[] words = sentence.split (' '); // no space between split and parenthesis
        // Create a set to store the unique words
        Set<String> uniqueWords = new Set<String>();
        // Add each word to the set
        for (String word : words) {
            uniqueWords.add(word);
        }
        // Join the unique words back into a sentence
        // 'String.join' combines elements of the set into a single string separated by spaces
        String result = String.join(' ', uniqueWords); 
        // Return the sentence with unique words
        return result;
    }

    /**
     * Question 4
     * This method takes a string as a parameter, and calculates the number of vowels in the string.
     * For simplicity, we will consider only five vowels: 'a', 'e', 'i', 'o', 'u', and we will ignore case.
     * Example: countVowels("Hello World!") should return 3
     * @param s The string in which to count vowels.
     * @return The number of vowels in the string.
     */
    public static Integer countVowels(String str) {
    // Initialize the result Integer (counter) to count the number of vowels found
    Integer vowelCount = 0;
    
    // Convert string to lowercase so we can easily check for vowels
    String lowerCaseString = str.toLowerCase();
    
    // Loop through the string and check if each character is a vowel 
    for (Integer i = 0; i < lowerCaseString.length(); i++) {
        // Get the character at the ith position
        char currentChar = lowerCaseString.charAt(i);

        // Check if the character is a vowel: 'a', 'e', 'i', 'o', or 'u'
        if (currentChar == 'a' || currentChar == 'e' || currentChar == 'i' || 
            currentChar == 'o' || currentChar == 'u') {
            // If it is a vowel, increment the vowelCount
            vowelCount++;
        }
    }
    
    // Return the total number of vowels in the string
    return vowelCount;
 }
         
    /**
     * Question 5
     * Given a list of scientist names, combine their names together with a comma if it contains the letter 'g'.
     * The final string should not end with a comma.
     * Example: findTheScientist() should return "Alan Turing,Grace Hopper,Guido van Rossum,Stephen Hawking"
     * @return A string containing the names of scientists that contain the letter 'g'.
     */
    public static String findTheScientist() {
        // The list of scientists' names
        List<String> scientistNames = new List<String>{'Tim Berners-Lee', 'Alan Turing', 'Grace Hopper', 'Donald Knuth', 'Guido van Rossum', 'Ken Thompson', 'Stephen Hawking'};

        // List to store names containing the letter 'g'
        List<String> namesWithG = new List<String>();

        // Loop through the list of scientists' names
        for (String name : scientistNames) {
            // Check if the name contains the letter 'g'(case insensitive)
            if (name.toLowerCase().contains('g')) {
            // add the name to the list of names containing 'g'
            namesWithG.add(name);
             }
        }
        // Join the list elements into a single string separated by a comma and space
        // Automatically handles formatting so no need to manually remove comma
        String result = String.join(', ', namesWithG);
        // Return the final String
        return result;
    }
        

    /**
     * Question 6
     * This method calculates the absolute value of the difference between of two input numbers that are raised to the 2nd power.
     * Example: calculateDifferenceOfSquares(3, 4) should return 7.
     * @param a The first number.
     * @param b The second number.
     * @return The absolute value of the difference
     */
    public static Double calculateDifferenceOfSquares(Double a, Double b) {
        // Square the input numbers using the Math.pow() function
        Double aSquared = Math.pow(a, 2);
        Double bSquared = Math.pow(b, 2);
        // Calculate the absolute difference using Math.abs()function
        Double difference = Math.abs(aSquared - bSquared); //computes the absolute value of the difference between the squares of a and b
        // Return the result
        return difference; // returns the calculated absolute difference as a Double
    }

    /**
     * Question 7
     * Generate a random number between 50 and 100
     * Example: generateRandomNumber() should return a number like 75.
     * @return A integer between 50 and 100.
     */
    public static Integer generateRandomNumber() {
        // Use Math class to generate number between 50 and 100
        Integer randomNumber = 50 + (int)(Math.random() * 51);
        // Return the random integer
        return randomNumber;
    }

    /**
     * Question 8
     * Format the current date in the current user locale format.
     * Example: getCurrentDate() should return a string like "3/21/2001" for US locale users. Locale/String may differ depending on your location.
     * @return The current date in the current user locale format.
     */
    public static String getCurrentDate() {
        // Get the todays date
        Datetime currentDateTime = System.now();
        // Format the current date
        String formattedDate = currentDateTime.format();
        // Return the result
        return formattedDate;
    }

    /**
     * Question 9
     * Given a date time return the day of the week in number format
     * @param dt the current date and time
     * @return The number of the day of the week for the given date.
     */
    public static String getDayOfWeek(DateTime dt) {
        // Define a map of day of the week as a key and day number as the value
        // Monday = 1, Tuesday = 2, etc.
        Map<String, Integer> dayOfWeekMap = new Map<String, Integer>{
            'Monday' => 1,
            'Tuesday' => 2,
            'Wednesday' => 3,
            'Thursday' => 4,
            'Friday' => 5,
            'Saturday' => 6,
            'Sunday' => 7
        };
        // Get the day name using .format('EEEE');
        String dayName = dt.format('EEEE');
        // Get the day number from the map using the day name
        Integer dayNumber = dayOfWeekMap.get(dayName);
        // Return the result as a string
        return String.valueOf(dayNumber);
    }
        
    /**
     * Question 10
     * Calculate the difference between the years of two dates
     * For example, if the first date is 2023-01-01 and the second date is 2025-12-31, the method should return 2
     * If either of the dates is null, return null.
     * @param d1 The first date.
     * @param d2 The second date.
     * @return The a positive number years between the two dates, or null if either date is null.
     */
    public static Integer calculateYearDifference(Date d1, Date d2) {
       // Check if either date is null, return null if true
       if (d1 == null || d2 == null) {
        return null;
    }
      // Get the years from the dates
      Integer year1 = d1.year();
      Integer year2 = d2.year();

      // Subtract the difference in years and get the absolute value
      Integer yearDifference = Math.abs(year1 - year2);

      // Return the result
      return yearDifference;
    }

    /**
     * Question 11
     * The Book class represents a book in a library. 
     * Each Book object has a title and an author, and methods to return these details.
     * This class can be used in the context of a library management system, bookstore, etc.
     * where you need to manipulate and manage book information.
     */
    public class Book {
          // Declare three public instance variables - title, author, pages
         public String title;
         public String author;
         public Integer pages;

         // Book constructor to initialize the title and author
        public Book(String title, String author) {
        // Initialize the title and author
        this.title = title;
        this.author = author;
    }

    // Method that returns the details of the book
    public String getBookDetails() {
        // Return a string containing the details of the book in the format "Title: <title>, Author: <author>"
        return 'Title: ' + this.title + ', Author: ' + this.author;
    }


    /**
     * Question 12
     * Create a Book object and returns the details of the book.
     * For example, createAndGetBookDetails() should return a string like "Title: A Brief History of Time, Author: Stephen Hawking".
     * @return A string containing the details of the book.
     */
    public static String createAndGetBookDetails() {
        // Create a Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book topRatedBook = new Book('A Brief History of Time', 'Stephen Hawking');
        // Call the getBookDetails method on the book object to get the details of the book
        String bookDetails = topRatedBook.getBookDetails();
        // Return the details of the book
        return bookDetails; 
        }

    /**
     * Question 13
     * Create and update two Book objects and returns the books.
     * For example, generateBookList(Book) should return a list like ["Title: Harry Potter and the Chamber of Secrets, Author: J.K. Rowling", "Title: A Brief History of Time, Author: Stephen Hawking"].
     * Update Book 1 values: title = "Harry Potter and the Chamber of Secrets", author = "J.K. Rowling", pages = 352
     * Book 2 values: title = "A Brief History of Time", author = "Stephen Hawking"
     * @param myBook1 The first book object.
     * @return return a list of books.
     */
    public static List<Book> generateBookList(Book myBook1) {
        // Create a list of books to initialize an empty list to store books
        List<Book> bookList = new List<Book>();
        // Update the title and author of myBook1
        myBook1.title = 'Harry Potter and the Chamber of Secrets';
        myBook1.author = 'J.K. Rowling';
        // Update the pages for myBook1 to 352
        myBook1.setPages(352);
        // Create a new Book object with title "A Brief History of Time" and author "Stephen Hawking"
        Book book2 = new Book('A Brief History of Time', 'Stephen Hawking');
        // Update the pages for A Brief History of Time to 256
        book2.setPages(256);
        // Add the book to the list
        bookList.add(myBook1);
        bookList.add(book2);
        //Return the list containing the updated book objects
        return bookList;      
    }


    /**
     * Question 14
     * The Person class represents a person.
     * Each Person object has a name and an age, and methods to return these details.
     * This class can be used in the context of a school, college, etc.
     * where you need to manipulate and manage person information.
     */
    public class Person {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        // Constructor to initialize the name and age
        public Person(String name, Integer age) {
            this.name = name;
            this.age = age;
        }
        // Method introduceYourself that returns the details of the person        
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."
        public String introduceYourself() {
            return 'Hello, my name is ' + this.name + ' and I am ' + this.age + ' years old.';
        }
        // Getter method that returns the name of the person
        public String getName() {
            return this.name;
        }
        // Getter method that returns the age of the person
        public Integer getAge() {
            return this.age;
        }
        // Setter method that sets the name of the person
        public void setName(String name) {
            this.name = name;
        }
        // Setter method that sets the age of the person
        public void setAge(Integer age) {
            this.age = age;
        }
    }

    /**
     * Question 15
     * Create a Person object and returns the details of the person.
     * For example, personDetails() should return a list like ["Hello, my name is John Doe and I am 28 years old.", "John Doe", "28"].
     * @return A string containing the details of the person.
     */

    public static List<String> personDetails() {
        // Create a list to store the results
        List<String> results = new List<String>();
        // Create a new instance of Person class with name 'John Doe' and age 28
        Person person = new Person('John Doe', 28);
        // Add the details of the person using the introduceYourself method
        results.add(person.introduceYourself());
        // Get the name of the person using the getter method and add it to the list
        results.add(person.getName());
        // Get the age of the person using the getter method and add it to the list
        results.add(String.valueOf(person.getAge()));
        // Return the list containing the details of the person
        return results; 
        }

    /**
     * Question 16
     * Create a Person object with the provided name and age.
     * @param name The name of the person.
     * @param age The age of the person.
     * @return A new instance of the Person class.
     */
    public static Person createPerson(String name, Integer age) {
        // Create a new instance of the Person class using the provided name and age
        Person newPerson = new Person(name, age);
        // Return the new instance of the Person class
        return newPerson;
    }
      
    /**
     * Question 17
     * Create a method that constructs multiple Person objects.
     * You are to create a new Person object for each name in the provided List<String> of names,
     * using the same age for all Person objects. The method should return a List<Person> of all the Person objects created. 
     * @param names A list of names.
     * @param age The age to be set for all the Person objects.
     * @return A list of new Person objects.
     */
    public static List<Person> createMultiplePersons(List<String> names, Integer age) {
    /// Create a list to store Person objects
    List<Person> personList = new List<Person>();

    // Loop through each name in the provided list of names
    for (String name : names) {
        // Create a new Person object for each name
        Person newPerson = new Person(name, age);
        // Add the new Person object to the list of Person objects
        personList.add(newPerson);
    }
    // Return the list of Person objects
    return personList; 
    }
}
 /**
     * Question 18
     * Compare two Person objects based on their ages.
     * If the first Person is older, the method should return the first Person. If the second Person is older, it should return the second Person.
     * If they are the same age, return either.
     *
     * @param person1 The first Person object.
     * @param person2 The second Person object.
     * @return The Person object of the older person.
     */
    public static Person getOlderPerson(Person person1, Person person2) {
        // Compare the ages of the two Person objects
    if (person1.getAge() > person2.getAge()) {
        // If person1 is older, return person1
        return person1;
    } else if (person1.getAge() < person2.getAge()) {
        // If person2 is older, return person2
        return person2;
    } else {
        // If both are of the same age, return either person1 or person2
        return person1; // You can return either person1 or person2
    }
}
}