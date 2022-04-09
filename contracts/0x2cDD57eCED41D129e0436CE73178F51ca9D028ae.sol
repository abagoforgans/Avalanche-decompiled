contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;

function fallback() payable {
  stop
}

function deposite() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_95128bb2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'only seter'
    stor3[address(arg1)] = 0
}

function sub_2860b17d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0, 'only seter'
    stor3[address(arg1)] = uint8(bool(arg2))
}

function sub_c4f7b740(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0, 'only seter'
    stor2[address(arg1)] = uint8(bool(arg2))
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function sub_ef26dc91(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'withdraw erc20 failed'
}

function sub_b83511a1(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if stor1 != msg.sender:
        revert with 0, 'only seter'
    if not stor2[address(arg2)]:
        revert with 0, 'the coin is not allowed'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve is failed'
}

function sub_253a4b03(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] == cd[132]
    require cd[164] == address(cd[164])
    require cd[196] == cd[196]
    require cd[228] == cd[228]
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    require ('cd', 260).length <= test266151307()
    require cd[260] + (32 * ('cd', 260).length) + 36 <= calldata.size
    if not stor3[address(msg.sender)]:
        revert with 0, 'this account not allowed'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if not stor2[address(('cd', 100)[0])]:
        revert with 0, 'this coin not allowed'
    if 0 >= ('cd', 260).length:
        revert with 'NH{q', 50
    require ('cd', 260)[0] == address(('cd', 260)[0])
    mem[0] = address(('cd', 260)[0])
    mem[32] = 2
    if not stor2[address(('cd', 260)[0])]:
        revert with 0, 'this coin not allowed'
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = cd[36]
    mem[132] = cd[68]
    mem[164] = 160
    mem[260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[196] = this.address
    mem[228] = cd[132]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[292 len 32 * ('cd', 100).length]), address(this.address), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _27 = mem[96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
    _28 = mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _28
    require _27 + (32 * _28) + 32 <= return_data.size
    idx = 0
    s = _27 + 128
    t = ceil32(return_data.size) + 128
    while idx < _28:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _28:
        revert with 'NH{q', 50
    _45 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[196]
    mem[mem[64] + 36] = cd[228]
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = ('cd', 260).length
    idx = 0
    s = cd[260] + 36
    t = mem[64] + 196
    while idx < ('cd', 260).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_45 + 100] = this.address
    mem[_45 + 132] = cd[132]
    require ext_code.size(address(cd[164]))
    call address(cd[164]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _45 + (32 * ('cd', 260).length) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    require mem[_55] <= test266151307()
    require _55 + mem[_55] + 31 < _55 + return_data.size
    _57 = mem[_55 + mem[_55]]
    if mem[_55 + mem[_55]] > test266151307():
        revert with 'NH{q', 65
    if _55 + ceil32(return_data.size) + floor32(mem[_55 + mem[_55]]) + 1 > test266151307() or floor32(mem[_55 + mem[_55]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _55 + ceil32(return_data.size) + floor32(mem[_55 + mem[_55]]) + 1
    mem[_55 + ceil32(return_data.size)] = _57
    require _56 + (32 * _57) + 32 <= return_data.size
    idx = 0
    s = _55 + _56 + 32
    t = _55 + ceil32(return_data.size) + 32
    while idx < _57:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= _57:
        revert with 'NH{q', 50
}



}
