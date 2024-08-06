//
//
//
#include <stdio.h>

template <typename T>
class complex_t
{
    T image;
    T real;
public:
    complex_t(int x, int y)
    {
        image = x;
        real = y;
    }

    T get_real()
    {
        return real;
    }

    T get_image()
    {
        return image;
    }
};

int main()
{
    complex_t<float> x( 1, 2);
    complex_t<int> y( 3, 4);

    //printf("%f %d\n", x.real, y.image);
    printf("%f %d\n", x.get_real(), y.get_image());
    return 0;
}
