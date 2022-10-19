__RService__ is a solution that enables integration of MPS with 3rd party tools. It exposes an interface from MPS through which models of any MPS language can be inspected and modified.

__RService__ employs client-server architecture and is built with [JetBrains RD](https://github.com/JetBrains/rd) communication framework.

It consist of **RServer** MPS plugin and **RClient** library (currently in C#) that can be used by 3rd party tools.

![RService Architecture Overview](docs/Architecture/Architecture-RService%20SW%20Stacks.png)