# Create your own binder notebook

1. Create a new GitHub repository from this template: Click on [this link](https://github.com/8080labs/bamboolib_binder_template/generate) to create a new repository that has the same folder structure as our template. Make sure that you create a public repository.
    - Alternatively, you can also use the other public alternatives that binder supports. For example, your own hosted public Git repository or a public GitLab repository.

2. Use on any data you want:

    - We recommend accessing data files using web APIs (e.g. with the `requests` package). This especially holds for **larger datasets**. If you access the data files frequently, you might want to host them yourself.
    - If you have **small datasets** (< 1 MB in total), you can copy them into the `data_for_container/` folder (you can use the `.parquet` file format to compress your files. pandas has [methods for reading and writing parquet files](https://pandas.pydata.org/pandas-docs/version/0.21/io.html#io-parquet)).
    - You can also create your own docker image including all your data and use that as a base in the `Dockerfile`.

3. Add own Notebooks: copy your notebook files in the `data_for_container/`.

4. Create your own binder link / button: Go to https://mybinder.org/ and fill in your repository's details.

5. Share the binder link with your friends and the world.
