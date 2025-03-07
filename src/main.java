import java.io.FileWriter;
import java.io.IOException;
public class main {

    // Selection Sort implementation
    public static void selectionSort(int[] arr) {
        // Traverse through all array elements
        for (int i = 0; i < arr.length; i++) {
            // Find the minimum element in the remaining unsorted array
            int minIdx = i;
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] < arr[minIdx]) {
                    minIdx = j;
                }
            }

            // Swap the found minimum element with the first element
            int temp = arr[i];
            arr[i] = arr[minIdx];
            arr[minIdx] = temp;
        }
    }

    public static void main(String[] args) {
        // Generate a random array of 10,000 elements
        int[] array = {5, 5, 27, 34, 59, 97, 79, 23, 60, 87, 46, 90, 50, 57, 12, 85, 18, 63, 7, 44, 8, 47, 22,
            73, 62, 66, 100, 86, 50, 81, 6, 39, 81, 28, 46, 75, 70, 2, 31, 54, 41, 91, 1, 51, 58, 3, 97, 
            50, 70, 87, 39, 43, 9, 5, 51, 100, 72, 42, 67, 98, 4, 40, 53, 1, 58, 69, 24, 96, 34, 20, 24, 56,
              98, 92, 2, 50, 49, 20, 22, 70, 53, 71, 31, 2, 56, 42, 51, 82, 3, 85, 78, 51, 42, 70, 62, 4, 74, 36,
                65, 94, 64, 66, 2, 54, 25, 53, 41, 88, 85, 61, 53, 93, 61, 6, 60, 15, 33, 55, 93, 93, 25, 78, 79, 
                19, 82, 82, 63, 23, 88, 82, 88, 69, 35, 80, 93, 19, 89, 24, 5, 82, 30, 99, 68, 34, 16, 92, 16, 80, 
                46, 53, 22, 39, 52, 8, 27, 36, 82, 50, 69, 39, 78, 70, 68, 1, 26, 40, 6, 1, 75, 48, 66, 51, 61, 80,
                50, 31, 90, 78, 93, 67, 76, 57, 26, 7, 94, 40, 9, 63, 28, 20, 71, 60, 75, 62, 63, 70, 36, 61, 77,
                63, 24, 25, 43, 26, 49, 80, 80, 31, 28, 37, 4, 75, 2, 73, 90, 33, 98, 97, 23, 82, 90, 42, 37, 58,
                      87, 8, 51, 62, 45, 23, 44, 55, 95, 71, 56, 44, 37, 15, 28, 98, 93, 21, 50, 16, 48, 30, 30, 94};

        // Start the timer
        long startTime = System.nanoTime();

        // Sort the array
        selectionSort(array);

        // Stop the timer
        long endTime = System.nanoTime();

        // Calculate runtime in seconds
        double runtime = (endTime - startTime) / 1e9;

        // Print the runtime
        System.out.printf("Java Runtime: %.6f ms\n", runtime*1000);

        
        for (int i = 0; i < array.length; i++) {
            System.out.println(array[i]);
        }
        System.out.println("End of Java execution")
    }
}
