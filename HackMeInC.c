#include <stdio.h>
#include <stdlib.h>

int main()

{

char user_input[64];
char age[32];

printf("What is your name?: ");
scanf("%s", user_input);
system(user_input);
printf("What is your age?: ");
scanf("%s", age);
system(age);
printf("Your name is %s, and you are %s years old.", user_input, age);
printf("\n\n");
return 0; 
}
