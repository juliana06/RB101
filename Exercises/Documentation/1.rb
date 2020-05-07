# Difference between File::path and File#path

# File::path --> CLASS method - returns the string representation of the file path
# File#path --> INSTANCE method - returns the pathname used to create file as a string.

# Basically the difference is that File::path returns the file location (as string)
# and File#path returns the file's name (as string)