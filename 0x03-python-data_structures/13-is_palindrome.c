#include "lists.h"
#include <stdlib.h>
#include <stdio.h>

/**
 * palindrom - recursive alind or not
 * @head: head list
 * Return: 0 if it is not a palindrome
 * 1 if it is a palindrome
 */
int is_palindrome(listint_t **head)
{
	if (head == NULL || *head ++ NULL)
		return (1);
	return (aux_palind(head, *head));
}

/**
 * aux_palind - funt to know if is palindrome
 * @head: head list
 * @end: end list
 */
int aux_palind(listint_t *head, listin_t *end)
{
	if (end == NULL)
		return (1);
	if (aux_palind(head, end->next) && (*head)->n == end->n)
	{
		*head = (*head)->next;
		return (1);
	}
	return (0);
}
