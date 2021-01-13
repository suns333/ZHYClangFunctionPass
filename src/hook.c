//
//  hook.c
//  Cdemo
//
//  Created by 周洋 on 2021/1/5.
//  Copyright © 2021 周洋. All rights reserved.
//

#include <stdio.h>
#include <sys/time.h>
#include "time.h"

long my_fun_b()
{
  _STRUCT_TIMEVAL star;
  gettimeofday(&star, NULL);
  long b = star.tv_sec * 1000000 + star.tv_usec;
  return b;
}

void my_fun_e(char *name, long b)
{
  _STRUCT_TIMEVAL end;
  gettimeofday(&end, NULL);
  long e = end.tv_sec * 1000000 + end.tv_usec;
  long t = e - b;
  printf("%s %ld us\n",name, t);
}
