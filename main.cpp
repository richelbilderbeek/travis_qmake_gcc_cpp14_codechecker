#include <cassert>
#include <iostream>

int main() 
{
  #ifdef NDEBUG
  #error Must use scan-build in debug mode
  #endif
  int a[3] = { 0, 1, 2 };
  a[4] = 0; // Access violation!
  std::cout << a[5] << '\n'; //Access violation!
}
