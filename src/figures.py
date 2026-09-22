import pandas as pd
import numpy as np
from pandas.plotting import scatter_matrix
from scipy.stats import linregress
import matplotlib.pyplot as plt

def scatter_matrix_linreg(df: pd.DataFrame, alpha=0.8, diagonal="kde", figsize=(12,12), title=""):
    sm = scatter_matrix(df, alpha=alpha, diagonal=diagonal, figsize=figsize)    
    fig = plt.gcf()
    fig.suptitle(title, fontsize=16, y=0.92)
    for i in range(len(sm)):
        for j in range(len(sm[i])):
            if not i==j:
                x_label = sm[i][j].get_xlabel()
                y_label = sm[i][j].get_ylabel()
                dim_1 = df[x_label]
                dim_2 = df[y_label]
                lr = linregress(dim_1, dim_2)
                slope = lr[0]
                intercept = lr[1]
                r = round(lr[2], 2)
                min_ = sm[i][j].get_xbound()[0]
                max_ = sm[i][j].get_xbound()[1]
                xs = np.arange(min_, max_, 1)  
                ys = [intercept + slope*x for x in xs]
                sm[i][j].plot(xs,ys, color="r", label=f"{r}")
                sm[i][j].legend(loc="upper right", fontsize=8)
    return fig

def corr_matrix(df, title = ""):
    fig, axs = plt.subplots(1,1)
    cr = df.corr()
    heatmap = axs.imshow(cr, cmap="viridis")
    for i in range(len(df.columns)):
        for j in range(len(cr.iloc[i,:])):
            axs.text(x=i-0.15, y=j+0.1, s=round(cr.iloc[i, j], 2), color="black")
    axs.set_xticks([i for i in range(len(cr.columns))])
    axs.set_xticklabels(cr.columns)
    axs.set_yticks([i for i in range(len(cr.columns))])
    axs.set_yticklabels(cr.columns)
    fig.colorbar(heatmap)
    fig.suptitle(title, fontsize=12, x=0.45, y=0.94)
    return fig