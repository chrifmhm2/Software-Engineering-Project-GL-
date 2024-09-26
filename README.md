# Software Engineering Project: Deca Compiler

## Project Overview

This project involves the development of a compiler for a programming language called Deca, which is a simplified subset of Java. The primary objective is to produce a compiler that can analyze and translate Deca code into assembly language for an abstract machine. The project emphasizes quality assurance and best practices in software development.

## Deca Language

Deca is a small programming language that supports:
- Class declarations
- Field declarations
- Method definitions
- A main program

### Language Features

1. **Hello World Example:**
   ```deca
   {println("Hello world !");}
   ```

2. **Sub-languages:**
   - **Hello-world Language:** Basic output functionality.
   - **Non-Object Language:** No class, attribute, or method declarations, only a main program.
   - **Essential Language:** Supports basic functionality without conversions and class checks.
   - **Full Language:** Supports all features.

3. **File Inclusion:**
   - Files can be included using `#include "file.decah"`.

4. **Standard Library:**
   - Includes searching for files in the current directory and the standard library located at `src/resources/include/`.

## Compiler Functionality

The compiler operates in three main stages:

1. **Single Pass (Stage A):**
   - **Lexical Analysis:** Recognizes individual tokens (words).
   - **Syntactic Analysis:** Validates the sequence of tokens against the language grammar.
   - **Abstract Syntax Tree (AST) Construction:** Builds a structured representation of the source code.

2. **Three Passes over the AST (Stage B):**
   - **Contextual Checks:** Validates program correctness using Deca's assigned grammar.
   - **AST Decoration:** Annotates identifiers with definitions and expressions with types through three distinct passes for classes, fields, and method bodies.

3. **Code Generation (Stage C):**
   - Generates assembly code for an abstract machine, with two passes:
     - **First Pass:** Constructs the method table for classes.
     - **Second Pass:** Compiles the program into executable code.

## Dependencies and Setup

To set up the project, the following tools are required:

- **Java**: The programming language used for the compiler.
- **Maven**: A build automation tool for Java projects.
- **ANTLR**: A powerful parser generator for reading, processing, and executing or translating structured text or binary files.
- **Git**: For version control.
- **Jacoco**: For test coverage reporting.
- **IDE**: Such as NetBeans or Eclipse for development.

### Installation Instructions

1. **Clone the repository:**
   ```bash
   git clone <repository-url>
   ```

2. **Navigate to the project directory:**
   ```bash
   cd <project-directory>
   ```

3. **Compile the project using Maven:**
   ```bash
   mvn compile
   ```

4. **Run the compiler on a Deca file:**
   ```bash
   ./src/main/bin/decac test/deca/.../file.deca
   ```

5. **Run tests and verify the project:**
   ```bash
   mvn test-compile
   mvn verify
   ```

6. **Clean up generated files:**
   ```bash
   mvn clean
   ```

7. **Generate reports and documentation:**
   ```bash
   mvn site
   firefox target/site/index.html
   ```

## Conclusion

This project serves as a comprehensive exploration of compiler design and implementation, focusing on the Deca language and employing various software development methodologies. The goal is to ensure high-quality code while adhering to best practices.
```

