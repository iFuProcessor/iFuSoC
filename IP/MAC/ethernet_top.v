/*------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Copyright (c) 2016, Loongson Technology Corporation Limited.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this 
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of Loongson Technology Corporation Limited nor the names of 
its contributors may be used to endorse or promote products derived from this 
software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
DISCLAIMED. IN NO EVENT SHALL LOONGSON TECHNOLOGY CORPORATION LIMITED BE LIABLE
TO ANY PARTY FOR DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE 
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------------
------------------------------------------------------------------------------*/

module ethernet_top
(
    hclk,
    hrst_,      
    m_awid    ,
    m_awaddr  ,
    m_awlen   ,
    m_awsize  ,
    m_awburst ,
    m_awlock  ,
    m_awcache ,
    m_awprot  ,
    m_awvalid ,
    m_awready ,
    m_wid     ,
    m_wdata   ,
    m_wstrb   ,
    m_wlast   ,
    m_wvalid  ,
    m_wready  ,
    m_bid     ,
    m_bresp   ,
    m_bvalid  ,
    m_bready  ,
    m_arid    ,
    m_araddr  ,
    m_arlen   ,
    m_arsize  ,
    m_arburst ,
    m_arlock  ,
    m_arcache ,
    m_arprot  ,
    m_arvalid ,
    m_arready ,
    m_rid     ,
    m_rdata   ,
    m_rresp   ,
    m_rlast   ,
    m_rvalid  ,
    m_rready  ,
    s_awid    ,
    s_awaddr  ,
    s_awlen   ,
    s_awsize  ,
    s_awburst ,
    s_awlock  ,
    s_awcache ,
    s_awprot  ,
    s_awvalid ,
    s_awready ,   
    s_wid     ,
    s_wdata   ,
    s_wstrb   ,
    s_wlast   ,
    s_wvalid  ,
    s_wready  ,
    s_bid     ,
    s_bresp   ,
    s_bvalid  ,
    s_bready  ,
    s_arid    ,
    s_araddr  ,
    s_arlen   ,
    s_arsize  ,
    s_arburst ,
    s_arlock  ,
    s_arcache ,
    s_arprot  ,
    s_arvalid ,
    s_arready ,
    s_rid     ,
    s_rdata   ,
    s_rresp   ,
    s_rlast   ,
    s_rvalid  ,
    s_rready  ,                 

    interrupt_0,
 
    mtxclk_0,     
    mtxen_0,      
    mtxd_0,       
    mtxerr_0,
    mrxclk_0,      
    mrxdv_0,     
    mrxd_0,        
    mrxerr_0,
    mcoll_0,
    mcrs_0,
    mdc_0,
    md_i_0,
    md_o_0,       
    md_oe_0
);

