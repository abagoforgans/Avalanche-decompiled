contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8
array of address stor1;
uint256 stor2; offset 32
uint256 stor2;
uint256 stor3;
mapping of uint8 stor4;

function _fallback() payable {
    revert
}

function register() {
    require stor4[tx.origin]
    stor4[msg.sender] = 1
}

function sub_4bd81919(?) {
    require calldata.size - 4 >= 32
    require stor4[msg.sender]
    stor3 = arg1
}

function sub_3bbce03d(?) {
    require calldata.size - 4 >= 32
    require stor4[msg.sender]
    uint256(stor2.field_0) = arg1
}

function sub_ca039ce6(?) {
    require stor4[msg.sender]
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
    require stor4[msg.sender]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function initialize() {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = 0xf5ee578505f4d876fef288dfd9fd5e15e9ea1318
    stor0.field_256 % 1 = 0
    mem[96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[128] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[160] = 0xf5ee578505f4d876fef288dfd9fd5e15e9ea1318
    stor1.length = 3
    s = 0
    idx = 96
    while 192 > idx:
        address(stor1[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor1.length > idx:
        uint256(stor1[idx]) = 0
        idx = idx + 1
        continue 
    uint256(stor2.field_0) = 750 * 10^6
    stor3 = 125 * 10^16
    stor4[msg.sender] = 1
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor4[msg.sender]
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

function sub_7e6d083e(?) {
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor2.field_0)
    mem[132] = 64
    mem[164] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = 196
    while idx < stor1.length:
        mem[t] = address(stor1[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor2.field_0), Array(len=stor1.length, data=mem[196 len 32 * stor1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _15 = mem[96 len 4], Mask(224, 0, stor2.field_32)
    require mem[96 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor2.field_32) + 127 < return_data.size + 96
    _16 = mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]
    require mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _16
    require return_data.size >= _15 + (32 * _16) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _16] = mem[_15 + 128 len 32 * _16]
    require 0 < _16
    mem[mem[64]] = mem[ceil32(return_data.size) + 128]
    return memory
      from mem[64]
       len 32
}

function sub_7d8d681f(?) {
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor2.field_0)
    mem[132] = 64
    mem[164] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = 196
    while idx < stor1.length:
        mem[t] = address(stor1[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor2.field_0), Array(len=stor1.length, data=mem[196 len 32 * stor1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _15 = mem[96 len 4], Mask(224, 0, stor2.field_32)
    require mem[96 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor2.field_32) + 127 < return_data.size + 96
    _16 = mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]
    require mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _16
    require return_data.size >= _15 + (32 * _16) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _16] = mem[_15 + 128 len 32 * _16]
    require 0 < _16
    mem[mem[64]] = mem[ceil32(return_data.size) + 128] + stor3
    return memory
      from mem[64]
       len 32
}

function sub_e3878436(?) {
    mem[32] = 4
    require stor4[msg.sender]
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor2.field_0)
    mem[132] = 64
    mem[164] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = 196
    while idx < stor1.length:
        mem[t] = address(stor1[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor2.field_0), Array(len=stor1.length, data=mem[196 len 32 * stor1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _23 = mem[96 len 4], Mask(224, 0, stor2.field_32)
    require mem[96 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor2.field_32) + 127 < return_data.size + 96
    _24 = mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]
    require mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _24
    require return_data.size >= _23 + (32 * _24) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _24] = mem[_23 + 128 len 32 * _24]
    require 0 < _24
    _40 = mem[ceil32(return_data.size) + 128]
    _41 = mem[64]
    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = uint256(stor2.field_0)
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = stor1.length
    mem[0] = 1
    idx = 0
    s = 0
    t = mem[64] + 164
    while idx < stor1.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[_41 + 68] = tx.origin
    mem[_41 + 100] = block.timestamp
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
       value _40 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _41 + (32 * stor1.length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _51 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_51] <= test266151307()
    require _51 + mem[_51] + 31 < _51 + return_data.size
    require mem[_51 + mem[_51]] <= test266151307()
    require (32 * mem[_51 + mem[_51]]) + 32 >= 0 and _51 + ceil32(return_data.size) + (32 * mem[_51 + mem[_51]]) + 32 <= test266151307()
    require return_data.size >= mem[_51] + (32 * mem[_51 + mem[_51]]) + 32
    call tx.origin with:
       value stor3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
