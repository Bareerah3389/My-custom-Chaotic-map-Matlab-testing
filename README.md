# My-custom-Chaotic-map-Matlab-testing
MATLAB implementation and testing of a custom chaotic map for cryptographic and random number generation applications.
# My Custom Chaotic Map MATLAB Testing

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

This repository contains MATLAB code for implementing and testing a **custom chaotic map**.  
The project analyzes the chaotic behavior of the system for applications in **random number generation, cryptography, and image encryption**.

---

## 🚀 Features
- MATLAB implementation of a quartic chaotic map
- Adjustable parameters for experimentation
- Simple and lightweight testing scripts
- Potential for cryptographic and image processing applications

---

## 📂 Repository Structure
my-custom-chaotic-map-matlab-testing
┣ 📜 main.m # Main MATLAB script
┣ 📜 LICENSE # Apache 2.0 License
┗ 📜 README.md # Project documentation

---

## 🔧 Example Usage
Here’s a simple example of running the chaotic map in MATLAB:

```matlab
% Example Chaotic Map Iteration
clc; clear; close all;

% Parameters
a = 0.34;
b = 0.397;
V1 = -75;
gamma = 4.91;

% Initial seed
x = 0.5;

% Number of iterations
n = 20;

% Run the chaotic map
for i = 1:n
    x = mod(V1 * x + gamma * (V1 * x) - a * x^2 + b * x^2, 1);
    fprintf('Iteration %d: %.6f\n', i, x);
end

Applications

Random number generation

Image encryption

Nonlinear system analysis

Cryptographic testing

📝 License

This project is licensed under the Apache License 2.0 – see the LICENSE
 file for details.

👩‍💻 Author

Bareerah Saeed
📌 GitHub: BareerahSaeed
