#include <stdio.h>
#include <stdlib.h>

int main(int argc, int **argv[]){

    FILE *fi = fopen("test.txt","w");

    if (fi == NULL){
        printf("Can't open file"); 
        return EXIT_FAILURE;
    }

    for(int x = 0; x < 10; x++){
        fprintf(fi, "count %d\n", x);
    }

    fclose(fi);
    return EXIT_SUCCESS;
}