input   hclk;
input   hrst_;      

  output  [  3:0] m_awid              ;
  output  [ 31:0] m_awaddr            ;
  output  [  3:0] m_awlen             ;
  output  [  2:0] m_awsize            ;
  output  [  1:0] m_awburst           ;
  output  [  1:0] m_awlock            ;
  output  [  3:0] m_awcache           ;
  output  [  2:0] m_awprot            ;
  output          m_awvalid           ;
  input           m_awready           ;
  output  [  3:0] m_wid               ;
  output  [ 31:0] m_wdata             ;
  output  [  3:0] m_wstrb             ;
  output          m_wlast             ;
  output          m_wvalid            ;
  input           m_wready            ;
  input   [  3:0] m_bid               ;
  input   [  1:0] m_bresp             ;
  input           m_bvalid            ;
  output          m_bready            ;
  output  [  3:0] m_arid              ;
  output  [ 31:0] m_araddr            ;
  output  [  3:0] m_arlen             ;
  output  [  2:0] m_arsize            ;
  output  [  1:0] m_arburst           ;
  output  [  1:0] m_arlock            ;
  output  [  3:0] m_arcache           ;
  output  [  2:0] m_arprot            ;
  output          m_arvalid           ;
  input           m_arready           ;
  input   [  3:0] m_rid               ;
  input   [ 31:0] m_rdata             ;
  input   [  1:0] m_rresp             ;
  input           m_rlast             ;
  input           m_rvalid            ;
  output          m_rready            ;                 

  input   [  3:0]   s_awid              ;
  input   [ 31:0]   s_awaddr            ;
  input   [  3:0]   s_awlen             ;
  input   [  2:0]   s_awsize            ;
  input   [  1:0]   s_awburst           ;
  input   [  1:0]   s_awlock            ;
  input   [  3:0]   s_awcache           ;
  input   [  2:0]   s_awprot            ;
  input             s_awvalid           ;
  output            s_awready           ;
  input   [  3:0]   s_wid               ;
  input   [ 31:0]   s_wdata             ;
  input   [  3:0]   s_wstrb             ;
  input             s_wlast             ;
  input             s_wvalid            ;
  output            s_wready            ;
  output  [  3:0]   s_bid               ;
  output  [  1:0]   s_bresp             ;
  output            s_bvalid            ;
  input             s_bready            ;
  input   [  3:0]   s_arid              ;
  input   [ 31:0]   s_araddr            ;
  input   [  3:0]   s_arlen             ;
  input   [  2:0]   s_arsize            ;
  input   [  1:0]   s_arburst           ;
  input   [  1:0]   s_arlock            ;
  input   [  3:0]   s_arcache           ;
  input   [  2:0]   s_arprot            ;
  input             s_arvalid           ;
  output            s_arready           ;
  output  [  3:0]   s_rid               ;
  output  [ 31:0]   s_rdata             ;
  output  [  1:0]   s_rresp             ;
  output            s_rlast             ;
  output            s_rvalid            ;
  input             s_rready            ;      

// (* MARK_DEBUG = "TRUE" *) wire [3:0] mawid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] mawaddr_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] mawlen_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] mawsize_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] mawburst_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] mawlock_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] mawcache_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] mawprot_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mawvalid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mawready_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] mwid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] mwdata_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] mwstrb_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mwlast_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mwvalid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mwready_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] mbid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] mbresp_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mbvalid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mbready_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] marid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] maraddr_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] marlen_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] marsize_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] marburst_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] marlock_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] marcache_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] marprot_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] marvalid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] marready_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] mrid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] mrdata_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] mrresp_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mrlast_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mrvalid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] mrready_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sawid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] sawaddr_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sawlen_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] sawsize_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] sawburst_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] sawlock_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sawcache_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] sawprot_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] sawvalid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] sawready_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] swid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] swdata_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] swstrb_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] swlast_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] swvalid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] swready_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sbid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] sbresp_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] sbvalid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] sbready_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sarid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] saraddr_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sarlen_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] sarsize_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] sarburst_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] sarlock_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] sarcache_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [2:0] sarprot_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] sarvalid_i_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] sarready_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [3:0] srid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [31:0] srdata_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [1:0] srresp_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] srlast_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] srvalid_o_ila;
// (* MARK_DEBUG = "TRUE" *) wire [0:0] srready_i_ila;

