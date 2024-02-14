import sys
from my_learning_package.app_lib import label

def main(args: list[str]):
    print(f"Package :{label()}: called with arguments {args}")

if __name__ == '__main__':
    main(sys.argv[1:]) # strip first argument which is the name of the executable
