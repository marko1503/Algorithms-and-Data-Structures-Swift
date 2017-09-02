//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Find the smallest positive number missing from an unsorted array | Set 1


//Input:  {2, 3, 7, 6, 8, -1, -10, 15}
    let input0 = [2, 3, 7, 6, 8, -1, -10, 15]
    // Output: 1
    let input1 = [1, 2, 3, 4, 5, 6, 7, 8]
    // Output: 9
    let input1 = [8, 7, 6, 5, 4, 3, 2, 1]
    // Output: 9
//    let input = [2, 3, -7, 6, 8, 1, -10, 15]
    //Output: 4

//    let input = [1, 1, 0, -1, -2]
    //Output: 2


//var swapArray = input0
//
//
//// move negative numbers to the start
//var shift = 0
//for (index, element) in swapArray.enumerated() {
//    if element < 0 {
//        swap(&swapArray[index], &swapArray[shift])
//        shift += 1 // // increment count of non-positive integers
//    }
//}
//
//
//
//var findArray = swapArray
//let size = findArray.count - shift
//
//for index in shift..<findArray.count {
//
////    if(Math.abs(arr[i]) - 1 < size && arr[Math.abs(arr[i]) - 1] > 0)
////    arr[Math.abs(arr[i]) - 1] = -arr[Math.abs(arr[i]) - 1];
//    let firstExpration = abs(findArray[index]) - 1
//    print("first: \(findArray[index]), \(abs(findArray[index])), \(abs(findArray[index]) - 1)")
//
////    let secondExpration = abs(findArray[index]) - 1
////    print("second: \(findArray[index]), \(abs(findArray[index])), \(abs(findArray[index]) - 1), \(findArray[abs(findArray[index]) - 1])")
//    if abs(findArray[index]) - 1 < size && findArray[abs(findArray[index]) - 1] > 0 {
//        findArray[abs(findArray[index]) - 1] = -findArray[abs(findArray[index]) - 1]
//    }
//}
//
//
//let array = findArray


//Output: 1


var array = input0


//for cursor in range(N):
//target = array[cursor]
//while target < N and target != array[target]:
//new_target = array[target]
//array[target] = target
//target = new_target
//
//# Pass 2, find first location where the index doesn't match the value
//for cursor in range(N):
//if array[cursor] != cursor:
//return cursor
//return N


/*
/* Utility function that puts all non-positive
 (0 and negative) numbers on left side of
 arr[] and return count of such numbers */
static int segregate (int arr[], int size)
{
    int j = 0, i;
    for(i = 0; i < size; i++)
    {
        if (arr[i] <= 0)
        {
            int temp;
            temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
            // increment count of non-positive
            // integers
            j++;
        }
    }

    return j;
}

/* Find the smallest positive missing
 number in an array that contains
 all positive integers */
static int findMissingPositive(int arr[], int size)
{
    int i;

    // Mark arr[i] as visited by making
    // arr[arr[i] - 1] negative. Note that
    // 1 is subtracted because index start
    // from 0 and positive numbers start from 1
    for(i = 0; i < size; i++)
    {
        if(Math.abs(arr[i]) - 1 < size && arr[Math.abs(arr[i]) - 1] > 0)
        arr[Math.abs(arr[i]) - 1] = -arr[Math.abs(arr[i]) - 1];
    }

    // Return the first index value at which
    // is positive
    for(i = 0; i < size; i++)
    if (arr[i] > 0)
    return i+1;  // 1 is added becuase indexes
    // start from 0

    return size+1;
}

/* Find the smallest positive missing
 number in an array that contains
 both positive and negative integers */
static int findMissing(int arr[], int size)
{
    // First separate positive and
    // negative numbers
    int shift = segregate (arr, size);
    int arr2[] = new int[size-shift];
    int j=0;
    for(int i=shift;i<size;i++)
    {
        arr2[j] = arr[i];
        j++;
    }
    // Shift the array and call
    // findMissingPositive for
    // positive part
    return findMissingPositive(arr2, j);
}
// main function
public static void main (String[] args)
{
    int arr[] = {0, 10, 2, -10, -20};
    int arr_size = arr.length;
    int missing = findMissing(arr, arr_size);
    System.out.println("The smallest positive missing number is "+
        missing);
}
 
 */