import pandas as pd
import numpy

def analyze_dataframe(df):
    """
    It prints the shape, columns, missing values, data types, head, and describe of a dataframe.
    
    :param df: The dataframe to analyze
    """
    print("Shape:", df.shape)
    print("\nColumns:", df.columns)
    print("\nMissing values:", df.isna().sum())
    print("\nData types:", df.dtypes)
    print("\nHead:", df.head())
    print("\nDescribe:", df.describe())



    