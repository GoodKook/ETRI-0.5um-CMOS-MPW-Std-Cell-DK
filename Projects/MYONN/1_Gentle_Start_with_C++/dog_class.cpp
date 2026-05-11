//
// Gentle start of C++
// Filename: dog_class.cpp
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

class Dog
{
private:
    char name[32];
    int temperature;

public:
    // Constructor Initialize the class
    Dog(char* petname, int temp)
    {
        strcpy(name,petname);
        temperature = temp;
    }

    // Member function status()
    void status()
    {
        printf("Name: %s\n", name);
		printf("Temp: %d\n", temperature);
    }

    void setTemperature(int temp)
    {
        temperature = temp;
    }

    // This Dog can bark()
    void bark()
    {
        printf("woof!\n");
    }
};

int main()
{
    Dog sizzles((char*)"sizzles", 37);
    Dog mutleys((char*)"mutleys", 36);

	sizzles.status();
	sizzles.bark();

	mutleys.status();
	mutleys.bark();

	sizzles.setTemperature(40);
	sizzles.status();
}
