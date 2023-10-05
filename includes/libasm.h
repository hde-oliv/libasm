#ifndef LIBASM_H
#define LIBASM_H

#include <stdlib.h>
#include <sys/types.h>

ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strcpy(char *dst, const char *src);
int *ft_strcmp(const char *s1, const char *s2);
size_t ft_strlen(const char *s);
char *ft_strdup(const char *s);

#endif
