# digdagで実行できるのは関数で定義されているもののみ
def sample_def():
    print('python processing...')

# mainの関数はdigdagからは実行できずエラーになる
if __name__ == "__main__":
    print("hello")
