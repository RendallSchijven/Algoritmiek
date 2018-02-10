#include <iostream>
#include <chrono>
#include <fstream>

void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

void bubbleSort(int arr[], int n)
{
    int i, j;
    for (i = 0; i < n-1; i++)
        for (j = 0; j < n-i-1; j++)
            if (arr[j] > arr[j+1])
                swap(&arr[j], &arr[j+1]);
}

void createArray(int size, int arr[]){
    for(int i = 0; i < size; i++){
        arr[i] = (rand()%1000)+1;
    }
}

void writeCsv(int size, double duration){
    std::fstream fstream;
    std::string fName = "bubbleSort.csv";
    fstream.open(fName, std::fstream::in | std::fstream::out | std::fstream::app);
    fstream << size << "," << duration << std::endl;
    fstream.close();
}

int main()
{
    std::fstream ofs;
    ofs.open("bubbleSort.csv", std::fstream::out | std::fstream::trunc);
    ofs.close();

    const int arrs = 9;
    int sizes[arrs] = {10,50,100,200,500,1000,2000,5000,10000};

    for(int i = 0; i < arrs; i++){
        int n = sizes[i];

        int *arr;
        arr = new int[n];

        createArray(n, arr);

        std::cout << "Size " << n << ", ";

        auto t1 = std::chrono::high_resolution_clock::now();

        bubbleSort(arr, n);

        auto t2 = std::chrono::high_resolution_clock::now();

        std::chrono::duration<double, std::milli> fp_ms = t2 - t1;
        std::chrono::duration<double> fp_s = t2 - t1;

        std::cout << "Duration: " << fp_ms.count() << " ms, " << fp_s.count() << " seconds" <<std::endl;

        writeCsv(n, fp_ms.count());

        delete[] arr;
    }

    return 0;
}