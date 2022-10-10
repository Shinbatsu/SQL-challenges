import os

def main() -> None:
    '''Converting all files with any .type to sql .sql'''
    PATH: str = os.getcwd() + '\\'
    for _, file in enumerate(filter(lambda x: '.' in x
                                    and not x.endswith('py')
                                    and not x.endswith('bat'),
                                    os.listdir(PATH))):
        filename, _ = os.path.splitext(PATH + file)
        os.rename(PATH + file,
                  filename
                  + '.sql')


if __name__ == '__main__':
    main()
