#include <stdio.h>

int main() {

    // define all variables for both questions 
    int studentId;
    float gpa;
    double height;
    char section;
    int radius;
    float area;
    float circumference;
    const float PI = 3.14;

    // Question 1 
    printf("Enter your Student ID: ");
    scanf("%d", &studentId);

    printf("Enter your GPA: ");
    scanf("%f",&gpa);

    printf("Enter your height: ");
    scanf("%lf",&height);

    printf("Enter your section: ");
    scanf(" %c", &section);

    printf("\nYour student ID is %d\n", studentId);

    printf("Your GPA is %f\n",gpa);

    printf("Your height is %lf\n", height);

    printf("Your section is %c\n\n", section);
    

    // Question 2
    printf("Enter radius: \n");
    scanf("%d", & radius);

    circumference = 2*PI*radius;
    area = PI * (radius * radius);

    // print out our circumference, area, and memory address.
    printf("Circumference of the circle: %f\n", circumference);
    printf("Area of the circle is: %f\n", area);
    printf("The memory address of the radius is %p\n", (void*)&radius);


    return 0;


}