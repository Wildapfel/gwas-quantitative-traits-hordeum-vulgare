import pandas as pd

# phenotype data
df_ratio = pd.read_csv("data/phenotype/phenotype_matrix.csv",index_col=0)
df_ratio.iloc[:, :] = ""
df_ratio.to_csv("data/phenotype/phenotype_matrix.csv")

# genotype data
df_ratio = pd.read_csv("data/genotype/genotype_matrix_nan.csv",index_col=0)
df_ratio.iloc[:, :] = ""
df_ratio.to_csv("data/genotype/genotype_matrix_nan.csv")

df_ratio = pd.read_csv("data/genotype/genotype_matrix_mode.csv",index_col=0)
df_ratio.iloc[:, :] = ""
df_ratio.to_csv("data/genotype/genotype_matrix_mode.csv")

df_ratio = pd.read_csv("data/genotype/genotype_matrix_knn.csv",index_col=0)
df_ratio.iloc[:, :] = ""
df_ratio.to_csv("data/genotype/genotype_matrix_knn.csv")

df_ratio = pd.read_csv("data/genotype/genotype_location.csv",index_col=0)
df_ratio.iloc[:, :] = ""
df_ratio.to_csv("data/genotype/genotype_location.csv")