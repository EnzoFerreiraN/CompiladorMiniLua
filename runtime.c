#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef struct {
    int size;
    int capacity;
    void* data;
    int element_size;
} DynamicArray;

DynamicArray* minilua_new_array(int element_size) {
    DynamicArray* arr = (DynamicArray*)malloc(sizeof(DynamicArray));
    if (!arr) {
        fprintf(stderr, "Out of memory in minilua_new_array\n");
        exit(1);
    }
    arr->size = 0;
    arr->capacity = 10; // Initial capacity
    arr->element_size = element_size;
    arr->data = malloc(arr->capacity * element_size);
    if (!arr->data) {
        fprintf(stderr, "Out of memory in minilua_new_array data\n");
        exit(1);
    }
    memset(arr->data, 0, arr->capacity * element_size); // Zero init
    return arr;
}

void minilua_ensure_capacity(DynamicArray* arr, int index) {
    if (!arr) {
        fprintf(stderr, "Error: Array is null\n");
        exit(1);
    }
    
    if (index >= arr->capacity) {
        int new_capacity = arr->capacity * 2;
        if (new_capacity <= index) new_capacity = index + 1;
        
        void* new_data = realloc(arr->data, new_capacity * arr->element_size);
        if (!new_data) {
            fprintf(stderr, "Out of memory in minilua_ensure_capacity\n");
            exit(1);
        }
        arr->data = new_data;
        
        // Zero initialize new part
        memset((char*)arr->data + (arr->capacity * arr->element_size), 0, 
               (new_capacity - arr->capacity) * arr->element_size);
        
        arr->capacity = new_capacity;
    }
    
    // Update size if we are accessing beyond current size
    if (index >= arr->size) {
        arr->size = index + 1;
    }
}

int minilua_array_length(DynamicArray* arr) {
    if (!arr) return 0;
    return arr->size;
}

void* minilua_get_data_ptr(DynamicArray* arr) {
    if (!arr) return NULL;
    return arr->data;
}

void minilua_print_number(double n) {
    if (n == (long long)n) {
        printf("%lld", (long long)n);
    } else {
        printf("%.2f", n);
    }
}
