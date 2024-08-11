// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Aug 11 12:30:48 2024
// Host        : octopus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/coding/arch/iFuSoC/IP/xilinx_ip/dpram_512x32/dpram_512x32_sim_netlist.v
// Design      : dpram_512x32
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dpram_512x32,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module dpram_512x32
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [8:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "dpram_512x32.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  dpram_512x32_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20480)
`pragma protect data_block
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
Q2vKDKXsdVelatr/xFBtQMI=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
