### Csv file storage format

#### Feature table

| No.            | Feature name | Appearance times |
| -------------- | ------------ | ---------------- |
| string 'xx.xx' | string 'xxx' | int x            |



#### Detailed info

`feature_full_name.csv:`

| Repo name    | File name    | Location             | Content |
| ------------ | ------------ | -------------------- | ------- |
| string 'xxx' | string 'xxx' | string '(x,x)-(x,x)' | b'xxx'  |


>   Location: `str(node.start_point)+'-'+str(node.end_point)`.
>
>   Content: can be the text of definition, or anything else. **flexible**.



>
>   #### Detailed info (abandoned method)
>
>   file_name.csv
>
>   | Feature name | Location             | Class name   | Function name | Content |
>   | ------------ | -------------------- | ------------ | ------------- | ------- |
>   | string 'xxx' | string '(x,x)-(x,x)' | string 'xxx' | string 'xxx'  | b'xxx'  |