#include<iostream>

int main()
{

    int i =0;
    int a[10]={0};
    for (i =0; i < 20;i++)
    {

            a[i] = a[i*4]+5;
            if (i>3)
                break;
    }
    return 1;
}
