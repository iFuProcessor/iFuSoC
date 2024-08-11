# iFuSoC

## 环境配置
1. 参考`https://www.chisel-lang.org/docs/installation`安装`Javac`以及`SBT`。

## 编译
1. 修改`repo/Makfile`中的`gen_dir`为`system verilog`代码生成目录
2. 运行`make`命令，即可在`gen_dir`目录下生成`iFuSoC.sv`文件
3. 将`repo/src/main/verilog/soc_top.v`复制到`gen_dir`目录下
4. 此时，整个项目对外暴露出一个`soc_top`模块

## 上板运行
1. 使用[Vivado2023.2](https://ongeki.sega.jp)打开`repo/fpga/run_vivado/system_run.xpr`，项目应有顶层模块`soc_top`，且正确添加`repo/IP`下各IP核
2. 此时可运行`Generate Bitstream`生成比特流
