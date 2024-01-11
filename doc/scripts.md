## Scripts Descriptions

### ccscaner.py

对单个文件进行扫描，得到特性表。若指出特性表文件位置，则新建或者更新特性表。若指定有效的详细信息存储路径，则创建文件并将过程中识别出的详细信息加入其中。

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

>   按照小组最终的决定，具体信息的存储路径是一个包含各个特征对应的csv格式文件（深度为1）的目录。在bash脚本中会使用`touch`命令创建这些文件（不存在的话）或者仅更新最后修改日期。
>
>   这里的`detailed info storage path`在我们的实验中基本固定为`./res/repos-info/`。



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

用`-n`参数指定是否进入调试模式；用`-a`参数指定是否打印语法树；用`-f`参数指定一个源文件；用`-c`参数指定是否存储特性表，特性统计表的存储位置默认为`./res/feature-table/$(file_name).csv`（附带参数为`default`），如果指定一个目录名`dir-name`，则存储位置为`./res/feature-table/$(dir-name).csv`；用`-d`参数指定是否存储具体信息，存储位置无需给出，默认为`./res/repos-info/$(feature_name).csv`（已经事先创建）。如果源文件后缀不在`c|cc|cpp|cxx|h|hpp|hxx`中，则不执行。参数均合法则调用`ccscaner.py`执行扫描操作。如果指定`-a`参数则调用`ccprinter.py`打印语法树。

#### Interface

```shell
-n | --no-debug	: don't set debug mode
-a | --ast 		: print ast
-c | --csv-res	: store feature table (with a parameter)
-d | --detail	: store detailed info
-f | --file		: source file (with a parameter)
among these `-f` is necessary.
```

```bash
Usage:
$ ./test-file.sh [-n | --no-debug] [-a | --ast] [-c | --csv-res dir-name] [-d | --detail] [-f | --file] ./path/to/file-name.c
```

>   注意`-c`参数的附带参数是为了支持在`test-dir.sh`中可以将特征表汇总到一个以目录名命名的文件中，而非为每一个文件单独创建一个特征表。

#### Procedure

1.  检查各个参数，据此设置参量
2.  进行源文件路径检查，路径不存在则报错退出；文件后缀不在`c|cc|cpp|cxx|h|hpp|hxx`中则直接结束
3.  如果指定`-c`或者`-d`参数，则创建相应的存储文件路径
    1.  指定`-c`参数：若附带参数为`default`，获取不含前缀路径与后缀的文件名称`$(file_name)`，生成存储文件路径`./res/feature-table/$(file_name).csv`；若为一个其他名称，则创建`./res/feature-table/$(dir_name).csv`并存入其中
    2.  指定`-d`参数：不需要使用`touch`命令在`./res/repos-info/`下创建各个特征文件（开销比较大），`test-dir.sh`中会保证这一点

4.  如果指定`-a`参数，则执行`ccprinter.py`进行打印操作
5.  执行`ccscaner.py`，参数传递按照前述说明



### test-dir.sh

对指定目录下所有符合要求的文件进行测试。

用`-n`参数指定是否进入调试模式；用`-r`参数指定一个源文件目录路径（仓库目录）；用`-c`参数指定是否存储特性表，特性统计表的存储位置无需给出，默认为`./res/feature-table/$(repo_name).csv`；用`-d`参数指定是否存储具体信息，存储位置无需给出，默认为`./res/repos-info/[feature_name].csv`（已经事先创建）。忽略后缀不在`c|cc|cpp|cxx|h|hpp|hxx`中的文件。

对合法的文件调用`test-file.sh`执行测试。过程中应先统计目录下所有合法文件个数，并在处理时显示当前处理的是所有文件中的第几个文件以标示进度。

如果文件不存在，此脚本会为特性表与具体信息创建文件。

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

1.  检查各个参数，据此设置参量
2.  进行源文件路径检查，路径不存在则报错退出
3.  获取目录去除前后缀的名称，生成存储文件路径`./res/repos-info/[feature_name].csv`，使用`touch`命令注意对所有目标特征文件进行操作。
4.  遍历目标目录下所有文件
    1.  如果指定`-c`或者`-d`参数，设置相应的变量值，传递给`test-file.sh`作为参数
    2.  执行`test-file.sh`



