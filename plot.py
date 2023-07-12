#!/usr/bin/env python3

import pandas as pd
from matplotlib import pyplot as plt
import seaborn as sns

sns.set_context("talk")

df = pd.read_csv("progress.dat", header=None)
df[0] = pd.to_datetime(df[0])

plt.scatter(df[0], df[1], alpha=0.5)
plt.xticks(rotation=30)
plt.xlabel("Date")
plt.ylabel("Words written")
plt.title("Commit-wise thesis progress")

plt.tight_layout()
plt.savefig("progress.png", dpi=100)
plt.close()
