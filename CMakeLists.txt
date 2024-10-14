cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

set(CMAKE_CXX_STANDARD 17)

# Створення статичної бібліотеки
add_library(calculator STATIC calculator.cpp)

# Виконуваний файл
add_executable(main main.cpp)

# Підключення бібліотеки до виконуваного файлу
target_link_libraries(main calculator)
