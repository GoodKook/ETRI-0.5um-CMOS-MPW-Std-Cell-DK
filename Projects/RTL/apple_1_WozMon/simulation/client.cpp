// SOCKET: client.cpp
// Server Test

#include <stdio.h> 
#include <sys/socket.h> 
#include <stdlib.h> 
#include <netinet/in.h> 
#include <arpa/inet.h>
#include <string.h> 

int main(int argc, char const *argv[])
{
    struct sockaddr_in serv_addr;
    int sock_fd ;

    sock_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (sock_fd <= 0)
    {
        perror("socket failed : ");
        exit(EXIT_FAILURE) ;
    }

    memset(&serv_addr, '0', sizeof(serv_addr)); 
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(8080);
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr) <= 0)  // Localhost
    {
        perror("inet_pton failed : ") ; 
        exit(EXIT_FAILURE) ;
    } 
  
    if (connect(sock_fd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0)
    {
        perror("connect failed : ") ;
        exit(EXIT_FAILURE) ;
    }

    char buf[3];
    while (true)
    {
        recv(sock_fd, buf, 1, 0);  // Receive 1-Byte
        fputc(buf[0], stdout);
        fflush(0);
        send(sock_fd, buf, 1, 0);
    }
} 
