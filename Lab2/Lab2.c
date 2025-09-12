#include <stdio.h> 
#include <stdlib.h>
//Write a function called calculateMean in C that calculates the mean of numbers in an
//array using pointer arithmetic. The function
//1. Prompts the user to enter the size of the array. Based on this the program will
//dynamically allocate an array using malloc.
//2. Allows the user to input values into the array.
//3. Use pointer arithmetic (not A[i]) to access the array elements and calculate the mean of the numbers.
//4. Display the calculated mean.
//5. Free the allocated space

double calculateMean(int *arr, int size) {

    int sum;
    
    printf("Enter %d numbers to the array\n", size);
    for(int i = 0; i < size; i++){
        // arr is the place in memory that arr is. Not the actual array "variable" pointer.
        scanf("%d", arr + i);
        sum += *(arr+i); // Sum up each item that the user inputs.
    }
    printf("Sum: %d\n", sum);
    int mean = sum / size;
    return (double) mean;
}




int main(){
    int size;
    double answer;
    printf("Enter the numbers of items in the array: ");
    scanf("%d", &size);

    // allocate our memory/create array
    int *arr = malloc(size * sizeof(int));
    // calculate the mean 
    answer = calculateMean(arr,size);
    printf("Answer: %f", answer);
    return 0;


}
