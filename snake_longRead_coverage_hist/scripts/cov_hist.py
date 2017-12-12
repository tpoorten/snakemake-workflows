#!/usr/bin/env python

import sys
import matplotlib
matplotlib.use('agg')
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import pandas as pd
sns.set(color_codes=True)

fileIn = sys.argv[1]
fileInBase = ".".join(fileIn.split(".")[:-1])

sizes = pd.read_table(fileIn, usecols=[3], squeeze=True, header=None)
sizesFilter = sizes[sizes<np.mean(sizes)*2]
sizesFilterMean = np.mean(sizesFilter)

figSizes = plt.figure()
sns.distplot(sizesFilter, bins=20)
plt.xlabel("Coverage")
plt.axvline(sizesFilterMean, color='r', linestyle='-')
plt.title("mean: %s" % (sizesFilterMean.round()))
figSizes.savefig("%s.pdf" % (fileInBase), bbox_inches='tight')

plt.close()

