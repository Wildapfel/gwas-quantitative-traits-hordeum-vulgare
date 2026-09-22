def trait_prediction(mean_A, alpha_A, snp):
    term = mean_A + alpha_A * snp 
    return term - mean_A