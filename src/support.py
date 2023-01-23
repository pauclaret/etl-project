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

def reset_and_rename_index(df, index_name):
    """
    It takes a dataframe, resets the index, renames the index, resets the index again, and drops the
    index column
    
    :param df: the dataframe you want to reset and rename the index of
    :param index_name: The name of the index column
    :return: The first 5 rows of the dataframe
    """
    df = df.reset_index()
    df.index = df.index.set_names([index_name])
    df = df.reset_index()
    df = df.drop("index", axis=1)
    return df



    