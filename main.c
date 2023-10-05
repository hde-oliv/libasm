#include <stdio.h>

#include "errno.h"
#include "libasm.h"
#include "string.h"

void ft_strcpy_tests(void) {
  char *dst = malloc(40);
  char *xp = "Hello!";

  char *addr = ft_strcpy(dst, xp);
  printf("%s\n", dst);

  printf("%p\n", addr);
  printf("%p\n", dst);
}

void ft_strcmp_tests(void) {
  printf("%d\n", ft_strcmp("LIB", "LIBASM"));
  printf("%d\n", ft_strcmp("LIBASM", "LIB"));
  printf("%d\n", ft_strcmp("L", "L"));
}

void ft_write_tests(void) {
  int ret = ft_write(90, "HAHAHAHA\n", 9);
  printf("%d\n", ret);
  perror("AAAAAAAAAAa");
}

void ft_strdup_tests(void) {
  char *src = "abcd";
  char *ret = ft_strdup(src);

  printf("%s\n", ret);
  printf("%d\n", (int)ft_strlen(ret));

  free(ret);
}

int main() {

  // ft_strcpy_tests();
  // ft_strcmp_tests();
  // ft_write_tests();
  ft_strdup_tests();

  return 0;
}
