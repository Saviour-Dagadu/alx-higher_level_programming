#include <stdio.h>
#include <Python.h>

/**
 * print_python_list - Prints basic information about Python lists
 * @p: Pointer to a Python object (assumed to be a list)
 */
void print_python_list(PyObject *p) {
    Py_ssize_t size, i;
    PyObject *item;

    size = PyList_Size(p);

    printf("[*] Python list info\n");
    printf("[*] Size of the Python List = %ld\n", size);
    printf("[*] Allocated = %ld\n", ((PyListObject *)p)->allocated);

    for (i = 0; i < size; i++) {
        item = PyList_GetItem(p, i);
        printf("Element %ld: %s\n", i, Py_TYPE(item)->tp_name);
    }
}

/**
 * print_python_bytes - Prints basic information about Python bytes objects
 * @p: Pointer to a Python object (assumed to be a bytes object)
 */
void print_python_bytes(PyObject *p) {
    Py_ssize_t size, i;
    char *bytes_data;

    if (!PyBytes_Check(p)) {
        printf("[.] bytes object info\n");
        printf("  [ERROR] Invalid Bytes Object\n");
        return;
    }

    size = PyBytes_Size(p);
    bytes_data = PyBytes_AsString(p);

    printf("[.] bytes object info\n");
    printf("  [.] Size of the Python Bytes Object = %ld\n", size);
    printf("  [.] Address of the bytes object = %p\n", (void *)p);

    printf("  [.] Bytes: ");
    for (i = 0; i < size && i < 10; i++) {
        printf("%02x", (unsigned char)bytes_data[i]);
        if (i < size - 1 && i < 9)
            printf(" ");
    }
    printf("\n");
}