// assign mawid_o_ila = mawid_o;
// assign mawaddr_o_ila = mawaddr_o;
// assign mawlen_o_ila = mawlen_o;
// assign mawsize_o_ila = mawsize_o;
// assign mawburst_o_ila = mawburst_o;
// assign mawlock_o_ila = mawlock_o;
// assign mawcache_o_ila = mawcache_o;
// assign mawprot_o_ila = mawprot_o;
// assign mawvalid_o_ila = mawvalid_o;
// assign mawready_i_ila = mawready_i;
// assign mwid_o_ila = mwid_o;
// assign mwdata_o_ila = mwdata_o;
// assign mwstrb_o_ila = mwstrb_o;
// assign mwlast_o_ila = mwlast_o;
// assign mwvalid_o_ila = mwvalid_o;
// assign mwready_i_ila = mwready_i;
// assign mbid_i_ila = mbid_i;
// assign mbresp_i_ila = mbresp_i;
// assign mbvalid_i_ila = mbvalid_i;
// assign mbready_o_ila = mbready_o;
// assign marid_o_ila = marid_o;
// assign maraddr_o_ila = maraddr_o;
// assign marlen_o_ila = marlen_o;
// assign marsize_o_ila = marsize_o;
// assign marburst_o_ila = marburst_o;
// assign marlock_o_ila = marlock_o;
// assign marcache_o_ila = marcache_o;
// assign marprot_o_ila = marprot_o;
// assign marvalid_o_ila = marvalid_o;
// assign marready_i_ila = marready_i;
// assign mrid_i_ila = mrid_i;
// assign mrdata_i_ila = mrdata_i;
// assign mrresp_i_ila = mrresp_i;
// assign mrlast_i_ila = mrlast_i;
// assign mrvalid_i_ila = mrvalid_i;
// assign mrready_o_ila = mrready_o;
// assign sawid_i_ila = sawid_i;
// assign sawaddr_i_ila = sawaddr_i;
// assign sawlen_i_ila = sawlen_i;
// assign sawsize_i_ila = sawsize_i;
// assign sawburst_i_ila = sawburst_i;
// assign sawlock_i_ila = sawlock_i;
// assign sawcache_i_ila = sawcache_i;
// assign sawprot_i_ila = sawprot_i;
// assign sawvalid_i_ila = sawvalid_i;
// assign sawready_o_ila = sawready_o;
// assign swid_i_ila = swid_i;
// assign swdata_i_ila = swdata_i;
// assign swstrb_i_ila = swstrb_i;
// assign swlast_i_ila = swlast_i;
// assign swvalid_i_ila = swvalid_i;
// assign swready_o_ila = swready_o;
// assign sbid_o_ila = sbid_o;
// assign sbresp_o_ila = sbresp_o;
// assign sbvalid_o_ila = sbvalid_o;
// assign sbready_i_ila = sbready_i;
// assign sarid_i_ila = sarid_i;
// assign saraddr_i_ila = saraddr_i;
// assign sarlen_i_ila = sarlen_i;
// assign sarsize_i_ila = sarsize_i;
// assign sarburst_i_ila = sarburst_i;
// assign sarlock_i_ila = sarlock_i;
// assign sarcache_i_ila = sarcache_i;
// assign sarprot_i_ila = sarprot_i;
// assign sarvalid_i_ila = sarvalid_i;
// assign sarready_o_ila = sarready_o;
// assign srid_o_ila = srid_o;
// assign srdata_o_ila = srdata_o;
// assign srresp_o_ila = srresp_o;
// assign srlast_o_ila = srlast_o;
// assign srvalid_o_ila = srvalid_o;
// assign srready_i_ila = srready_i;

