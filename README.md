In this tech test I will be working alone working on this interactive bank statement. To run this you will need to be in the command line in the file of the bank tech test, here you can run IRB where you can require the relative files and create new cards/statements.

User Stories
```
As a User,
so I can use my money,
I want to be able to withdraw money for my bank account
```
```
As a User,
so I can keep money on my card,
I want to be able to deposit money to my bank account
```
```
As a User,
so I can keep track of my money,
I want to be able to see my balance
```
```
As a User,
so I can keep track of my when I use my card,
I want to be able to see the date and time I used my card
```
HOW TO RUN
1. clone this repo
2. run ```bundle```
3. open your command line and cd into project
4. go into ```IRB```
5. type ```require './lib/bank'``` press enter and returns true
6. create new class object type in ```your_name = Bank.new```
7. use the code notes below to use your bank statement
key
- to add money type in ```your_name.credit(amount)```
- to withdraw money type ```your_name.debit(amount)```
- to see statement type in ```your_name.print_statement```
