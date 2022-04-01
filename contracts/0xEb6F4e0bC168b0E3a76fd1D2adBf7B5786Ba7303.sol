contract main {




// =====================  Runtime code  =====================


#
#  - elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_2e72ed77(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;

function sub_41dcbd24(?) payable {
    require stor0 == msg.sender
    selfdestruct(0xd697e41cb97bb437457e1e5b37d398074214a9e0)
}

function _fallback() payable {
    revert
}

function approveTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _18 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_671646fd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if address(arg2) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(arg2) < address(arg3):
        if not address(arg2):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg2):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if not address(arg3):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(address(arg1))
        staticcall address(arg1).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if address(arg2) == address(arg3):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_95b3fdab(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 99 < calldata.size
    if not bool(floor32(('cd', 36).length) + 193 <= test266151307()):
        revert with 'NH{q', 65
    require 164 <= calldata.size
    idx = 0
    s = 68
    t = floor32(('cd', 36).length) + 97
    while idx < 3:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 195 < calldata.size
    if not bool(floor32(('cd', 36).length) + 289 <= test266151307()):
        revert with 'NH{q', 65
    require 260 <= calldata.size
    idx = 0
    s = 164
    t = floor32(('cd', 36).length) + 193
    while idx < 3:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] < 2:
        revert with 0, 'UniswapV2Library: INVALID_PATH'
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 289] = mem[96]
    if not mem[96]:
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + 321] = cd[4]
        if var242003 < 1:
            revert with 'NH{q', 17
        if var246002 >= var246001:
            mem[floor32(('cd', 36).length) + (32 * mem[96]) + 321] = 32
            mem[floor32(('cd', 36).length) + (32 * mem[96]) + 353] = mem[96]
            mem[floor32(('cd', 36).length) + (32 * mem[96]) + 385 len 32 * mem[96]] = mem[floor32(('cd', 36).length) + 321 len 32 * mem[96]]
            return 32, mem[floor32(('cd', 36).length) + (32 * mem[96]) + 353 len (32 * mem[96]) + 32]
        if var248001 >= 3:
            revert with 'NH{q', 50
        if var250006 >= mem[96]:
            revert with 'NH{q', 50
        if var262003 > -2:
            revert with 'NH{q', 17
        # nil
    else:
        mem[floor32(('cd', 36).length) + 321 len 32 * mem[96]] = call.data[calldata.size len 32 * mem[96]]
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 36).length) + 321] = cd[4]
        if var243003 < 1:
            revert with 'NH{q', 17
        if var247002 >= var247001:
            mem[floor32(('cd', 36).length) + (32 * mem[96]) + 321] = 32
            mem[floor32(('cd', 36).length) + (32 * mem[96]) + 353] = mem[96]
            mem[floor32(('cd', 36).length) + (32 * mem[96]) + 385 len 32 * mem[96]] = mem[floor32(('cd', 36).length) + 321 len 32 * mem[96]]
            return 32, mem[floor32(('cd', 36).length) + (32 * mem[96]) + 353 len (32 * mem[96]) + 32]
        if var249001 >= 3:
            revert with 'NH{q', 50
        if var251006 >= mem[96]:
            revert with 'NH{q', 50
        if var263003 > -2:
            revert with 'NH{q', 17
        # nil
}



}
