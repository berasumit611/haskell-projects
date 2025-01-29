# To-Do App (Haskell + Stack)

This project is a simple command-line To-Do application written in Haskell. It allows users to manage their tasks by adding, viewing, marking as completed, and saving them to a file.

## Prerequisites

Ensure the following software is installed on your system:

Stack: Haskell's build tool and package manager.

Install Stack: https://docs.haskellstack.org/en/stable/install_and_upgrade/

GHC: The Glasgow Haskell Compiler (managed by Stack).

No separate installation is needed; Stack will handle this for you.

## Project Setup

Follow these steps to set up and run the project:

### 1. Clone the Repository
```
git clone <repository-url>
cd todo-app
```

### 2. Configure the Project

Make sure the dependencies are listed in the build-depends section of the .cabal file:
```
build-depends:
    base >=4.16 && <4.18,
    directory
```
### 3. Build the Project

Run the following command to install dependencies and build the project:
```
stack build
```

### 4. Run the Project

Execute the following command to start the application:
```
stack exec todo-app
```
### 5. Interact with the Application

The application provides the following options:

1. Add a new task.

2. View all tasks.

3. Mark a task as completed.

4. Save tasks and exit the program.

6. File Storage

Tasks are saved in a text file named tasks.txt in the project directory. If this file does not exist, it will be created automatically when tasks are saved.

## Troubleshooting

Error: Could not load module `System.Directory`

- Ensure that the directory package is included in the build-depends section of the .cabal file.

- Run stack build again to install missing dependencies.

Error: Command not found: `stack`

- Ensure Stack is installed and added to your system's PATH.

- Revisit the Stack installation guide.

## Project Structure

```
├── app/                 # Application entry point (if used)
├── src/                 # Source code directory
│   └── Main.hs          # Main program logic
├── tasks.txt            # File where tasks are saved (created during runtime)
├── todo-app.cabal       # Project configuration file
├── stack.yaml           # Stack configuration file
└── README.md            # Project documentation (this file)
```
## Resource
https://hoogle.haskell.org/?hoogle=doesFileExist%20package%3Adirectory
