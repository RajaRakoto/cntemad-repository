//DATA STRUCT - L2I cntemad (Stack/Pile)

#include <stdio.h>
#include <stdlib.h>

int main() {
    typedef struct Element Element;
    struct Element {
        int number;
        Element * next;
    };
    typedef struct Stack Stack;
    struct Stack {
        Element * first;
    };
    Stack * init() {
        Element * element = malloc(sizeof( * element));
        Stack * stack = malloc(sizeof( * stack));
        element -> number = 0;
        element -> next = NULL;
        stack -> first = element;

        return stack;
    }
    void stacking(Stack * stack, int new_number) {
        Element * new = malloc(sizeof( * new));
        new -> number = new_number;
        new -> next = stack -> first;
        stack -> first = new;
    }
    int unstacking(Stack * stack) {
        if (stack == NULL || stack -> first == NULL) {
            exit(EXIT_FAILURE);
        }

        int nbr_unstacking = 0;
        Element * unstack = stack -> first;
        nbr_unstacking = unstack -> number;
        stack -> first = unstack -> next;
        free(unstack);

        return nbr_unstacking;
    }
    void show(Stack * stack) {
        Element * now;
        now = stack -> first;
        while (now != NULL) {
            printf("%d\n", now -> number);
            now = now -> next;
        }
    }

    Stack * theStack;
    theStack = init();
    theStack -> first -> number = 24;
    stacking(theStack, 12);
    stacking(theStack, 6);
    stacking(theStack, 3);
    show(theStack);
    printf("\nJe depile %d\n", unstacking(theStack));
    show(theStack);
    printf("\nJe depile %d\n", unstacking(theStack));
    show(theStack);
    printf("\nJ'empile 33\n");
    stacking(theStack, 33);
    show(theStack);

    return 0;
}