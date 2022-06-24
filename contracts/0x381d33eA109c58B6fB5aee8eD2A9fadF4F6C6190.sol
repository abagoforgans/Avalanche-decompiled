contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8
array of address stor1;
uint256 stor2;
mapping of uint8 stor3;

function _fallback() payable {
    revert
}

function register() {
    require stor3[tx.origin]
    stor3[msg.sender] = 1
}

function sub_3bbce03d(?) {
    require calldata.size - 4 >= 32
    require stor3[msg.sender]
    stor2 = arg1
}

function sub_56e54146(?) {
    require stor3[msg.sender]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9623e017(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require stor3[msg.sender]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function initialize() {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = 0x8e8148078f913a36c9d8c7fb2da8b479c77c6ba5
    stor0.field_256 % 1 = 0
    mem[96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[128] = 0x8e8148078f913a36c9d8c7fb2da8b479c77c6ba5
    stor1.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        address(stor1[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length > idx:
        uint256(stor1[idx]) = 0
        idx = idx + 1
        continue 
    stor2 = 1
    stor3[msg.sender] = 1
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor3[msg.sender]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7d8d681f(?) {
    require ext_code.size(0xb1f7494f0a82bb39f0b145a8dc64d031efd2eb17)
    staticcall 0xb1f7494f0a82bb39f0b145a8dc64d031efd2eb17.0x4bbc0659 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0] * stor2
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 196
    while idx < stor1.length:
        mem[t] = address(stor1[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] * stor2, Array(len=stor1.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _19 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _20 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]
    require return_data.size >= _19 + (32 * _20) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _20] = mem[ceil32(return_data.size) + _19 + 128 len 32 * _20]
    require 0 < _20
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 128]
    return memory
      from mem[64]
       len 32
}

function sub_e3878436(?) {
    mem[32] = 3
    require stor3[msg.sender]
    require ext_code.size(0xb1f7494f0a82bb39f0b145a8dc64d031efd2eb17)
    staticcall 0xb1f7494f0a82bb39f0b145a8dc64d031efd2eb17.0x4bbc0659 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0] * stor2
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 196
    while idx < stor1.length:
        mem[t] = address(stor1[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] * stor2, Array(len=stor1.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0] * stor2) >> 32 + 96]
    require return_data.size >= _26 + (32 * _27) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _27] = mem[ceil32(return_data.size) + _26 + 128 len 32 * _27]
    require 0 < _27
    _42 = mem[(2 * ceil32(return_data.size)) + 128]
    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0] * stor2
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = mem[64] + 164
    while idx < stor1.length:
        mem[t] = address(stor1[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[mem[64] + 68] = tx.origin
    mem[mem[64] + 100] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value _42 wei
         gas gas_remaining wei
        args ext_call.return_data[0] * stor2, Array(len=stor1.length, data=mem[mem[64] + 164 len 32 * stor1.length]), tx.origin, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_52] <= test266151307()
    require _52 + mem[_52] + 31 < _52 + return_data.size
    require mem[_52 + mem[_52]] <= test266151307()
    require (32 * mem[_52 + mem[_52]]) + 32 >= 0 and _52 + ceil32(return_data.size) + (32 * mem[_52 + mem[_52]]) + 32 <= test266151307()
    require return_data.size >= mem[_52] + (32 * mem[_52 + mem[_52]]) + 32
}



}
