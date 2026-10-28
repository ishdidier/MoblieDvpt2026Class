# Practical Assignment, Unit 1: Dart Basics

## Project: "Smart Student Tracker" (Dart only)



You will build **one small program** step by step. Each stage adds to the stage before, so **do not delete your old work**. You only need **Dart and VS Code**. No phone or emulator is needed yet.

| Stage | You learn | Your program gets |
| --- | --- | --- |
| 1 | Install Dart + VS Code | A computer ready to code |
| 2 | First program | A welcome message |
| 3 | Variables and data types | A student profile |
| 4 | `if`, `else if`, `switch` | Pass/fail and grades |
| 5 | Loops | A list of marks processed |
| 6 | Put it all together | A final Report Card |

**Rules:** work alone, type the code yourself, and take a **screenshot** at each checkpoint.

---

## Stage 1: Install your tools

### 1.1 Install Visual Studio Code

1. Download VS Code and run the setup.
2. Accept the license.
3. Choose where to install it.
4. Select the options, then click Install.
5. Open VS Code to check that it works.

### Task 1.2 Install the Flutter SDK (it includes the Dart SDK)

1. Download the Flutter SDK, extract it to a simple path (e.g. `C:\src\flutter`, with no spaces).
2. Add `flutter\bin` to your system **PATH**.
3. In VS Code, install the **Flutter** and **Dart** extensions.
4. Open a terminal and run:

```bash
flutter --version
dart --version
flutter doctor
flutter doctor --android-licenses
```

5. Fix every item marked ✗ in `flutter doctor` until the Android toolchain and VS Code show ✓.

### 1.3 Add the Dart extension

In VS Code, open **Extensions**, search for **Dart**, and click Install.

### 1.4 Check that it works

Open the terminal and type:

```
dart --version
```

You should see a version number.

> **Checkpoint 1:** screenshot of `dart --version`.

---

## Stage 2: Your first Dart program

In the terminal, type:

```
dart create student_tracker
cd student_tracker
dart run
```

Open the file `bin/student_tracker.dart`. Delete everything and write:

```dart
void main() {
  print('Welcome to Smart Student Tracker');
}
```

Run it again with `dart run`.

**Your turn:** add two more `print` lines: your name and today's date.

> **Checkpoint 2:** screenshot of the output. **Question:** write 2 reasons why Dart is a good language for mobile apps.

---

## Stage 3: Variables and data types

A **variable** is a box that stores a value. Rule: `Type name = value;`

| Keyword | Meaning |
| --- | --- |
| `var` | Dart guesses the type. The value can change. |
| `final` | Set **once** while the program runs. |
| `const` | Set **once** and known before the program runs. |

### Task 3.1: Your profile

Write this in `main()` and replace each `TODO`:

```dart
void main() {
  const schoolName = 'TODO';     // never changes
  final studentName = 'TODO';    // set once
  var age = 0;                   // TODO: your age
  double height = 0.0;           // TODO: your height in meters
  bool isBoarding = false;       // TODO: true or false
  String? nickname;              // no value yet

  // TODO: print all 6 variables
}
```

### Task 3.2: Explore

1. Print `age.runtimeType` and `height.runtimeType`.
2. Add the line `age = 'twenty';`. Read the error. Why does Dart refuse?
3. Try to change `studentName` and `schoolName` after you created them. Write down the errors.
4. Print `nickname`. What do you see? Why?

### Task 3.3: Strings

Print `Alice is 17 years old.` two ways:

- with `+`
- with interpolation: `'$studentName is $age years old.'`

### Task 3.4: Numbers

Create `int mathMark`, `int englishMark`, `int scienceMark` (values from 0 to 100). Print the `total` and the `average` (use `/`). Then print `total ~/ 3`. What is the difference between `/` and `~/`?

> **Checkpoint 3:** screenshot of code and output. Fill in a table: *variable | keyword | type | why*.

---

## Stage 4: Making decisions

### Task 4.1: `if` and `else`

Using your `average`: print `PASS` if it is **50 or more**, otherwise `FAIL`.

### Task 4.2: `else if` for the grade

| Average | Grade |
| --- | --- |
| 80 to 100 | A |
| 70 to 79 | B |
| 60 to 69 | C |
| 50 to 59 | D |
| below 50 | F |

Test **5 different sets of marks** and write the results in a table.

### Task 4.3: Check the marks

If any mark is below 0 or above 100, print `Invalid mark`. (Hint: use `||` which means "or".)

### Task 4.4: `switch`

```dart
int choice = 2;
switch (choice) {
  case 1:
    print('View profile');
    break;
  case 2:
    // TODO: print 'View marks'
    break;
  case 3:
    // TODO: print 'View grade'
    break;
  default:
    // TODO: print 'Invalid option'
}
```

Change `choice` to 1, 3 and 9 and see what happens.

> **Checkpoint 4:** screenshots of your 5 tests. **Question:** when is `switch` better than `else if`?

---

## Stage 5: Loops (repeating code)

Now we use a **list** instead of three separate marks:

```dart
List<int> marks = [65, 48, 90, 72, 55, 30, 81];  // TODO: add 3 more marks
```

### Task 5.1: `for` loop

Print the multiplication table of 7 (from 7 x 1 to 7 x 12).

### Task 5.2: `for-in` loop

Use `for (var m in marks)` to find and print the **total**, **highest**, **lowest** and **average**.

### Task 5.3: `while` loop

Count how many marks are **50 or more** and how many are **below 50**.

### Task 5.4: `do-while` loop

Start with `int choice = 3;`. Print `Menu number: 3`, then reduce `choice` by 1, and repeat until `choice` is 0. Why does a `do-while` always run **at least once**?

### Task 5.5: `break` and `continue`

- Use `continue` to **skip** marks below 50 (print only the passing marks).
- Use `break` to **stop** at the first mark above 85.

### Task 5.6: Challenge

For every mark, print one line like this, using your grade code from Stage 4:

```
Mark: 72 -> Grade: B
```

> **Checkpoint 5:** code and output for 5.1 to 5.6. Fill in a table: *loop | when to use it*.

---

## Stage 6: Final Report Card

Put everything in one program. The output should look like this:

```
=============================
 SMART STUDENT TRACKER
 School : ...
 Student: ... (Age: ...)
=============================
 1 | 65 | C
 2 | 48 | F
 ...
-----------------------------
Total: ...   Average: ...
Highest: ...   Lowest: ...
Passed: ...   Failed: ...
Overall result: PASS or FAIL
=============================
```

**Your program must have:**

- `const`, `final` and `var`, at least one of each
- a list of at least 8 marks
- `for-in` and one other loop
- `if / else if / else` for grades, and one `switch`
- `break` or `continue` at least once
- string interpolation in every printed line
- comments (`// ...`) explaining each part

> **Final checkpoint:** your code, a screenshot of the output, and 5 lines about what was hardest for you.

---

## Marks (100)

| What | Marks |
| --- | --- |
| Stage 1: Tools installed and working | 10 |
| Stage 2: First program | 5 |
| Stage 3: Variables and types | 25 |
| Stage 4: Decisions | 20 |
| Stage 5: Loops | 25 |
| Stage 6: Final Report Card | 10 |
| Clean code: good names, comments | 5 |

**Submit:** a folder called `Firstname_Lastname_Unit1` with your `student_tracker` project, your screenshots, and your written answers.

---

## Coming next

You will **keep this project** and improve it in the next lessons: functions, classes (OOP), packages, and finally a mobile app screen.

> **Tip:** after each stage, run `dart run` and make sure it works before you start the next one.