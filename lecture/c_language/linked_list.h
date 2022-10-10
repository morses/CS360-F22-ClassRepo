#ifndef LINKED_LIST_H
#define LINKED_LIST_H

typedef struct node
{
    struct node * next;
    struct node * prev;
    void * data;
} Node;

typedef struct list
{
    Node * head;
    int size;
} DLList;

void append( DLList * list, void * item );
void clear( DLList * list );
void * popFront( DLList * list );
// ...


#endif /* end of include guard: LINKED_LIST_H */
