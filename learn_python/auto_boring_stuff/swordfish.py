
# 恼人的循环

while True:
    print('Who are you?')
    name = input()
    if name != 'Joe':
        continue
    print('Hello, Joe. What is the password? (It is a fish.) ')
    password = input()
    if password == 'swordfish':
        break
print('Asscess granted.')

