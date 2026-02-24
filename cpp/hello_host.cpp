#include <iostream>  // For console output (std::cout)
#include <cstdlib>   // For std::system()

int main() {
  // Print a simple message
  std::cout << "Hello from C++\n";

  // Execute system command to display hostname
  std::system("hostname");

  return 0;  // Exit successfully
}
