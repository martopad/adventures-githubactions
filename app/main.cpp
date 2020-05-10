#include <iostream>

int main(int argc, char **argv)
{
    std::cout <<  "Running app with an ID: " << argv[1] << ". Ran by: " << std::getenv ("DEPLOYER") <<  '\n';

    return 0;
}