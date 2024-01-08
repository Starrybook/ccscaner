## Scripts Descriptions

### ccscaner.py

对单个文件进行扫描，得到特性表。若指出特性表文件位置，则新建或者更新特性表。若指定详细信息存储路径，则创建文件并将过程中识别出的详细信息加入其中。

#### Interface

```python
"""@ccscaner.py
input:
	argv[1]: source file path
	argv[2]: in debug mode or not
	argv[3]: feature table storage path
	argv[4]: detailed info storage path
argv[1] is necessary"""
```

```bash
Usage:
$ python3 ./ccscaner.py <source file path> <debug mode> <feature table storage path> <detailed info storage path>
```



### ccanalyser.py

根据已经生成的特性表整理分析得出最终的特性表并存储于原位置。如果过程中有需要利用文件综合信息的特性，则在此文件中处理。

#### Interface

```python
""""@ccanalyser.py
input:
	argv[1]: feature table storage path
	argv[2]: in debug mode or not
	argv[3]: detailed info storage directory
argv[1] is necessary"""
```

```bash
Usage:
$ python3 ./ccanalyser.py <feature table storage path> <debug mode> <detailed info storage directory>
```



****

### test-file.sh

对单个文件进行单独测试。

用`-n`参数指定是否进入调试模式；用`-a`参数指定是否打印语法树；用`-f`参数指定一个源文件；用`-c`参数指定是否存储特性表，特性统计表的存储位置无需给出，默认为`./res/feature-table/$(file_name)-$(date_and_time).csv`；用`-d`参数指定是否存储具体信息，存储位置无需给出，默认为`./res/repos-info/$(file_name)-$(date_time).csv`。如果默认文件不存在则创建相应路径与相应文件。如果源文件后缀不在`c|cc|cpp|cxx|h|hpp|hxx`中，则不执行，报出错误。参数均合法则调用`ccscaner.py`执行扫描操作。如果指定`-a`参数则调用`ccprinter.py`打印语法树。

#### Interface

```shell
-n | --no-debug	: don't set debug mode
-a | --ast 		: print ast
-c | --csv-res	: store feature table
-d | --detail	: store detailed info
-f | --file		: source file
among these `-f` is necessary.
```

```bash
Usage:
$ ./test-file.sh [-n | --no-debug] [-a | --ast] [-c | --csv-res] [-d | --detail] [-f | --file] ./path/to/file-name.c
```

#### Procedure

1.  检查参数，设置参量
2.  进行源文件路径检查，路径不存在则报错退出
3.  获取文件名称、日期时间信息，生成存储文件路径
4.  如果指定`-c`或者`-d`参数，则创建相应的存储文件路径
5.  如果指定`-a`参数，则执行`ccprinter.py`进行打印操作
6.  执行`ccscaner.py`



### test-dir.sh

对指定目录下所有符合要求的文件进行测试。

用`-n`参数指定是否进入调试模式；用`-r`参数指定一个源文件目录；用`-c`参数指定是否存储特性表；特性统计表的存储位置无需给出；默认为`./res/feature-table/$(reop_name)-$(date_and_time).csv`；用`-d`参数指定是否存储具体信息，存储位置无需给出，默认为`./res/repos-info/$(repo_name)-$(date_time)/`。如果默认文件不存在则创建相应路径与相应文件。忽略后缀不在`c|cc|cpp|cxx|h|hpp|hxx`中的文件。对合法的文件调用`test-file.sh`执行测试。

过程中应当显示当前处理的是所有文件中的第几个文件以标示进度。

此脚本需要为特性表与具体信息创建存储目录（如果不存在的话）以及对应文件。

#### Interface

```shell
-n | --no-debug	: don't set debug mode
-c | --csv-res	: store feature table
-d | --detail	: store detailed info
-r | --dir		: source directory
among these `-r` is necessary.
```

```bash
Usage:
$ ./test-file.sh [-n | --no-debug] [-c | --csv-res] [-d | --detail] [-r | --dir] ./path/to/dir-name/
```

#### Procedure

1.  检查参数，设置参量
2.  进行源文件路径检查，路径不存在则报错退出
3.  获取目录名称、日期时间信息，生成存储文件根目录路径
4.  遍历目标目录下所有文件
    1.  生成其对应的存储文件的路径
    2.  如果指定`-c`或者`-d`参数，则创建相应的存储文件路径
    3.  执行`test-file.sh`

>   `test-file.sh`可以正确运行后再填写这一文件。

### scan-project.sh

是对`test-dir.sh`的封装，接口更为简单。

>   `test-dir.sh`可以对任意目录正确运行后再填写这一文件。



