import numpy as np
import random

postMile = [69.59,  67.99, 65.1,   63.09,  61.06,  59.88,  59.49,  58.86,  57.75,  57.75,
  57.6,   57.6,   57.45,  57.45,  57.3,   57.3,   56.59,  56.59,  55.9,   55.31,
  54.67,  54.37,  53.9,   53.57,  53.31,  53.01,  52.78,  52.18,  51.97,  51.72,
  51.05,  50.6,   50.51,  49.33,  49.09,  49.01,  48.5,   48.3,   48.29,  47.89,
  47.87,  47.54,  47.31,  46.88,  46.38,  46.02,  45.76,  45.59,  45.19,  44.85,
  44.81,  44.49,  44.21,  43.61,  43.46,  43.31,  43.17,  42.77,  42.59,  42.18,
  41.86,  41.62,  41.28,  40.68,  40.47,  40.18,  39.99,  39.81,  39.35,  38.96,
  38.88,  38.67,  38.24,  37.68,  37.32,  37.07,  36.39,  36.08,  35.78,  35.58,
  35.4,   35.17,  34.82,  34.36,  34.15,  33.9,   33.6,  33.32,  32.41,  31.83,
  31.79,  31.5,   31.48,  31.16,  30.84,  30.54,  30.34,  30.15,  29.94,  16.3,
  15.89,  15.73,  14.8,   14.3,   13.98,  13.95,  12.41,  12.21,  11.86,  11.41,
  10.51,  10.28,   9.95,   9.6,   8.72,   8.54,   7.89,   7.57,   7.09,   6.62,
   6.29,   5.7,    5.21,   5.01,   4.48,   3.93,   3.41,   2.8,    2.43,   1.78,
   1.65,   1.41,   1.05,   0.47,   0.27,   0.24] 

indexList = []
postMile_1 = []

for i in range (0, 50):
    param = False
    while (param is not True):
        index = random.randint(6, 130)
        if(index in indexList):
            continue
        else:
            indexList.append(index)
            postMile_1.append(postMile[index])
            param = True
postMile_1.sort()
postMile_1[0] = 1.78
postMile_1[49] = 59.49
print (len(postMile_1))
print (postMile_1)    
