contract main {




// =====================  Runtime code  =====================


#
#  - sweep(address arg1, uint256 arg2)
#  - init()
#
address stor0;
uint256 stor1; offset 32
uint256 stor1;
array of address stor2;

function _fallback() payable {
    revert
}

function prepare(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == 0x3ddcc1d852f8334064a8c02c75d2b293c12b0de
    if 0 >= stor2.length:
        revert with 'NH{q', 50
    address(stor2.field_0) = arg1
    if 1 >= stor2.length:
        revert with 'NH{q', 50
    address(stor2.field_256) = arg2
    uint256(stor1.field_0) = arg3
}

function go() payable {
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor1.field_0)
    mem[132] = 1
    mem[164] = 160
    mem[260] = stor2.length
    mem[0] = 2
    idx = 0
    s = 0
    t = 292
    while idx < stor2.length:
        mem[t] = stor2[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[196] = 0xe83d7d53283689a7f3b190be5a25f563a20b5fe
    mem[228] = block.timestamp
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args uint256(stor1.field_0), 1, Array(len=stor2.length, data=mem[292 len 32 * stor2.length]), 0xe83d7d53283689a7f3b190be5a25f563a20b5fe, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _11 = mem[96 len 4], Mask(224, 0, stor1.field_32)
    require mem[96 len 4], Mask(224, 0, stor1.field_32) <= test266151307()
    require mem[96 len 4], Mask(224, 0, stor1.field_32) + 127 < return_data.size + 96
    _12 = mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 0, stor1.field_32) + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _12
    require _11 + (32 * _12) + 32 <= return_data.size
    idx = 0
    s = _11 + 128
    t = ceil32(return_data.size) + 128
    while idx < _12:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
