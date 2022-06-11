contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
uint256 sub_c9005690;
address stor8;
address stor9;
address stor10;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_c9005690(?) payable {
    return sub_c9005690
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c9005690 = arg1
}

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
}

function setBank(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function sub_0520b708(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function removeController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor6[msg.sender]:
        revert with 0, 'Only controllers can mint'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor6[msg.sender]:
        revert with 0, 'Only controllers can burn'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_1089cc8b(?) payable {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'not enough funds'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require ext_code.size(stor8)
    call stor8.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0db7af53(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor9)
    staticcall stor9.tokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_b36fa619(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor9)
    staticcall stor9.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 0x986b21000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.getTokensOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _51 = mem[_50]
    require mem[_50] <= test266151307()
    require _50 + mem[_50] + 31 < _50 + return_data.size
    _52 = mem[_50 + mem[_50]]
    if mem[_50 + mem[_50]] > test266151307():
        revert with 0, 65
    if _50 + ceil32(return_data.size) + floor32(mem[_50 + mem[_50]]) + 1 > test266151307() or floor32(mem[_50 + mem[_50]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _50 + ceil32(return_data.size) + floor32(mem[_50 + mem[_50]]) + 1
    mem[_50 + ceil32(return_data.size)] = _52
    require return_data.size >= _51 + (32 * _52) + 32
    mem[_50 + ceil32(return_data.size) + 32 len 32 * _52] = mem[_50 + _51 + 32 len 32 * _52]
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _132 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_132] == bool(mem[_132])
        require mem[_132 + 32] == mem[_132 + 63 len 1]
        require mem[_132 + 64] == mem[_132 + 95 len 1]
        require mem[_132 + 96] == mem[_132 + 127 len 1]
        require mem[_132 + 128] == mem[_132 + 159 len 1]
        require mem[_132 + 160] == mem[_132 + 191 len 1]
        require mem[_132 + 192] == mem[_132 + 223 len 1]
        require mem[_132 + 224] == mem[_132 + 255 len 1]
        require mem[_132 + 256] == mem[_132 + 287 len 1]
        if mem[_132]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _152 = mem[_50 + ceil32(return_data.size)]
    idx = 0
    t = s
    while idx < _152:
        if idx >= mem[_50 + ceil32(return_data.size)]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + _50 + ceil32(return_data.size) + 32]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_159] == bool(mem[_159])
        require mem[_159 + 32] == mem[_159 + 63 len 1]
        require mem[_159 + 64] == mem[_159 + 95 len 1]
        require mem[_159 + 96] == mem[_159 + 127 len 1]
        require mem[_159 + 128] == mem[_159 + 159 len 1]
        require mem[_159 + 160] == mem[_159 + 191 len 1]
        require mem[_159 + 192] == mem[_159 + 223 len 1]
        require mem[_159 + 224] == mem[_159 + 255 len 1]
        require mem[_159 + 256] == mem[_159 + 287 len 1]
        if mem[_159]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if 1 > !t:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    return t
}

function sub_f358a49f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor9)
    staticcall stor9.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 0x986b21000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.getTokensOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _51 = mem[_50]
    require mem[_50] <= test266151307()
    require _50 + mem[_50] + 31 < _50 + return_data.size
    _52 = mem[_50 + mem[_50]]
    if mem[_50 + mem[_50]] > test266151307():
        revert with 0, 65
    if _50 + ceil32(return_data.size) + floor32(mem[_50 + mem[_50]]) + 1 > test266151307() or floor32(mem[_50 + mem[_50]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _50 + ceil32(return_data.size) + floor32(mem[_50 + mem[_50]]) + 1
    mem[_50 + ceil32(return_data.size)] = _52
    require return_data.size >= _51 + (32 * _52) + 32
    mem[_50 + ceil32(return_data.size) + 32 len 32 * _52] = mem[_50 + _51 + 32 len 32 * _52]
    idx = 0
    s = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_133] == bool(mem[_133])
        require mem[_133 + 32] == mem[_133 + 63 len 1]
        require mem[_133 + 64] == mem[_133 + 95 len 1]
        require mem[_133 + 96] == mem[_133 + 127 len 1]
        require mem[_133 + 128] == mem[_133 + 159 len 1]
        require mem[_133 + 160] == mem[_133 + 191 len 1]
        require mem[_133 + 192] == mem[_133 + 223 len 1]
        require mem[_133 + 224] == mem[_133 + 255 len 1]
        require mem[_133 + 256] == mem[_133 + 287 len 1]
        if not mem[_133]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _154 = mem[_50 + ceil32(return_data.size)]
    idx = 0
    t = s
    while idx < _154:
        if idx >= mem[_50 + ceil32(return_data.size)]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + _50 + ceil32(return_data.size) + 32]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_163] == bool(mem[_163])
        require mem[_163 + 32] == mem[_163 + 63 len 1]
        require mem[_163 + 64] == mem[_163 + 95 len 1]
        require mem[_163 + 96] == mem[_163 + 127 len 1]
        require mem[_163 + 128] == mem[_163 + 159 len 1]
        require mem[_163 + 160] == mem[_163 + 191 len 1]
        require mem[_163 + 192] == mem[_163 + 223 len 1]
        require mem[_163 + 224] == mem[_163 + 255 len 1]
        require mem[_163 + 256] == mem[_163 + 287 len 1]
        if not mem[_163]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if 1 > !t:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    if t:
        return t
    return 1
}

