contract main {




// =====================  Runtime code  =====================


const CALLBACK_SUCCESS = 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9


address lendingPoolAddress;

function lendingPool() payable {
    return lendingPoolAddress
}

function _fallback() payable {
    revert
}

function flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128] = arg2
    mem[160] = 1
    mem[320] = msg.sender
    mem[352] = arg1
    mem[384] = 96
    mem[416] = arg4.length
    mem[448 len arg4.length] = arg4[all]
    idx = 0
    s = 128
    t = ceil32(arg4.length) + 708
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ceil32(ceil32(arg4.length)) + 4 > ceil32(arg4.length) + 128:
        mem[(2 * ceil32(arg4.length)) + 1028] = 0
    require ext_code.size(lendingPoolAddress)
    call lendingPoolAddress.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, address(this.address), 416, 0, 1, mem[ceil32(arg4.length) + 708], 1, arg3, 1, 0, ceil32(arg4.length) + 128, mem[320 len ceil32(ceil32(arg4.length)) + 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function maxFlashLoan(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lendingPoolAddress)
    staticcall lendingPoolAddress.getReserveData(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not ext_call.return_data[236 len 20]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args ext_call.return_data[236 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function flashFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(lendingPoolAddress)
    staticcall lendingPoolAddress.getReserveData(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    require bool(ceil32(return_data.size) + 896 <= test266151307())
    require return_data.size >= 32
    require bool(ceil32(return_data.size) + 928 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[112 len 16]
    require ext_call.return_data[128] == ext_call.return_data[144 len 16]
    require ext_call.return_data[160] == ext_call.return_data[176 len 16]
    require ext_call.return_data[192] == ext_call.return_data[219 len 5]
    require ext_call.return_data[224] == ext_call.return_data[236 len 20]
    require ext_call.return_data[256] == ext_call.return_data[268 len 20]
    require ext_call.return_data[288] == ext_call.return_data[300 len 20]
    require ext_call.return_data[320] == ext_call.return_data[332 len 20]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    if not ext_call.return_data[236 len 20]:
        revert with 0, 'Unsupported currency'
    if not arg2:
        return 0
    require arg2
    if 9 * arg2 / arg2 != 9:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[ceil32(return_data.size) + 1029 len 31]
    return (9 * arg2 / 10000)
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if lendingPoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Callbacks only allowed from Lending Pool'
    if arg4 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Callbacks only initiated from this contract'
    require arg5.length >= 96
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] <= test266151307()
    require arg5 + cd[(arg5 + 100)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 100)] + 36)] <= test266151307()
    require ceil32(cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 128 >= 96
    require cd[(arg5 + 100)] + cd[(arg5 + cd[(arg5 + 100)] + 36)] + 68 <= arg5.length + 36
    require 0 < arg1.length
    require cd[(arg1 + 36)] == address(cd[(arg1 + 36)])
    require 0 < arg2.length
    require 0 < arg3.length
    require ext_code.size(address(cd[(arg1 + 36)]))
    call address(cd[(arg1 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), cd[(arg2 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 36)]), address(cd[(arg1 + 36)]), cd[(arg2 + 36)], cd[(arg3 + 36)], Array(len=cd[(arg5 + cd[(arg5 + 100)] + 36)], data=call.data[arg5 + cd[(arg5 + 100)] + 68 len cd[(arg5 + cd[(arg5 + 100)] + 36)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9:
        revert with 0, 'Callback failed'
    if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(cd[(arg1 + 36)]))
    call address(cd[(arg1 + 36)]).0x23b872dd with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), address(this.address), cd[(arg2 + 36)] + cd[(arg3 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if cd[(arg2 + 36)] + cd[(arg3 + 36)] < cd[(arg2 + 36)]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(address(cd[(arg1 + 36)]))
    call address(cd[(arg1 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args lendingPoolAddress, cd[(arg2 + 36)] + cd[(arg3 + 36)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
