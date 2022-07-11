contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 stor6;
address sub_f8d98c82Address;
address sub_c22737fdAddress;
address sub_12c12248Address;
uint256 sub_273ddf35;
uint256 sub_f5943c96;
uint256 sub_552a2e08;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 sub_558eb43b;
mapping of uint256 sub_35c90890;

function sub_12c12248(?) payable {
    return sub_12c12248Address
}

function totalSupply() payable {
    return totalSupply
}

function sub_273ddf35(?) payable {
    return sub_273ddf35
}

function sub_35c90890(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_35c90890[address(arg1)]
}

function sub_552a2e08(?) payable {
    return sub_552a2e08
}

function sub_558eb43b(?) payable {
    require calldata.size - 4 >= 32
    return sub_558eb43b[arg1]
}

function sub_6c0305b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7e6d87d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function owner() payable {
    return owner
}

function sub_c22737fd(?) payable {
    return sub_c22737fdAddress
}

function sub_d95fdf8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_35c90890[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_f5943c96(?) payable {
    return sub_f5943c96
}

function sub_f8d98c82(?) payable {
    return sub_f8d98c82Address
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

function updateRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_273ddf35 = arg1
}

function sub_61af9abe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 1
}

function updateTime(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f5943c96 = arg1
    sub_552a2e08 = arg2
}

function sub_0e8fc228(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_12c12248Address = address(arg1)
}

function sub_c689c62f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f8d98c82Address = address(arg1)
}

function sub_f1a7916f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c22737fdAddress = address(arg1)
}

function sub_8c0c1007(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_12c12248Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only King Pyro can call this function!'
    if sub_35c90890[address(arg1)] > -2:
        revert with 0, 17
    sub_35c90890[address(arg1)]++
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

function sub_8e95fb49(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor13[msg.sender]:
        revert with 0, 'You aren't allowed to mint.'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
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

function sub_bec12c85(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(10^18 * arg2):
        revert with 0, 17
    totalSupply += 10^18 * arg2
    if balanceOf[address(arg1)] > !(10^18 * arg2):
        revert with 0, 17
    balanceOf[address(arg1)] += 10^18 * arg2
    emit Transfer((10^18 * arg2), 0, address(arg1));
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor13[msg.sender]:
        revert with 0, 'Only cheesy addresses can burn!'
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
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
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
    return 1
}

function startFarming() payable {
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_f8d98c82Address)
    staticcall sub_f8d98c82Address.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    if not _5:
        revert with 0, 'You don't have any cows!'
    stor14[msg.sender] = 1
    if _5 <= 1:
        idx = 0
        while idx < _5:
            if idx >= _5:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 15
            sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        emit 0x74037c23: msg.sender, _5
    else:
        idx = 0
        while idx < 2:
            if idx >= _5:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 15
            sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        emit 0x74037c23: msg.sender, 2
}

function sub_63eb192c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Mismatching array lengths!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _54 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 0, 50
        _56 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if mem[(32 * idx) + floor32(('cd', 4).length) + 129] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !(10^18 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
            revert with 0, 17
        totalSupply += 10^18 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        if balanceOf[mem[(32 * idx) + 140 len 20]] > !(10^18 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]):
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 140 len 20]] += 10^18 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = 10^18 * mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        emit Transfer((10^18 * _56), 0, address(_54));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_40871f75(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    mem[0] = msg.sender
    if not stor14[address(msg.sender)]:
        revert with 0, 'You aren't farming!'
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_f8d98c82Address)
    staticcall sub_f8d98c82Address.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _9 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _10 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require return_data.size >= _9 + (32 * _10) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _10] = mem[_9 + 128 len 32 * _10]
    if not _10:
        revert with 0, 'You don't have any cows!'
    if _10 <= 1:
        idx = 0
        while idx < _10:
            if idx >= _10:
                revert with 0, 50
            if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_f5943c96:
                revert with 0, 17
            if idx >= _10:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 15
            if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_552a2e08:
                revert with 0, 17
            if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_f5943c96:
            else:
                if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_552a2e08:
                    if 0 > !sub_273ddf35:
                        revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 2:
            if idx >= _10:
                revert with 0, 50
            if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_f5943c96:
                revert with 0, 17
            if idx >= _10:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 15
            if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_552a2e08:
                revert with 0, 17
            if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_f5943c96:
            else:
                if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_552a2e08:
                    if 0 > !sub_273ddf35:
                        revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    revert with 0, 'Nothing to claim!'
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

function sub_605fba67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 14
    if not stor14[address(arg1)]:
        revert with 0, 'You aren't farming!'
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(sub_f8d98c82Address)
    staticcall sub_f8d98c82Address.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + 127
    _8 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _8
    require return_data.size >= _7 + (32 * _8) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _8] = mem[_7 + 128 len 32 * _8]
    if not _8:
        revert with 0, 'You don't have any cows!'
    if _8 <= 1:
        idx = 0
        while idx < _8:
            if idx >= _8:
                revert with 0, 50
            if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_f5943c96:
                revert with 0, 17
            if idx >= _8:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[32] = 15
            if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_552a2e08:
                revert with 0, 17
            if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_f5943c96:
            else:
                if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_552a2e08:
                    if 0 > !sub_273ddf35:
                        revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _68 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = _8
        mem[mem[64] + 128 len 32 * _8] = mem[ceil32(return_data.size) + 128 len 32 * _8]
        mem[mem[64] + 64] = _8
        return memory
          from mem[64]
           len _68 + (32 * _8) + -mem[64] + 128
    idx = 0
    while idx < 2:
        if idx >= _8:
            revert with 0, 50
        if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_f5943c96:
            revert with 0, 17
        if idx >= _8:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[32] = 15
        if sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] > !sub_552a2e08:
            revert with 0, 17
        if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_f5943c96:
        else:
            if block.timestamp <= sub_558eb43b[mem[(32 * idx) + ceil32(return_data.size) + 128]] + sub_552a2e08:
                if 0 > !sub_273ddf35:
                    revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _69 = mem[64]
    mem[mem[64]] = 0
    mem[mem[64] + 32] = 96
    mem[mem[64] + 96] = _8
    mem[mem[64] + 128 len 32 * _8] = mem[ceil32(return_data.size) + 128 len 32 * _8]
    mem[mem[64] + 64] = 2
    return memory
      from mem[64]
       len _69 + (32 * _8) + -mem[64] + 128
}



}
