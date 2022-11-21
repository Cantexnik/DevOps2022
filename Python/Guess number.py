import random

#from simple_term_menu import TerminalMenu
def isint(s):
    try:
        int(s)
        return True
    except ValueError:
        return False

def generate_number(user_range):
    generated_number = random.randint(1, int(user_range))
    return generated_number

print("Game \"Guess number\"\n")


while True:
    user_range = input("Enter range ")
    if(isint(user_range)):
        number = generate_number(user_range)
        break
    else:
        print("It’s not a number! Enter a number!!")

attempt=0
total_attempt=0
number=generate_number(user_range)
continue_playing='y'
games=0
while continue_playing == 'y':
    attempt+=1
    user_number=input("Enter number ")
    if not isint(user_number):
        continue
    elif int(user_number)==number:
        print(f"Hidden number: {number} ")
        print(f"You gess from {attempt} attempt\n")
        number=generate_number(user_range)
        games+=1
        total_attempt+=attempt
        attempt=0
        continue_playing = input(f"Do you want to play another round? (y-yes or n - no) \n")
        continue
    elif int(user_number)>int(user_range) or int(user_number)<0:
        print("Number out of range")
    elif int(user_number)>number:
        print(f"Less\n")
    elif int(user_number)<number:
        print(f"More\n")
else:
    print(f" Games played: {games} \n Average number of attempts: {total_attempt//games}")

