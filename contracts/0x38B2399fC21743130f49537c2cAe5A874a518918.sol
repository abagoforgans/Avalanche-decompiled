contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1; offset 32
uint256 stor1;
uint256 stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function cancelOrder() payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(stor1.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor0.field_160) = 0
}

function sub_f506492a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    require not uint8(stor0.field_160)
    uint256(stor1.field_0) = arg1
    stor2 = arg2
    Mask(96, 0, stor0.field_160) = 1
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint256(stor1.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function execute() payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    if 1 >= mem[96]:
        revert with 'NH{q', 50
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor1.field_0)
    mem[132] = 64
    mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    idx = 0
    s = 128
    t = 196
    while idx < 0xd06ca61f00000000000000000000000000000000000000000000000000000000:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args uint256(stor1.field_0), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _34 = mem[96 len 4], Mask(224, 0, stor1.field_32)
    require mem[96 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor1.field_32) + 127 < return_data.size + 96
    _35 = mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _35
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = 0
    s = _34 + 128
    t = ceil32(return_data.size) + 128
    while idx < _35:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _35 < 1:
        revert with 'NH{q', 17
    if _35 - 1 >= _35:
        revert with 'NH{q', 50
    if mem[(32 * _35 - 1) + ceil32(return_data.size) + 128] < stor2:
        revert with 0, 'Limit not reached'
    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506
    mem[mem[64] + 36] = uint256(stor1.field_0)
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, uint256(stor1.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if _35 < 1:
        revert with 'NH{q', 17
    if _35 - 1 >= _35:
        revert with 'NH{q', 50
    _67 = mem[(32 * _35 - 1) + ceil32(return_data.size) + 128]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = uint256(stor1.field_0)
    mem[mem[64] + 36] = _67
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = owner
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor1.field_0), _67, 160, owner, block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _79 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _80 = mem[_79]
    require mem[_79] <= test266151307()
    require _79 + mem[_79] + 31 < _79 + return_data.size
    _81 = mem[_79 + mem[_79]]
    if mem[_79 + mem[_79]] > test266151307():
        revert with 'NH{q', 65
    if _79 + ceil32(return_data.size) + floor32(mem[_79 + mem[_79]]) + 1 > test266151307() or floor32(mem[_79 + mem[_79]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _79 + ceil32(return_data.size) + floor32(mem[_79 + mem[_79]]) + 1
    mem[_79 + ceil32(return_data.size)] = _81
    require _80 + (32 * _81) + 32 <= return_data.size
    idx = 0
    s = _79 + _80 + 32
    t = _79 + ceil32(return_data.size) + 32
    while idx < _81:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    Mask(96, 0, stor0.field_160) = 0
    uint256(stor1.field_0) = 0
    stor2 = 0
}



}
