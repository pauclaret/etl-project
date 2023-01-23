import pandas as pd
import numpy

def read_csv(csv):
    """
    It reads a csv file and returns a pandas dataframe
    
    :param csv: the name of the csv file
    :return: A dataframe
    """
    return pd.read_csv(csv, index_col=0)

def index_as_column(dataframe, name):
    """
    It takes a dataframe and a name, sets the index name to the name, resets the index, and returns the
    first five rows of the dataframe
    
    :param dataframe: the dataframe you want to convert
    :param name: The name of the column that will be created from the index
    :return: The first 5 rows of the dataframe with the index as a column.
    """
    dataframe.index = dataframe.index.set_names([name])
    dataframe = dataframe.reset_index()
    return dataframe.head()


    