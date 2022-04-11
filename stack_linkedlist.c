#include <stdio.h>
#include <stdlib.h>

struct stack
{
  int info;
  struct stack *link;
};

typedef struct stack node;

node *top = NULL;

void push();
void pop();
void display();

int main()
{
  int choice;
  char ch = 'y';
  do
  {
    printf("\nMENU");
    printf("\n1. PUSH\n2. PULL\n\nEnter a choice > ");
    scanf("%d", &choice);
    switch (choice)
    {
    case 1:
    {
      push();
      display();
      break;
    }
    case 2:
    {
      if (top != NULL)
      {
        pop();
        display();
      }
      else
      {
        printf("\nstack underfloww");
      }
      break;
    }
    }
    printf("\nContinue? > ");
    fflush(stdin);
    ch = getchar();

  } while (ch == 'y');
  return 0;
}

void push()
{
  node *temp;
  temp = (node *)malloc(sizeof(node));
  printf("\nEnter an element > ");
  scanf("%d", &temp->info);
  temp->link = top;
  top = temp;
}

void pop()
{
  node *temp;
  temp = top;
  top = top->link;
  free(temp);
}

void display()
{
  node *temp = top;
  printf("\nThe stack\n");
  while (temp != NULL)
  {
    printf("%d  ", temp->info);
    temp = temp->link;
  }
}