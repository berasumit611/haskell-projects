module Main (main) where
  -- Import functions to flush the output buffer and handle user input/output
import System.IO (hFlush, stdout)
-- Import a function to check if a file exists
import System.Directory(doesFileExist)


-- Define the Task data type with two fields: description (String) and completed (Bool)
-- Deriving Show and Read allows us to display and read the data type as a string
data Task = Task { description :: String, completed :: Bool }
    deriving (Show, Read)


-- Define the type alias ToDoList as a list of Task objects
type ToDoList = [Task]



-- Function to add a new task to the ToDoList
addTask :: String -> ToDoList -> ToDoList
-- Append a new task with the given description, marked as incomplete
addTask desc tasks = tasks ++ [Task desc False]



-- Function to mark a specific task as completed
markCompleted :: Int -> ToDoList -> ToDoList
markCompleted n tasks = 
    [ if i == n then task { completed = True } else task -- If the index matches, mark the task as completed
    | (i, task) <- zip [1..] tasks ] -- Zip indices starting from 1 with the tasks list


-- Function to display the list of tasks
displayTasks :: ToDoList -> IO ()
displayTasks tasks = do
    putStrLn "\nTo-Do List:"   -- Print header
    mapM_ printTask (zip [1..] tasks) -- Iterate over tasks with indices and print each
  where
    printTask (i, Task desc comp) =
        putStrLn $ show i ++ ". " ++ desc ++ " [" ++ (if comp then "X" else " ") ++ "]"
-- Print the task number, description, and its completion status (X for completed)



-- Function to save tasks to a file
saveTasks :: FilePath -> ToDoList -> IO ()
saveTasks file tasks = writeFile file (show tasks) -- Convert tasks to a string and write to the file

-- Function to load tasks from a file
loadTasks :: FilePath -> IO ToDoList
loadTasks file = do
    content <- readFile file -- Read file content
    return (read content :: ToDoList) -- Convert the string back into a ToDoList



-- Main function: Entry point of the program
main :: IO ()
main = do
    let file = "tasks.txt"  -- Define the file to store the tasks
    tasks <- loadTasksSafe file -- Safely load tasks from the file
    mainLoop tasks file -- Start the main loop to interact with the user



-- Function to handle user input and loop through the menu options
mainLoop :: ToDoList -> FilePath -> IO ()
mainLoop tasks file = do
    putStrLn "\nOptions: (1) Add Task (2) View Tasks (3) Mark Completed (4) Save and Exit"
    putStr "Choose an option: "
    hFlush stdout -- Flush the output to ensure the prompt is displayed
    choice <- getLine -- Read user input
    case choice of
        "1" -> do
            putStr "Enter task description: "
            hFlush stdout
            desc <- getLine
            mainLoop (addTask desc tasks) file -- Add the new task and continue the loop
        "2" -> do
            displayTasks tasks -- Display all tasks
            mainLoop tasks file -- Continue the loop
        "3" -> do
            putStr "Enter task number to mark completed: "
            hFlush stdout
            n <- readLn -- Read the task number as an integer
            mainLoop (markCompleted n tasks) file -- Mark the task as completed and continue the loop
        "4" -> do
            saveTasks file tasks -- Save tasks to the file
            putStrLn "Tasks saved. Goodbye!"
        _   -> do
            putStrLn "Invalid option. Try again." -- Handle invalid input
            mainLoop tasks file -- Continue the loop


-- Function to safely load tasks from the file or return an empty list if the file does not exist
loadTasksSafe :: FilePath -> IO ToDoList
loadTasksSafe file = do
    exists <- doesFileExist file -- Check if the file exists
    if exists then loadTasks file else return [] -- Load tasks if the file exists, otherwise return an empty list
