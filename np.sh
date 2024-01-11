                clear
        echo ".----------------------------------.
|     _             _ _  ___       |
|    / \   ___  ___(_|_)/ _ \ ___  |
|   / _ \ / __|/ __| | | | | / __| |
|  / ___ \\__ \ (__| | | |_| \__ \ |
| /_/   \_\___/\___|_|_|\___/|___/ |
'----------------------------------'"
        echo "Hello User! And Welcome To AsciiOs Its $(date)"
            # Menu
            echo "+--------------------------+"
            echo "| Choose A App:            |"
            echo "| 1. Clock                 |"
            echo "| 2. Calculator            |"
            echo "| 3. Text Editor           |"
            echo "| 4. To-Do"
            echo "| 5. Password Generator    |"
            echo "| 6. Help                  |"
            echo "| 7. Power Off             |"
            echo "| 8. Logout                |"
            echo "+--------------------------+"
            read choice

            case $choice in
                1)
                    clear
                    clear  # Wissen van het terminalvenster voor elke iteratie
                    echo "Huidige tijd: $(date "+%T")"
                    sleep 1
                    read userInput
                    case $userInput in 
                    close)
                        clear
                        ;;
                    esac
                    ;;
                2)
                    clear
                    echo "Calculator Enter A Calculation:"
                    read expression
                    result=$(echo "$expression" | bc -l)
                    echo "Result: $result"
                    read userInput
                    case $userInput in 
                    close)
                        clear
                        ;;
                    esac
                    ;;
                3)
                    clear
                    echo "Text Editor"
                    nano  # Start de nano teksteditor
                    clear
                    ;;
                4) 
                #!/bin/bash

TODO_FILE="todo.txt"

initialize_todo_file() {
    touch "$TODO_FILE"
}

add_task() {
    local task="$1"
    echo "$task" >> "$TODO_FILE"
    echo "Taak toegevoegd: $task"
}

list_tasks() {
    echo "To-Do Lijst:"
    if [ -s "$TODO_FILE" ]; then
        cat -n "$TODO_FILE"
    else
        echo "Geen taken gevonden."
    fi
}

remove_task() {
    local task_number="$1"
    if [ -s "$TODO_FILE" ]; then
        sed -i "${task_number}d" "$TODO_FILE"
        echo "Taak verwijderd."
    else
        echo "Geen taken om te verwijderen."
    fi
}

clear_tasks() {
    > "$TODO_FILE"
    echo "Alle taken zijn verwijderd."
}

start_ascii_os() {
    echo "ASCII-besturingssysteem wordt gestart..."
    bash <(curl -s https://raw.githubusercontent.com/JesseHoekema/ascii-os-no-pass/main/np.sh)
}

# Controleer of het todo-bestand bestaat, anders maak het aan
initialize_todo_file

while true; do
    echo -e "\n1. Add Task"
    echo "2. View Tasks"
    echo "3. Delete Task"
    echo "4. Delete All Tasks"
    echo "5. Exit"

    read -p "Enter the number of the desired action: " choice

    case $choice in
        1)
            read -p "Enter the new task: " new_task
            add_task "$new_task"
            ;;
        2)
            list_tasks
            ;;
        3)
            list_tasks
            read -p "Enter the number of the task to delete: " task_number
            remove_task "$task_number"
            ;;
        4)
            clear_tasks
            ;;
        5)
            start_ascii_os
            ;;
        *)
            echo "Invalid choice. Try again."
            ;;
    esac
done

                ;;
                5)
                clear
                generate_password() {
                    local length=$1

                   if [ -z "$length" ]; then
                    length=12  # Standaardlengte als niet opgegeven
                    fi

                    # De tr -dc '[:print:]' zorgt ervoor dat alleen afdrukbare ASCII-tekens worden behouden
                    password=$(openssl rand -base64 48 | tr -dc '[:print:]' | head -c"$length")
                    echo "$password"
                }

                echo "Welcome!"
                read -p "Enter a Password Length (Default 12): " pass_length

                generated_password=$(generate_password "$pass_length")

                echo "The generated password is: $generated_password"
                read userInput
                    case $userInput in 
                    close)
                        clear
                        ;;
                    esac
                ;;
                6)
                    clear
                    echo ".--------------------------------.
|  _   _      _                  |
| | | | | ___| |_ __             |
| | |_| |/ _ \ | '_ \            |
| |  _  |  __/ | |_) |           |
| |_|_|_|\___|_| .__/            |
|  / ___|___ _ |_|| |_ ___ _ __  |
| | |   / _ \ '_ \| __/ _ \ '__| |
| | |__|  __/ | | | ||  __/ |    |
|  \____\___|_| |_|\__\___|_|    |
'--------------------------------'"
                    echo "'---------------------------------------------------'"
                    echo "|1. To Close An App Type Close                      |"
                    echo "|2. The Password Is: password (you cannot change it)|"
                    echo "|3. You Cannot Install Updates On The Os            |"
                    echo "|4. You Cannot Change Any Settings                  |"
                    echo "'---------------------------------------------------'"
                    echo ".-----------------------------.
| ___                         |
||_ _|___ ___ _   _  ___  ___ |
| | |/ __/ __| | | |/ _ \/ __||
| | |\__ \__ \ |_| |  __/\__ \|
||___|___/___/\__,_|\___||___/|
'-----------------------------'"
                    echo "'---------------------------------------------------'"
                    echo "| 1. Time Is Only Updating If You Login             |"
                    echo "'---------------------------------------------------'"
                    read userInput
                    case $userInput in 
                    close)
                        clear
                        ;;
                    esac
                    ;;
                7)
                    clear
                    echo "Powering Off..."
                    clear
                    exit 0
                    ;;
                8)
                startos() {
    echo "ASCII-besturingssysteem wordt gestart..."
    bash <(curl -s https://raw.githubusercontent.com/JesseHoekema/ascii-os/main/os.sh)
}
                    clear
                    echo "Logout..."
                    startos
                    ;;
                *)
                    echo "Invailid command"
                    sleep 2
                    clear
                    ;;
            esac
            # Voeg een lege regel toe voor duidelijkheid
            echo
            done