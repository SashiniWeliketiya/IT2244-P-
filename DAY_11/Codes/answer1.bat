cd %USERPROFILE%\Desktop
mkdir CSC2244 Marks Exam
cd CSC2244
mkdir practical theory "exam papers"
cd practical
echo.> practical.txt
echo.> practical.docx
echo.> practical.pptx
cd ..

cd theory
echo.> theory.txt
echo.> theory.docx
echo.> theory.pptx
cd ..

cd "exam papers"
echo.> exam.txt
echo.> exam.docx
echo.> exam.pptx
cd ..

cd %USERPROFILE%\Desktop
echo.> "Icae Marks.xlsx"
echo.> "Final Exam Marks.xlsx"
move "Icae Marks.xlsx" Marks
move "Final Exam Marks.xlsx" Marks

xcopy /E /I Marks Exam\Marks

attrib +h Exam


