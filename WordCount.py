from pyspark import SparkConf, SparkContext
import sys

conf = SparkConf().setAppName("WordCount")
sc = SparkContext(conf=conf)

input_file = sc.textFile(sys.argv[1])
word_counts = input_file.flatMap(lambda line: line.split()).map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)
word_counts_sorted = word_counts.sortBy(lambda x: x[1], ascending=False)

result = word_counts_sorted.collect()

with open(sys.argv[2], 'w') as f:
    for word, count in result:
        f.write("{}\t{}\n".format(word, count))