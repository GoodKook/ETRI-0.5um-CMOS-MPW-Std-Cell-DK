//
// Filename: templated_class.cpp
//      Simple example for Templated Class
//
// Compile: gcc -o templated_class templated_class.cpp -lm
//
#include <stdio.h>
#include <string.h>
#include <math.h>

// Ex1. --------------------------------------------------------
template <typename T>
class complex_t
{
    T image;
    T real;

    public:
    complex_t(int x, int y) // Constructor
    {
        image = x;
        real = y;
    }

    // Member functions for Accessing privates
    T get_real()
    {
        return real;
    }

    T get_image()
    {
        return image;
    }

    T conjugate()
    {
        return((real*real)-(image*image));
    }

    T Power()
    {
        return (sqrt(abs(conjugate())));
    }
};

// Ex1. --------------------------------------------------------
template <u_int N>
class bit_vector_t
{
    bool m_next_val[N];
    bool m_curr_val[N];
    int  nLen;

    char m_sz_val[N+1];

    public:
    bit_vector_t():nLen((int)N)
    {
        for (int i=0; i<N; i++) m_next_val[i] = false;
        for (int i=0; i<N; i++) m_curr_val[i] = false;
    }

    bit_vector_t(const char* szVal):nLen((int)N)
    {
        write(szVal);
    }

    void update(void)
    {
        m_curr_val = m_next_val;
    }

    bool notyfy_event()
    {
        if (m_curr_val != m_next_val)   return true;
        else                            return false;
    }
    
    char* to_string()
    {
        for (int i=0; i<(int)N; i++)
            if (m_curr_val[i])  m_sz_val[i] = '1';
            else                m_sz_val[i] = '0';

        m_sz_val[N] = '\0';
        return m_sz_val;
    }

    void write(const char* szVal)
    {
        if ((int)strlen(szVal)!=nLen)
        {
            fprintf(stderr, "Bit Vector NOT match!\n");
            return;
        }
        for (int i=0; i<strlen(szVal); i++)
            if (szVal[i]=='1')  m_curr_val[i] = true;
            else                m_curr_val[i] = false;
    }

    int length()
    {
        return nLen;
    }

    // overload the | operator
    friend bit_vector_t operator | (const bit_vector_t& obj1, const bit_vector_t& obj2)
    {
        bit_vector_t<N> Temp;

        for (int i=0; i<N; i++)
            Temp.m_curr_val[i] = obj1.m_curr_val[i] | obj2.m_curr_val[i];
        return Temp;
    }
    // overload the & operator
    friend bit_vector_t operator & (const bit_vector_t& obj1, const bit_vector_t& obj2)
    {
        bit_vector_t<N> Temp;

        for (int i=0; i<N; i++)
            Temp.m_curr_val[i] = obj1.m_curr_val[i] & obj2.m_curr_val[i];
        return Temp;
    }
};

int main()
{
    // Ex.1 ----------------------------------------------------------------
    complex_t<float>    x( 1, 2);
    complex_t<int>      y( 3, 4);

    printf("Float: Re=%f Im=%f\n", x.get_real(), x.get_image());
    printf("Int. : Re=%d Im=%d\n", y.get_real(), y.get_image());
    printf("\t[Conjugate] Float:%f Int.:%d\n", x.conjugate(), y.conjugate());
    printf("\t    [Power] Float:%f Int.:%d\n", x.Power(), y.Power());

    // Ex.2 ----------------------------------------------------------------
    bit_vector_t<10>    bvX("1010101010");
    bit_vector_t<10>    bvY("0101010101");
    bit_vector_t<10>    bvZ;

    bvZ = bvX | bvY;
    printf("%s | %s = %s\n", bvX.to_string(), bvY.to_string(), bvZ.to_string());

    bvX = "111110000";
    bvY.write("000110001");

    bvX = "1111100000";
    bvY.write("0001100011");
    bvZ = bvX & bvY;
    printf("%s & %s = %s\n", bvX.to_string(), bvY.to_string(), bvZ.to_string());

    return 0;
}
