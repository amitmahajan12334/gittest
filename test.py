import os.path
import shutil
import pandas as pd


class Xl2SqlScriptBuild:

    df = pd.read_excel(open('Python Shared Spreadsheet.xlsx', 'rb'), sheet_name='Participant Information')	


    print(df)
    print(df['Inference'])
    print(df['Employee'])

    exit()

if __name__ == "__main__":

    obj_xl2sql = Xl2SqlScriptBuild()
