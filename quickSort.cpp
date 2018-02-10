//
// Created by Rendall on 7-2-2018.
//

#include <iostream>
#include <chrono>
#include <fstream>

//Function to swap two ints
void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

/* This function takes last element as pivot, places
   the pivot element at its correct position in sorted
    array, and places all smaller (smaller than pivot)
   to left of pivot and all greater elements to right
   of pivot */
int partition (int arr[], int low, int high)
{
    int pivot = arr[high];    // pivot
    int i = (low - 1);  // Index of smaller element

    for (int j = low; j <= high- 1; j++)
    {
        // If current element is smaller than or
        // equal to pivot
        if (arr[j] <= pivot)
        {
            i++;    // increment index of smaller element
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return (i + 1);
}

/* The main function that implements QuickSort
 arr[] --> Array to be sorted,
  low  --> Starting index,
  high  --> Ending index */
void quickSort(int arr[], int low, int high)
{
    if (low < high)
    {
        /* pi is partitioning index, arr[p] is now
           at right place */
        int pi = partition(arr, low, high);

        // Separately sort elements before
        // partition and after partition
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

/* The function that fills an array of
   selected size with random numbers between 1 and 1000.
   size --> The size of the array,
   arr[] --> The array that needs to be filled */
void createArray(int size, int arr[]){
    for(int i = 0; i < size; i++){
        arr[i] = (rand()%1000)+1;
    }
}

/* The function that writes the size and sort duration
   of an array to a csv file.
   size --> The size of the array,
   duration --> The time it takes to run the quickSort algorithm on the array */
void writeCsv(int size, double duration){

    //Create the filestream to write to the csv
    std::fstream fs;

    //Open the filestream to the selected file
    fs.open("quickSort.csv", std::fstream::in | std::fstream::out | std::fstream::app);

    //Insert the given data in the file
    fs << size << "," << duration << std::endl;

    //Close the stream
    fs.close();
}

/* The main function of the file */
int main()
{
    //Truncate the csv file so it doesnt contain other data than created by this application
    std::fstream ofs;
    ofs.open("quickSort.csv", std::ofstream::out | std::ofstream::trunc);
    ofs.close();

    //Set the sizes and amount of the arrays you want to create
    const int arrs = 55;
    int sizes[arrs] = {10,20,30,40,50,60,70,80,90,
                       100,200,300,400,500,600,700,800,900,
                       1000,2000,3000,4000,5000,6000,7000,8000,9000,
                       10000,20000,30000,40000,50000,60000,70000,80000,90000,
                       100000,200000,300000,400000,500000,600000,700000,800000,900000,
                       1000000,2000000,3000000,4000000,5000000,6000000,7000000,8000000,9000000,10000000};

    //For loop that loops for the amount of sizes
    for(int i = 0; i < arrs; i++){
        //Get size of the current index
        int n = sizes[i];

        //Initialize the array that we will fill later
        int *arr;
        arr = new int[n];

        //Run the createArray function with the current size and empty array.
        createArray(n, arr);

        //Print the current size to the console
        std::cout << "Size " << n << ", ";

        //The time at the start of running the sorting algorithm
        auto t1 = std::chrono::high_resolution_clock::now();

        //Run the sort function
        quickSort(arr, 0, n-1);

        //The time at the end of running the sorting algorithm
        auto t2 = std::chrono::high_resolution_clock::now();

        //Calculate the time the function took in milliseconds and seconds
        std::chrono::duration<double, std::milli> fp_ms = t2 - t1;
        std::chrono::duration<double> fp_s = t2 - t1;

        //Print the duration of the sorting to the console
        std::cout << "Duration: " << fp_ms.count() << " ms, " << fp_s.count() << " seconds" <<std::endl;

        //Run the writeCsv function with the size and duration(ms) of the current index
        writeCsv(n, fp_ms.count());

        //Delete the array
        delete[] arr;
    }

    //Return 0 to end the application successfully
    return 0;
}