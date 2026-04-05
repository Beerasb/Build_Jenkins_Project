#include <stdio.h>
#include "helper.h"

int main() {
    print_message();
    printf("1 + 9 = %d\n", add(1, 9));
    printf("4 * 5 = %d\n", multiply(4, 5));
    printf("4 * 2 = %d\n", division(4, 2));
    return 0;
}
