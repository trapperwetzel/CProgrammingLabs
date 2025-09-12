#include <stdio.h>

int nextLargestDivisble(int A, int B){
    int greaterNumber;
    
    if(A > B){
        greaterNumber = A;
    }
    else{
        greaterNumber = B;
    }
    while(true){
        if(greaterNumber % B == 0 && greaterNumber != B){
            return greaterNumber;
            
        }
        greaterNumber++;
    }

}


int main() {
    int A; 
    int B; 
    int returnValue;
    printf("Enter number A");
    scanf("%d", &A);
    printf("Enter number B");
    scanf("%d", &B);
    returnValue = nextLargestDivisble(A,B);
    printf("%d", returnValue);
    
}

