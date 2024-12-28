# String Calculator Kata

This project is a Ruby implementation of the **String Calculator Kata**, following the principles of **Test-Driven Development (TDD)**. It provides a simple calculator to sum numbers from a string input with support for various delimiters, error handling, and edge cases.

---

## Features

- **Adds numbers from a string with a comma as the default delimiter**:
  Input: `"1,2,3"` → Output: `6`
- **Supports custom delimiters, including `;`, newline (`\n`), and spaces**:
  Input: `"//;\n1;2"` → Output: `3`
- **Handles invalid input and raises errors with clear messages**:
  Input: `"1, a, 3"` → Error: `"Invalid character found: a"`
- **Throws an exception for negative numbers, listing all of them**:
  Input: `"-1,2,-3"` → Error: `"Negative numbers not allowed -1,-3"`
- Fully tested using **RSpec** to ensure robustness.

---

## Prerequisites

- Ruby 2.7+ or 3.0+
- Bundler installed (`gem install bundler`)

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/snehanamdev8/String-Calculator-Kata.git
