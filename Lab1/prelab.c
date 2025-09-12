#include <stdio.h>
int main() {
    int num;
    printf("Enter a number: \n");
    scanf("%d", &num);
    if(num > 0 ){
        printf("Positive");
    }
    else if(num < 0){
        printf("Negative");
    }
    else{
        printf("Zero");
    }

    int choice;
    printf("\nEnter a number (1-3): \n");
    scanf("%d", &choice);
    switch(choice){
        case 1: 
            printf("Red\n");
            break;
        case 2: 
            printf("Green\n");
            break;
        case 3: 
            printf("Blue\n");
            break;
        default: 
            printf("Invalid choice\n");    
            break;
    }

    int number; 

    do{
        printf("Enter a number!\n");
        scanf("%d", &number);
    } while (number != 0);

    int N, sum = 0;

    printf("Enter a number N: ");
    scanf("%d", &N);
    for(int i = 0; i <= N; i++){
        sum += i;
    }
    printf("Sum: %d\n", sum);

    int x = 5, y = 10;
    printf("X: %d\n", x);
    printf("Y: %d\n", y);
    printf("Address of x: %p\n", (void*)&x);
    printf("Address of y: %p\n", (void*)&y);
    
    return 0;

}