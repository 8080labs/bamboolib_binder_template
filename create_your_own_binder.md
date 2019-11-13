# Create your own binder notebook

1. Create a new repository from this template: Click on [this link](https://github.com/8080labs/bamboolib_binder_template/generate) to create a new repository that has the same folder structure as our template. Make sure that you create a public repository.

2. Use other data:

    - you can copy **smaller datasets** in the `data_for_container/` (you can use the `.parquet` file format to compress your files. pandas has [methods for reading and writing parquet files](https://pandas.pydata.org/pandas-docs/version/0.21/io.html#io-parquet)).
    - for **larger datasets**, we recommend accessing them using web APIs (e.g. with the `requests` package).

3. Add own Notebooks: copy your notebook files in the `data_for_container/`.

4. Create your own binder link / button: Go to https://mybinder.org/ and fill in your repository's details.

5. Share the binder link with your friends and the world.