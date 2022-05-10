import json


def avg(v):
    return sum(v) / len(v)


def to_ratio(dataset):
    return {
        generator: [1 - value_2 / value_1 for value_1, value_2 in values]
        for generator, values in dataset.items()
    }


if __name__ == '__main__':
    with open('degs.json') as f:
        data = json.load(f)

    ratios = to_ratio(data)
    print(f'''Ratios: {
        {
            g: [f"{r:.2}" for r in rs]
            for g, rs in ratios.items()
        }
    }''')

    flat = [v for r in ratios.values() for v in r]
    print(f'{avg(flat):.2}')
