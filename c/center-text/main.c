#include <sys/ioctl.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char **argv)
{
    struct winsize w;
    ioctl(STDOUT_FILENO, TIOCGWINSZ, &w);

    char string[50];
    fgets(string, 20, stdin);

    for (int i = 0; i < (w.ws_col / 2) - (strlen(string) / 2); i++)
    {
        printf(" ");
    }

    printf("%s", string);
    printf("\n");

    return 0;
}