// ila_0 ila(
// .clk(hclk),
// .probe0(mawid_o_ila[3:0]),
// .probe1(mawaddr_o_ila[31:0]),
// .probe2(mawlen_o_ila[3:0]),
// .probe3(mawsize_o_ila[2:0]),
// .probe4(mawburst_o_ila[1:0]),
// .probe5(mawlock_o_ila[1:0]),
// .probe6(mawcache_o_ila[3:0]),
// .probe7(mawprot_o_ila[2:0]),
// .probe8(mawvalid_o_ila[0:0]),
// .probe9(mawready_i_ila[0:0]),
// .probe10(mwid_o_ila[3:0]),
// .probe11(mwdata_o_ila[31:0]),
// .probe12(mwstrb_o_ila[3:0]),
// .probe13(mwlast_o_ila[0:0]),
// .probe14(mwvalid_o_ila[0:0]),
// .probe15(mwready_i_ila[0:0]),
// .probe16(mbid_i_ila[3:0]),
// .probe17(mbresp_i_ila[1:0]),
// .probe18(mbvalid_i_ila[0:0]),
// .probe19(mbready_o_ila[0:0]),
// .probe20(marid_o_ila[3:0]),
// .probe21(maraddr_o_ila[31:0]),
// .probe22(marlen_o_ila[3:0]),
// .probe23(marsize_o_ila[2:0]),
// .probe24(marburst_o_ila[1:0]),
// .probe25(marlock_o_ila[1:0]),
// .probe26(marcache_o_ila[3:0]),
// .probe27(marprot_o_ila[2:0]),
// .probe28(marvalid_o_ila[0:0]),
// .probe29(marready_i_ila[0:0]),
// .probe30(mrid_i_ila[3:0]),
// .probe31(mrdata_i_ila[31:0]),
// .probe32(mrresp_i_ila[1:0]),
// .probe33(mrlast_i_ila[0:0]),
// .probe34(mrvalid_i_ila[0:0]),
// .probe35(mrready_o_ila[0:0]),
// .probe36(sawid_i_ila[3:0]),
// .probe37(sawaddr_i_ila[31:0]),
// .probe38(sawlen_i_ila[3:0]),
// .probe39(sawsize_i_ila[2:0]),
// .probe40(sawburst_i_ila[1:0]),
// .probe41(sawlock_i_ila[1:0]),
// .probe42(sawcache_i_ila[3:0]),
// .probe43(sawprot_i_ila[2:0]),
// .probe44(sawvalid_i_ila[0:0]),
// .probe45(sawready_o_ila[0:0]),
// .probe46(swid_i_ila[3:0]),
// .probe47(swdata_i_ila[31:0]),
// .probe48(swstrb_i_ila[3:0]),
// .probe49(swlast_i_ila[0:0]),
// .probe50(swvalid_i_ila[0:0]),
// .probe51(swready_o_ila[0:0]),
// .probe52(sbid_o_ila[3:0]),
// .probe53(sbresp_o_ila[1:0]),
// .probe54(sbvalid_o_ila[0:0]),
// .probe55(sbready_i_ila[0:0]),
// .probe56(sarid_i_ila[3:0]),
// .probe57(saraddr_i_ila[31:0]),
// .probe58(sarlen_i_ila[3:0]),
// .probe59(sarsize_i_ila[2:0]),
// .probe60(sarburst_i_ila[1:0]),
// .probe61(sarlock_i_ila[1:0]),
// .probe62(sarcache_i_ila[3:0]),
// .probe63(sarprot_i_ila[2:0]),
// .probe64(sarvalid_i_ila[0:0]),
// .probe65(sarready_o_ila[0:0]),
// .probe66(srid_o_ila[3:0]),
// .probe67(srdata_o_ila[31:0]),
// .probe68(srresp_o_ila[1:0]),
// .probe69(srlast_o_ila[0:0]),
// .probe70(srvalid_o_ila[0:0]),
// .probe71(srready_i_ila[0:0])
// );

input           mtxclk_0;  
output  [3:0]   mtxd_0;    
output          mtxen_0;   
output          mtxerr_0;  

input           mrxclk_0;  
input   [3:0]   mrxd_0;    
input           mrxdv_0;   
input           mrxerr_0;  

input           mcoll_0;   
input           mcrs_0;    

input           md_i_0;      
output          mdc_0;     
output          md_o_0;      
output          md_oe_0;    

output          interrupt_0;


`define  MAHBDATAWIDTH 32
`define  TFIFODEPTH 9
`define  RFIFODEPTH 9
`define  ADDRDEPTH  6

wire    [`MAHBDATAWIDTH - 1:0] trdata_0;  
wire    twe_0;
wire    [`TFIFODEPTH - 1:0] twaddr_0;
wire    [`TFIFODEPTH - 1:0] traddr_0;
wire    [`MAHBDATAWIDTH - 1:0] twdata_0;

wire    [`MAHBDATAWIDTH - 1:0] rrdata_0; 
wire    rwe_0;
wire    [`RFIFODEPTH - 1:0] rwaddr_0;
wire    [`RFIFODEPTH - 1:0] rraddr_0;
wire    [`MAHBDATAWIDTH - 1:0] rwdata_0;    


