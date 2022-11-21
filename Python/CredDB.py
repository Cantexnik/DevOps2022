import csv
import os

def write_to_file(filename,hosts_dictionary):

    hosts_dictionary[len(hosts_dictionary)]={'hostname': input("\tHostname: "),'username': input("\tUsername: "), 'password': input("\tPassword:")}
    with open(filename, "a", newline="") as file:
        columns = ["hostname","username", "password"]
        writer = csv.DictWriter(file, fieldnames=columns)
        writer.writerows(hosts_dictionary.values())
    print('!!!Write success')

def read_from_file(filename,find_host="all"):
    
    with open(filename, "r", newline="") as file:
        reader = csv.DictReader(file)
        if find_host=="all":
            for row in reader:
                print(f"Host: {row['hostname']}")
        else:
            for record in reader:
                if find_host in record.values():
                    print(f"Username for {record['hostname']} is: {record['username']}")
                    print(f"Password for {record['hostname']} is: {record['password']}")
                    print()

FILENAME = "servers.csv"

new_dictionary={}

#dirmane=os.path.dirname(__file__)

while True:
    #os.system('cls||clear')
    user_dialog=input("\nEnter: \n \t 1 - to add new record \n \t 2 - to view all hosts \n \t 3 - to view data for specific host or user \n \t 000 - exit \n")
    if user_dialog=="1":
        user_dialog=input("Enter new record or type q for exit \n")
        if user_dialog=="q":
            continue
        else:
            write_to_file(FILENAME,new_dictionary)
            continue
    elif user_dialog=="2":
        read_from_file(FILENAME)
        continue
    elif user_dialog=="3":
        user_dialog=input("Enter hostname or username: ")
        read_from_file(FILENAME,user_dialog)
        continue
    elif user_dialog=="000":
        break
    else:
        print("Incorrect input")
        continue

print("Bye")