function sub_57d25b3c(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'not enough funds'
    mem[ceil32(return_data.size) + 132] = arg1
    require ext_code.size(stor8)
    call stor8.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(stor9)
    staticcall stor9.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _13
    require return_data.size >= _12 + (32 * _13) + 32
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _12 + 128 len 32 * _13]
    mem[mem[64]] = 0x986b21000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(stor10)
    staticcall stor10.getTokensOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _105 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _106 = mem[_105]
    require mem[_105] <= test266151307()
    require _105 + mem[_105] + 31 < _105 + return_data.size
    _107 = mem[_105 + mem[_105]]
    if mem[_105 + mem[_105]] > test266151307():
        revert with 0, 65
    if _105 + ceil32(return_data.size) + floor32(mem[_105 + mem[_105]]) + 1 > test266151307() or floor32(mem[_105 + mem[_105]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _105 + ceil32(return_data.size) + floor32(mem[_105 + mem[_105]]) + 1
    mem[_105 + ceil32(return_data.size)] = _107
    require return_data.size >= _106 + (32 * _107) + 32
    mem[_105 + ceil32(return_data.size) + 32 len 32 * _107] = mem[_105 + _106 + 32 len 32 * _107]
    idx = 0
    s = 0
    while idx < _13:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_281] == bool(mem[_281])
        require mem[_281 + 32] == mem[_281 + 63 len 1]
        require mem[_281 + 64] == mem[_281 + 95 len 1]
        require mem[_281 + 96] == mem[_281 + 127 len 1]
        require mem[_281 + 128] == mem[_281 + 159 len 1]
        require mem[_281 + 160] == mem[_281 + 191 len 1]
        require mem[_281 + 192] == mem[_281 + 223 len 1]
        require mem[_281 + 224] == mem[_281 + 255 len 1]
        require mem[_281 + 256] == mem[_281 + 287 len 1]
        if mem[_281]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _368 = mem[_105 + ceil32(return_data.size)]
    idx = 0
    t = s
    while idx < _368:
        if idx >= mem[_105 + ceil32(return_data.size)]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + _105 + ceil32(return_data.size) + 32]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _376 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_376] == bool(mem[_376])
        require mem[_376 + 32] == mem[_376 + 63 len 1]
        require mem[_376 + 64] == mem[_376 + 95 len 1]
        require mem[_376 + 96] == mem[_376 + 127 len 1]
        require mem[_376 + 128] == mem[_376 + 159 len 1]
        require mem[_376 + 160] == mem[_376 + 191 len 1]
        require mem[_376 + 192] == mem[_376 + 223 len 1]
        require mem[_376 + 224] == mem[_376 + 255 len 1]
        require mem[_376 + 256] == mem[_376 + 287 len 1]
        if mem[_376]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if 1 > !t:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[mem[64]] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(stor9)
    staticcall stor9.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _375 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _377 = mem[_375]
    require mem[_375] <= test266151307()
    require _375 + mem[_375] + 31 < _375 + return_data.size
    _379 = mem[_375 + mem[_375]]
    if mem[_375 + mem[_375]] > test266151307():
        revert with 0, 65
    if _375 + ceil32(return_data.size) + floor32(mem[_375 + mem[_375]]) + 1 > test266151307() or floor32(mem[_375 + mem[_375]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _375 + ceil32(return_data.size) + floor32(mem[_375 + mem[_375]]) + 1
    mem[_375 + ceil32(return_data.size)] = _379
    require return_data.size >= _377 + (32 * _379) + 32
    mem[_375 + ceil32(return_data.size) + 32 len 32 * _379] = mem[_375 + _377 + 32 len 32 * _379]
    mem[mem[64]] = 0x986b21000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(stor10)
    staticcall stor10.getTokensOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _455 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _456 = mem[_455]
    require mem[_455] <= test266151307()
    require _455 + mem[_455] + 31 < _455 + return_data.size
    _457 = mem[_455 + mem[_455]]
    if mem[_455 + mem[_455]] > test266151307():
        revert with 0, 65
    if _455 + ceil32(return_data.size) + floor32(mem[_455 + mem[_455]]) + 1 > test266151307() or floor32(mem[_455 + mem[_455]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _455 + ceil32(return_data.size) + floor32(mem[_455 + mem[_455]]) + 1
    mem[_455 + ceil32(return_data.size)] = _457
    require return_data.size >= _456 + (32 * _457) + 32
    mem[_455 + ceil32(return_data.size) + 32 len 32 * _457] = mem[_455 + _456 + 32 len 32 * _457]
    idx = 0
    s = 0
    while idx < _379:
        if idx >= mem[_375 + ceil32(return_data.size)]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + _375 + ceil32(return_data.size) + 32]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _581 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_581] == bool(mem[_581])
        require mem[_581 + 32] == mem[_581 + 63 len 1]
        require mem[_581 + 64] == mem[_581 + 95 len 1]
        require mem[_581 + 96] == mem[_581 + 127 len 1]
        require mem[_581 + 128] == mem[_581 + 159 len 1]
        require mem[_581 + 160] == mem[_581 + 191 len 1]
        require mem[_581 + 192] == mem[_581 + 223 len 1]
        require mem[_581 + 224] == mem[_581 + 255 len 1]
        require mem[_581 + 256] == mem[_581 + 287 len 1]
        if not mem[_581]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 1 > !s:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _651 = mem[_455 + ceil32(return_data.size)]
    idx = 0
    u = s
    while idx < _651:
        if idx >= mem[_455 + ceil32(return_data.size)]:
            revert with 0, 50
        require ext_code.size(stor9)
        staticcall stor9.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args mem[(32 * idx) + _455 + ceil32(return_data.size) + 32]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _658 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_658] == bool(mem[_658])
        require mem[_658 + 32] == mem[_658 + 63 len 1]
        require mem[_658 + 64] == mem[_658 + 95 len 1]
        require mem[_658 + 96] == mem[_658 + 127 len 1]
        require mem[_658 + 128] == mem[_658 + 159 len 1]
        require mem[_658 + 160] == mem[_658 + 191 len 1]
        require mem[_658 + 192] == mem[_658 + 223 len 1]
        require mem[_658 + 224] == mem[_658 + 255 len 1]
        require mem[_658 + 256] == mem[_658 + 287 len 1]
        if not mem[_658]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            u = u
            continue 
        if 1 > !u:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        u = u + 1
        continue 
    if u:
        if not t:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg1:
                revert with 0, 17
            totalSupply += arg1
            if balanceOf[address(msg.sender)] > !arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not u / t:
                revert with 0, 18
            if sub_c9005690 / u / t > 50:
                if arg1 and 50 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if 50 * arg1 / 100 <= arg1:
                    if totalSupply > !(50 * arg1 / 100):
                        revert with 0, 17
                    totalSupply += 50 * arg1 / 100
                    if balanceOf[address(msg.sender)] > !(50 * arg1 / 100):
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += 50 * arg1 / 100
                    emit Transfer((50 * arg1 / 100), 0, msg.sender);
                else:
                    if totalSupply > !arg1:
                        revert with 0, 17
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] > !arg1:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, 0, msg.sender);
            else:
                if 100 < sub_c9005690 / u / t:
                    revert with 0, 17
                if arg1 and -(sub_c9005690 / u / t) + 100 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (100 * arg1) - (sub_c9005690 / u / t * arg1) / 100 <= arg1:
                    if totalSupply > !((100 * arg1) - (sub_c9005690 / u / t * arg1) / 100):
                        revert with 0, 17
                    totalSupply += (100 * arg1) - (sub_c9005690 / u / t * arg1) / 100
                    if balanceOf[address(msg.sender)] > !((100 * arg1) - (sub_c9005690 / u / t * arg1) / 100):
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += (100 * arg1) - (sub_c9005690 / u / t * arg1) / 100
                    emit Transfer(((100 * arg1) - (sub_c9005690 / u / t * arg1) / 100), 0, msg.sender);
                else:
                    if totalSupply > !arg1:
                        revert with 0, 17
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] > !arg1:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, 0, msg.sender);
    else:
        if not t:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !arg1:
                revert with 0, 17
            totalSupply += arg1
            if balanceOf[address(msg.sender)] > !arg1:
                revert with 0, 17
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not 1 / t:
                revert with 0, 18
            if sub_c9005690 / 1 / t > 50:
                if arg1 and 50 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if 50 * arg1 / 100 <= arg1:
                    if totalSupply > !(50 * arg1 / 100):
                        revert with 0, 17
                    totalSupply += 50 * arg1 / 100
                    if balanceOf[address(msg.sender)] > !(50 * arg1 / 100):
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += 50 * arg1 / 100
                    emit Transfer((50 * arg1 / 100), 0, msg.sender);
                else:
                    if totalSupply > !arg1:
                        revert with 0, 17
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] > !arg1:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, 0, msg.sender);
            else:
                if 100 < sub_c9005690 / 1 / t:
                    revert with 0, 17
                if arg1 and -(sub_c9005690 / 1 / t) + 100 > -1 / arg1:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (100 * arg1) - (sub_c9005690 / 1 / t * arg1) / 100 <= arg1:
                    if totalSupply > !((100 * arg1) - (sub_c9005690 / 1 / t * arg1) / 100):
                        revert with 0, 17
                    totalSupply += (100 * arg1) - (sub_c9005690 / 1 / t * arg1) / 100
                    if balanceOf[address(msg.sender)] > !((100 * arg1) - (sub_c9005690 / 1 / t * arg1) / 100):
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += (100 * arg1) - (sub_c9005690 / 1 / t * arg1) / 100
                    emit Transfer(((100 * arg1) - (sub_c9005690 / 1 / t * arg1) / 100), 0, msg.sender);
                else:
                    if totalSupply > !arg1:
                        revert with 0, 17
                    totalSupply += arg1
                    if balanceOf[address(msg.sender)] > !arg1:
                        revert with 0, 17
                    balanceOf[address(msg.sender)] += arg1
                    emit Transfer(arg1, 0, msg.sender);
}



}
