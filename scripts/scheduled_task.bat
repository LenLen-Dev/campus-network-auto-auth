@echo off
set TASK_NAME=У԰����ʱ��֤
set SCRIPT_PATH=%~dp0..\main.py
set PYTHON_PATH=%~dp0..\.venv\Scripts\python.exe

REM ɾ��ͬ����������Ѵ��ڣ�
schtasks /delete /tn "%TASK_NAME%" /f

REM ������ʱ����ÿ 30 ��������һ��
schtasks /create /tn "%TASK_NAME%" /tr "\"%PYTHON_PATH%\" \"%SCRIPT_PATH%\"" /sc minute /mo 30 /f

echo ��ʱ���� "%TASK_NAME%" �����ɹ���
pause