mac_top u_mac_top_0
(
    .hclk(hclk),       
    .hrst_(hrst_),      

    .mawid_o      (m_awid    ),
    .mawaddr_o    (m_awaddr  ),
    .mawlen_o     (m_awlen   ),
    .mawsize_o    (m_awsize  ),
    .mawburst_o   (m_awburst ),
    .mawlock_o    (m_awlock  ),
    .mawcache_o   (m_awcache ),
    .mawprot_o    (m_awprot  ),
    .mawvalid_o   (m_awvalid ),
    .mawready_i   (m_awready ),
    .mwid_o       (m_wid     ),
    .mwdata_o     (m_wdata   ),
    .mwstrb_o     (m_wstrb   ),
    .mwlast_o     (m_wlast   ),
    .mwvalid_o    (m_wvalid  ),
    .mwready_i    (m_wready  ),
    .mbid_i       (m_bid     ),
    .mbresp_i     (m_bresp   ),
    .mbvalid_i    (m_bvalid  ),
    .mbready_o    (m_bready  ),
    .marid_o      (m_arid    ),
    .maraddr_o    (m_araddr  ),
    .marlen_o     (m_arlen   ),
    .marsize_o    (m_arsize  ),
    .marburst_o   (m_arburst ),
    .marlock_o    (m_arlock  ),
    .marcache_o   (m_arcache ),
    .marprot_o    (m_arprot  ),
    .marvalid_o   (m_arvalid ),
    .marready_i   (m_arready ),
    .mrid_i       (m_rid     ),
    .mrdata_i     (m_rdata   ),
    .mrresp_i     (m_rresp   ),
    .mrlast_i     (m_rlast   ),
    .mrvalid_i    (m_rvalid  ),
    .mrready_o    (m_rready  ),
    .sawid_i       (s_awid    ),
    .sawaddr_i     (s_awaddr  ),
    .sawlen_i      (s_awlen   ),
    .sawsize_i     (s_awsize  ),
    .sawburst_i    (s_awburst ),
    .sawlock_i     (s_awlock  ),
    .sawcache_i    (s_awcache ),
    .sawprot_i     (s_awprot  ),
    .sawvalid_i    (s_awvalid ),
    .sawready_o    (s_awready ),   
    .swid_i        (s_wid     ),
    .swdata_i      (s_wdata   ),
    .swstrb_i      (s_wstrb   ),
    .swlast_i      (s_wlast   ),
    .swvalid_i     (s_wvalid  ),
    .swready_o     (s_wready  ),
    .sbid_o        (s_bid     ),
    .sbresp_o      (s_bresp   ),
    .sbvalid_o     (s_bvalid  ),
    .sbready_i     (s_bready  ),
    .sarid_i       (s_arid    ),
    .saraddr_i     (s_araddr  ),
    .sarlen_i      (s_arlen   ),
    .sarsize_i     (s_arsize  ),
    .sarburst_i    (s_arburst ),
    .sarlock_i     (s_arlock  ),
    .sarcache_i    (s_arcache ),
    .sarprot_i     (s_arprot  ),
    .sarvalid_i    (s_arvalid ),
    .sarready_o    (s_arready ),
    .srid_o        (s_rid     ),
    .srdata_o      (s_rdata   ),
    .srresp_o      (s_rresp   ),
    .srlast_o      (s_rlast   ),
    .srvalid_o     (s_rvalid  ),
    .srready_i     (s_rready  ),                 

    .interrupt(interrupt_0),
 
    .mtxclk(mtxclk_0),      .mtxen(mtxen_0),       .mtxd(mtxd_0),        .mtxerr(mtxerr_0),
    .mrxclk(mrxclk_0),      .mrxdv(mrxdv_0),       .mrxd(mrxd_0),        .mrxerr(mrxerr_0),
    .mcoll(mcoll_0),       .mcrs(mcrs_0),
    .mdc(mdc_0),         .md_i(md_i_0),        .md_o(md_o_0),        .md_oe(md_oe_0),

    .trdata(trdata_0),
    .twe(twe_0),
    .twaddr(twaddr_0),
    .traddr(traddr_0),
    .twdata(twdata_0),

    .rrdata(rrdata_0),
    .rwe(rwe_0),
    .rwaddr(rwaddr_0),
    .rraddr(rraddr_0),
    .rwdata(rwdata_0)
); 

wire [31:0] douta_nc;
dpram_512x32 dpram_512x32_tx(
  .clka     (hclk    ),
  .ena      (twe_0   ),
  .wea      (twe_0   ),
  .addra    (twaddr_0),
  .dina     (twdata_0),
  .clkb     (mtxclk_0),
  .addrb    (traddr_0),
  .doutb    (trdata_0)
);

wire [31:0] doutb_nc;
dpram_512x32 dpram_512x32_rx(
  .clka     (mrxclk_0),
  .ena      (rwe_0   ),
  .wea      (rwe_0   ),
  .addra    (rwaddr_0),
  .dina     (rwdata_0),
  .clkb     (hclk    ),
  .addrb    (rraddr_0),
  .doutb    (rrdata_0)
);

endmodule

