#include <stdio.h>
#include "helper.h"

void print_message() {
    printf("Math operations ready!\n");
}

int add(int a, int b) {
    return a + b;
}

int multiply(int a, int b) {
    return a * b;
}

int division(int a, int b) {
    if (b!=0) return a * a / b;
    else return 0;
}
