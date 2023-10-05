#include <stdio.h>

#include "libasm.h"

int main() {
  char *dst = malloc(40);
  char *xp = "Hello!";

  ft_strcpy(dst, xp);
  printf("%s\n", dst);
}
