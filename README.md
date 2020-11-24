# :page_facing_up: easy-ps

A simple and easy-to-use personal statement LaTeX framework. This solves the problem of messy files when writing personal statements for multiple universities.

![Screenshot](docs/example.png)

## Download
Clone the repository into any of your directory.
```zsh
git clone https://github.com/salfaris/easy-ps
```

## Usage

 Only 4 steps: open, update settings, write content, compile.

1. Go to the `main` directory and open `main.tex` in your favorite LaTeX text editor (mine is Sublime Text).

2. Change these variables accordingly:
   ```tex
   studentName{insert-your-name}
   courseName{insert-your-course-name}
   psForUniversity{insert-uni-you-are-applying-to}
   showTitle{true/false}
   ```
    Clearly, the first is global so you'd only need to change this once. However, the second, third and fourth will usually need to be changed constantly. 

    :heavy_exclamation_mark: There is one caveat for the `psForUniversity` variable; keep reading.

3. Open the `content` directory and create a new `.tex` file named **exactly equal (word-for-word)** to what you inserted in the `psForUniversity` variable. Then write your personal statement normally in this file.

    Note the file name **must** be the same word-for-word for otherwise, it will crash at compile time.

    Advisable content filename examples: `oxford.tex` for the University of Oxford; `mit.tex` for the Massachusetts Institute of Technology. 

4. Build your PDF file as usual **or** compile using the following command in your terminal:
    ```zsh
    pdflatex -output-dir=output main.tex
    ```
    If you are using Sublime Text with LaTeXTools, then this package has a built-in setting to do exactly the above command so that you can just Cmd+B as usual. Likewise, there is usually a setting for other LaTeX editor like TexStudio and VSCode.

5. Done! Your pdf file can be found in the `output` directory.

## :heavy_exclamation_mark: Warning for users
1. Directory and file names are sensitive, so it is not advisable to change the names of, in particular, `output`, `content` and `statement.cls` unless you know what you are doing.
   
2. Do not edit anything after `\begin{document}`; unless you know what you are doing.
   
3. Again we emphasize, `psForUniversity` **must** match a `.tex` file in the `content` directory.



