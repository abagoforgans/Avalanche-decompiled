contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
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
        args msg.sender, stor1
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
    stor1 = arg1
    stor2 = arg2
    Mask(96, 0, stor0.field_160) = 1
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), stor1
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
        args stor1, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2:
        revert with 0, 'Limit not reached'
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = stor1
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < ext_call.return_data[0]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0], Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 292 len 32 * ext_call.return_data[0]]), owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor0.field_160) = 0
    stor1 = 0
    stor2 = 0
}



}
