contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
array of address stor1;
uint256 stor2; offset 32
uint256 stor2;
mapping of uint8 stor3;

function _fallback() payable {
    revert
}

function register() {
    require stor3[tx.origin]
    stor3[address(msg.sender)] = 1
}

function sub_3bbce03d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor3[address(msg.sender)]
    uint256(stor2.field_0) = arg1
}

function sub_ca039ce6(?) {
    require stor3[address(msg.sender)]
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
    require stor3[address(msg.sender)]
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
    address(stor0.field_8) = 0x838a68e0e6d193a10198984bdeedc356bd82a15d
    mem[96] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[128] = address(stor0.field_8)
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
    uint256(stor2.field_0) = 20 * 10^18
    stor3[address(msg.sender)] = 1
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor3[address(msg.sender)]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsIn(uint256 arg1, address[] arg2) with:
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
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _16
    require _15 + (32 * _16) + 32 <= return_data.size
    idx = 0
    s = _15 + 128
    t = ceil32(return_data.size) + 128
    while idx < _16:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _16
    mem[mem[64]] = mem[ceil32(return_data.size) + 128]
    return memory
      from mem[64]
       len 32
}

function sub_e3878436(?) {
    mem[32] = 3
    require stor3[address(msg.sender)]
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
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args uint256(stor2.field_0), Array(len=stor1.length, data=mem[196 len 32 * stor1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _22 = mem[96 len 4], Mask(224, 0, stor2.field_32)
    require mem[96 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor2.field_32) + 127 < return_data.size + 96
    _23 = mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]
    require mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128 <= test266151307() and (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], Mask(224, 0, stor2.field_32) + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _23
    require _22 + (32 * _23) + 32 <= return_data.size
    idx = 0
    s = _22 + 128
    t = ceil32(return_data.size) + 128
    while idx < _23:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 0 < _23
    _38 = mem[ceil32(return_data.size) + 128]
    _39 = mem[64]
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
    mem[_39 + 68] = tx.origin
    mem[_39 + 100] = block.timestamp
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.mem[mem[64] len 4] with:
       value _38 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _39 + (32 * stor1.length) + -mem[64] + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _48 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _49 = mem[_48]
    require mem[_48] <= test266151307()
    require _48 + mem[_48] + 31 < _48 + return_data.size
    _50 = mem[_48 + mem[_48]]
    require mem[_48 + mem[_48]] <= test266151307()
    require _48 + ceil32(return_data.size) + (32 * mem[_48 + mem[_48]]) + 32 <= test266151307() and (32 * mem[_48 + mem[_48]]) + 32 >= 0
    mem[64] = _48 + ceil32(return_data.size) + (32 * mem[_48 + mem[_48]]) + 32
    mem[_48 + ceil32(return_data.size)] = _50
    require _49 + (32 * _50) + 32 <= return_data.size
    idx = 0
    s = _48 + _49 + 32
    t = _48 + ceil32(return_data.size) + 32
    while idx < _50:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
