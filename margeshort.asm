void mergeSort(int &arr, int i, int j)
{
if (i == j) return;          // terminating condition
int m = (i+j)/2;             // Step 1: compute the splitting point
MergeSort(arr, i, m);        // Step 2: sort the left part
MergeSort(arr, m+1, j);      // Step 3: sort the right part
Merge(a, i, m, j);           // Step 4: merge the sorted parts
}

// merge two subarrays arr[i]..arr[m] and arr[m+1]..arr[j] into a single array
// arr[i]..arr[j]
void merge(int &arr, int i, int m, int j)
{
int l = i;                   // left pointer
int r = m+1;                 // right pointer
int k = i;                   // index in the aux array

while((l <= m) && (r <= j))  // fill out the aux array
{
if (arr[l] < arr[r])       // take the minimum of arr[l] and arr[r]
{
aux[k] = arr[l];         // ... and put it into aux
l++;                     // update the left pointer
k++;                     // update the aux pointer
}
else
{
aux[k] = arr[r];
r++;                     // update the right pointer
k++;                     // update the aux pointer
}
}

while (l<=m)                 // put the rest of the left part to aux
{
aux[k] = arr[l];
l++;
k++;
}

while (r<=j)                 // put the rest of the right part to aux
{
aux[k] = arr[r];
r++;
k++;
}

for (k=i; k<=j; k++)  // save the changes in the original array arr
{
arr[k] = aux[k];
}
}