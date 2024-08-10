package ip

import chisel3.{BlackBox, Bool, Bundle, Input, Output, UInt, fromIntToWidth}
import common.AXI3Len

class core_top extends BlackBox {
    val axiParams = new AXI3Len
    axiParams.awqos = 0
    axiParams.arqos = 0
    val io = IO(new Bundle {
        val aclk = Input(Bool())
        val aresetn = Input(Bool())
        val intrpt = Input(UInt(8.W))
        val awaddr = Output(UInt(axiParams.awaddr.W))
        val awprot = Output(UInt(axiParams.awprot.W))
        val awvalid = Output(UInt(axiParams.awvalid.W))
        val awready = Input(UInt(axiParams.awready.W))
        val awsize = Output(UInt(axiParams.awsize.W))
        val awburst = Output(UInt(axiParams.awburst.W))
        val awcache = Output(UInt(axiParams.awcache.W))
        val awlen = Output(UInt(axiParams.awlen.W))
        val awlock = Output(UInt(axiParams.awlock.W))
        val awqos = Output(UInt(axiParams.awqos.W))
        val awid = Output(UInt(axiParams.awid.W))
        val wdata = Output(UInt(axiParams.wdata.W))
        val wstrb = Output(UInt(axiParams.wstrb.W))
        val wvalid = Output(UInt(axiParams.wvalid.W))
        val wready = Input(UInt(axiParams.wready.W))
        val wlast = Output(UInt(axiParams.wlast.W))
        val wid = Output(UInt(axiParams.wid.W))
        val bresp = Input(UInt(axiParams.bresp.W))
        val bvalid = Input(UInt(axiParams.bvalid.W))
        val bready = Output(UInt(axiParams.bready.W))
        val bid = Input(UInt(axiParams.bid.W))
        val araddr = Output(UInt(axiParams.araddr.W))
        val arprot = Output(UInt(axiParams.arprot.W))
        val arvalid = Output(UInt(axiParams.arvalid.W))
        val arready = Input(UInt(axiParams.arready.W))
        val arsize = Output(UInt(axiParams.arsize.W))
        val arburst = Output(UInt(axiParams.arburst.W))
        val arcache = Output(UInt(axiParams.arcache.W))
        val arlock = Output(UInt(axiParams.arlock.W))
        val arlen = Output(UInt(axiParams.arlen.W))
        val arqos = Output(UInt(axiParams.arqos.W))
        val arid = Output(UInt(axiParams.arid.W))
        val rdata = Input(UInt(axiParams.rdata.W))
        val rresp = Input(UInt(axiParams.rresp.W))
        val rvalid = Input(UInt(axiParams.rvalid.W))
        val rready = Output(UInt(axiParams.rready.W))
        val rlast = Input(UInt(axiParams.rlast.W))
        val rid = Input(UInt(axiParams.rid.W))
    })
}
