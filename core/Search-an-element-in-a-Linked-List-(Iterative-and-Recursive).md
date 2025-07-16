#1
[ref]([Search an element in a Linked List (Iterative and Recursive) - GeeksforGeeks](https://www.geeksforgeeks.org/search-an-element-in-a-linked-list-iterative-and-recursive/))
ez

```cpp
/* link the old list of the new node */

    new_node->next = (*head_ref);

    /* move the head to point to the new node */

    (*head_ref) = new_node;
```
he pushes new elements to the start of linked list

so
```
`push(&head, 10);`

`push(&head, 30);`

`push(&head, 11);`

`push(&head, 21);`

`push(&head, 14);`
makes it look like 
14 21 11 30 10
but link-wise the linking direction is 
null <-14 <-21 <-11 <-30 <-10
.. so what he wrote is misleading somehowe
```

