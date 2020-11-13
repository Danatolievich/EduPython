Door_password = "322"
password = input("Enter your password: ")
name = input("Whats your name?: ")
if password == Door_password:
    print(f"Hello {name}")
else:
    print(f"Bye {name}")