//DATA STRUCT - L2I cntemad (Queue/File)

#include <stdio.h>
#include <stdlib.h>

int main() {
    typedef struct Element Element;
    struct Element {
        int number;
        Element * next;
    };
    typedef struct Queue Queue;
    struct Queue {
        Element * first;
    };
    Queue * init() {
        Element * element = malloc(sizeof( * element));
        Queue * Queue = malloc(sizeof( * Queue));
        element -> number = 0;
        element -> next = NULL;
        Queue -> first = element;

        return Queue;
    }
    void show(Queue * Queue) {
        Element * now;
        now = Queue -> first;
        while (now != NULL) {
            printf("%d ", now -> number);
            now = now -> next;
        }
    }
    void thread(Queue * Queue, int nv_number) {
        Element * new = malloc(sizeof( * new));
        new -> number = nv_number;
        new -> next = NULL;
        if (Queue -> first != NULL) {
            Element * now;
            now = Queue -> first;
            while (now -> next != NULL) {
                now = now -> next;
            }
            now -> next = new;
        } else {
            Queue -> first = new;
        }
    }
    int unthread(Queue * Queue) {
        Element * a_unthread;
        a_unthread = Queue -> first;
        int nb_unthread = 0;
        if (a_unthread != NULL) {
            nb_unthread = a_unthread -> number;
            Queue -> first = a_unthread -> next;
            free(a_unthread);
        }
        return nb_unthread;
    }

    Queue * queue;
    printf("La file:\n");
    queue = init();
    queue -> first -> number = 11;
    threading(queue, 32);
    threading(queue, 76);
    threading(queue, 3);
    show(queue);
    printf("\nJe defile %d\n", unthread(queue));
    show(queue);
    printf("\nJ'enfile 69\n");
    threading(queue, 69);
    show(queue);

    return 0;
}