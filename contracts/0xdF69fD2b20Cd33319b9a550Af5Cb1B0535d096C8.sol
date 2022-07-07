contract main {




// =====================  Runtime code  =====================


address owner;
array of uint8 stor1;
uint256 totalCount;
array of struct stor3;
mapping of uint256 sub_05b707ff;
uint256 sub_f90f0eaa;
uint256 sub_94471c42;

function sub_05b707ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_05b707ff[arg1]
}

function sub_0b433a12(?) payable {
    return sub_94471c42
}

function totalCount() payable {
    return totalCount
}

function sub_53f1959b(?) payable {
    return sub_f90f0eaa
}

function getTotalCount() payable {
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    return totalCount
}

function sub_8b730855(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    return sub_05b707ff[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_94471c42(?) payable {
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    return sub_94471c42
}

function sub_f90f0eaa(?) payable {
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    return sub_f90f0eaa
}

function managers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor1[arg1]))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c76c77a1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f90f0eaa = arg1
}

function setClaimInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_94471c42 = arg1
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor1[address(arg1)]) = 1
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor1[address(arg1)]) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_5ad31723(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if arg2 > sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: CALCULATE INDEX ERROR'
    if not sub_05b707ff[address(arg1)]:
        return 0
    if arg2 >= stor3[address(arg1)].field_0:
        revert with 0, 50
    if block.timestamp < stor3[address(arg1)][arg2].field_256:
        revert with 0, 17
    if not sub_94471c42:
        revert with 0, 'SafeMath: division by zero', 0
    if not block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42:
        if stor3[address(arg1)][arg2].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < stor3[address(arg1)][arg2].field_768:
            revert with 0, 17
        return -stor3[address(arg1)][arg2].field_768
    if block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 and stor3[address(arg1)][arg2].field_1024 > -1 / block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42:
        revert with 0, 17
    if not block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42:
        revert with 0, 18
    if block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024 / block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 != stor3[address(arg1)][arg2].field_1024:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor3[address(arg1)][arg2].field_768 > block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024 < stor3[address(arg1)][arg2].field_768:
        revert with 0, 17
    return ((block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024) - stor3[address(arg1)][arg2].field_768)
}

function sub_90219732(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if sub_05b707ff[address(arg1)] >= sub_f90f0eaa:
        revert with 0, 'MANAGEMENT: CREATE NODE LIMIT ERROR'
    stor3[address(arg1)].field_0++
    if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor3[address(arg1)][(5 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][(5 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_256 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_512 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_768 = 0
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_1024 = arg3
    if sub_05b707ff[address(arg1)] > -2:
        revert with 0, 17
    sub_05b707ff[address(arg1)]++
    if totalCount > -2:
        revert with 0, 17
    totalCount++
    emit 0xe21cc9a8: address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, block.timestamp
}

function sub_4f306a83(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if sub_05b707ff[address(arg1)] >= sub_f90f0eaa:
        revert with 0, 'MANAGEMENT: AIREDROP NODE LIMIT ERROR'
    stor3[address(arg1)].field_0++
    if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor3[address(arg1)][stor3[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor3[address(arg1)][(5 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 == stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor3[address(arg1)][stor3[address(arg1)].field_0][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor3[address(arg1)][stor3[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor3[address(arg1)][stor3[address(arg1)].field_0].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][(5 * stor3[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_256 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_512 = block.timestamp
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_768 = 0
    stor3[address(arg1)][stor3[address(arg1)].field_0].field_1024 = arg3
    if sub_05b707ff[address(arg1)] > -2:
        revert with 0, 17
    sub_05b707ff[address(arg1)]++
    if totalCount > -2:
        revert with 0, 17
    totalCount++
    emit 0xca0c1660: address(arg1), Array(len=arg2.length, data=arg2[all]), arg3, block.timestamp
}

function sub_cd160c9f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: CASHOUT NO NODE OWNER'
    if arg2 > sub_05b707ff[address(arg1)]:
        revert with 0, 'MANAGEMENT: CASHOUT INDEX ERROR'
    if not sub_05b707ff[address(arg1)]:
        return 0
    if arg2 >= stor3[address(arg1)].field_0:
        revert with 0, 50
    if block.timestamp < stor3[address(arg1)][arg2].field_256:
        revert with 0, 17
    if not sub_94471c42:
        revert with 0, 'SafeMath: division by zero', 0
    if not block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42:
        if stor3[address(arg1)][arg2].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < stor3[address(arg1)][arg2].field_768:
            revert with 0, 17
        if 0 > !-stor3[address(arg1)][arg2].field_768:
            revert with 0, 17
        stor3[address(arg1)][arg2].field_512 = block.timestamp
        if stor3[address(arg1)][arg2].field_768 > !-stor3[address(arg1)][arg2].field_768:
            revert with 0, 17
        stor3[address(arg1)][arg2].field_768 = 0
        return -stor3[address(arg1)][arg2].field_768
    if block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 and stor3[address(arg1)][arg2].field_1024 > -1 / block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42:
        revert with 0, 17
    if not block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42:
        revert with 0, 18
    if block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024 / block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 != stor3[address(arg1)][arg2].field_1024:
        revert with 0, 'SafeMath: multiplication overflow'
    if stor3[address(arg1)][arg2].field_768 > block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024 < stor3[address(arg1)][arg2].field_768:
        revert with 0, 17
    if 0 > !((block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024) - stor3[address(arg1)][arg2].field_768):
        revert with 0, 17
    stor3[address(arg1)][arg2].field_512 = block.timestamp
    if stor3[address(arg1)][arg2].field_768 > !((block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024) - stor3[address(arg1)][arg2].field_768):
        revert with 0, 17
    stor3[address(arg1)][arg2].field_768 = block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024
    return ((block.timestamp - stor3[address(arg1)][arg2].field_256 / sub_94471c42 * stor3[address(arg1)][arg2].field_1024) - stor3[address(arg1)][arg2].field_768)
}

function sub_2655c1b9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < stor3[arg1].field_0
    if stor3[arg1][arg2].field_0:
        if stor3[arg1][arg2].field_0 == uint255(stor3[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_0:
            if stor3[arg1][arg2].field_0 == uint255(stor3[arg1][arg2].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[arg1][arg2].field_0):
                if 31 >= uint255(stor3[arg1][arg2].field_0) * 0.5:
                    mem[128] = 256 * stor3[arg1][arg2].field_8
                else:
                    mem[128] = stor3[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[arg1][arg2].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[arg1][(5 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1][arg2].field_0 == stor3[arg1][arg2].field_1 < 32:
                revert with 0, 34
            if stor3[arg1][arg2].field_1:
                if 31 >= stor3[arg1][arg2].field_1:
                    mem[128] = 256 * stor3[arg1][arg2].field_8
                else:
                    mem[128] = stor3[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[arg1][(5 * arg2) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor3[arg1][arg2].field_0), data=mem[128 len ceil32(uint255(stor3[arg1][arg2].field_0) * 0.5)]), 
               stor3[arg1][arg2].field_256,
               stor3[arg1][arg2].field_512,
               stor3[arg1][arg2].field_768,
               stor3[arg1][arg2].field_1024
    if stor3[arg1][arg2].field_0 == stor3[arg1][arg2].field_1 < 32:
        revert with 0, 34
    if stor3[arg1][arg2].field_0:
        if stor3[arg1][arg2].field_0 == uint255(stor3[arg1][arg2].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[arg1][arg2].field_0):
            if 31 >= uint255(stor3[arg1][arg2].field_0) * 0.5:
                mem[128] = 256 * stor3[arg1][arg2].field_8
            else:
                mem[128] = stor3[arg1][arg2].field_0
                idx = 128
                s = 0
                while (uint255(stor3[arg1][arg2].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[arg1][(5 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1][arg2].field_0 == stor3[arg1][arg2].field_1 < 32:
            revert with 0, 34
        if stor3[arg1][arg2].field_1:
            if 31 >= stor3[arg1][arg2].field_1:
                mem[128] = 256 * stor3[arg1][arg2].field_8
            else:
                mem[128] = stor3[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor3[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[arg1][(5 * arg2) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor3[arg1][arg2].field_0, data=mem[128 len ceil32(stor3[arg1][arg2].field_1)]), 
           stor3[arg1][arg2].field_256,
           stor3[arg1][arg2].field_512,
           stor3[arg1][arg2].field_768,
           stor3[arg1][arg2].field_1024
}

function sub_49f81644(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    mem[0] = address(arg1)
    mem[32] = 4
    idx = 0
    s = 0
    while idx < sub_05b707ff[address(arg1)]:
        if idx > sub_05b707ff[address(arg1)]:
            revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
        mem[32] = 4
        if not sub_05b707ff[address(arg1)]:
            if s > -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = s
            continue 
        if idx >= stor3[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 3)
        if block.timestamp < stor3[address(arg1)][idx].field_256:
            revert with 0, 17
        _42 = mem[64]
        mem[64] = mem[64] + 64
        mem[_42] = 26
        mem[_42 + 32] = 'SafeMath: division by zero'
        if not sub_94471c42:
            _43 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _43 + 68] = mem[idx + _42 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_43 + 94] = 0
            revert with memory
              from mem[64]
               len _43 + -mem[64] + 100
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            _47 = mem[64]
            mem[64] = mem[64] + 64
            mem[_47] = 30
            mem[_47 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 <= 0:
                if 0 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !-stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 1
                s = s - stor3[address(arg1)][idx].field_768
                continue 
            _49 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _49 + 68] = mem[idx + _47 + 32]
                mem[0] = address(arg1)
                mem[32] = 4
                idx = idx + 32
                continue 
            mem[_49 + 98] = 0
            revert with memory
              from mem[64]
               len _49 + -mem[64] + 100
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 17
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 18
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = 30
        mem[_53 + 32] = 'SafeMath: subtraction overflow'
        if stor3[address(arg1)][idx].field_768 <= block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !((block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 4
            idx = idx + 1
            s = s + (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            continue 
        _55 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        s = 0
        while s < 30:
            mem[s + _55 + 68] = mem[s + _53 + 32]
            mem[0] = address(arg1)
            mem[32] = 4
            s = s + 32
            continue 
        mem[_55 + 98] = 0
        revert with memory
          from mem[64]
           len _55 + -mem[64] + 100
    return s
}

function sub_499e862a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: CASHOUT ALLL NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 3
    idx = 0
    s = 0
    t = 0
    t = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if block.timestamp < stor3[address(arg1)][idx].field_256:
            revert with 0, 17
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 26
        mem[_34 + 32] = 'SafeMath: division by zero'
        if not sub_94471c42:
            _35 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _35 + 68] = mem[idx + _34 + 32]
                idx = idx + 32
                continue 
            mem[_35 + 94] = 0
            revert with memory
              from mem[64]
               len _35 + -mem[64] + 100
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            _39 = mem[64]
            mem[64] = mem[64] + 64
            mem[_39] = 30
            mem[_39 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 <= 0:
                if 0 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if s > !-stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                stor3[address(arg1)][idx].field_512 = block.timestamp
                if stor3[address(arg1)][idx].field_768 > !-stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                stor3[address(arg1)][idx].field_768 = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor3[address(arg1)][idx].field_768
                t = -stor3[address(arg1)][idx].field_768
                t = (5 * idx) + sha3(sha3(address(arg1), 3))
                continue 
            _41 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _41 + 68] = mem[idx + _39 + 32]
                idx = idx + 32
                continue 
            mem[_41 + 98] = 0
            revert with memory
              from mem[64]
               len _41 + -mem[64] + 100
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 17
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 18
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = 30
        mem[_45 + 32] = 'SafeMath: subtraction overflow'
        if stor3[address(arg1)][idx].field_768 <= block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !((block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768):
                revert with 0, 17
            stor3[address(arg1)][idx].field_512 = block.timestamp
            if stor3[address(arg1)][idx].field_768 > !((block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768):
                revert with 0, 17
            stor3[address(arg1)][idx].field_768 = block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            t = (5 * idx) + sha3(sha3(address(arg1), 3))
            continue 
        _47 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _47 + 68] = mem[idx + _45 + 32]
            idx = idx + 32
            continue 
        mem[_47 + 98] = 0
        revert with memory
          from mem[64]
           len _47 + -mem[64] + 100
    return s
}

function sub_66a36975(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: COMPOUND NO NODE OWNER'
    mem[0] = address(arg1)
    mem[32] = 3
    idx = 0
    s = 0
    t = 0
    t = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        if block.timestamp < stor3[address(arg1)][idx].field_256:
            revert with 0, 17
        _34 = mem[64]
        mem[64] = mem[64] + 64
        mem[_34] = 26
        mem[_34 + 32] = 'SafeMath: division by zero'
        if not sub_94471c42:
            _35 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _35 + 68] = mem[idx + _34 + 32]
                idx = idx + 32
                continue 
            mem[_35 + 94] = 0
            revert with memory
              from mem[64]
               len _35 + -mem[64] + 100
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            _39 = mem[64]
            mem[64] = mem[64] + 64
            mem[_39] = 30
            mem[_39 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 > 0:
                _41 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _41 + 68] = mem[idx + _39 + 32]
                    idx = idx + 32
                    continue 
                mem[_41 + 98] = 0
                revert with memory
                  from mem[64]
                   len _41 + -mem[64] + 100
            if 0 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if s > !-stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            stor3[address(arg1)][idx].field_512 = block.timestamp
            if s - stor3[address(arg1)][idx].field_768 < arg2:
                if stor3[address(arg1)][idx].field_768 > !-stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                stor3[address(arg1)][idx].field_768 = 0
                if s > !-stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor3[address(arg1)][idx].field_768
                t = -stor3[address(arg1)][idx].field_768
                t = (5 * idx) + sha3(sha3(address(arg1), 3))
                continue 
            if stor3[address(arg1)][idx].field_768 > !arg2:
                revert with 0, 17
            if stor3[address(arg1)][idx].field_768 + arg2 < s:
                revert with 0, 17
            stor3[address(arg1)][idx].field_768 = stor3[address(arg1)][idx].field_768 + arg2 - s
            if arg2 < s:
                revert with 0, 17
            if s > !(arg2 - s):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = arg2
            t = -stor3[address(arg1)][idx].field_768
            t = (5 * idx) + sha3(sha3(address(arg1), 3))
            continue 
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 17
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 18
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = 30
        mem[_45 + 32] = 'SafeMath: subtraction overflow'
        if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
            _47 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _47 + 68] = mem[idx + _45 + 32]
                idx = idx + 32
                continue 
            mem[_47 + 98] = 0
            revert with memory
              from mem[64]
               len _47 + -mem[64] + 100
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
            revert with 0, 17
        if s > !((block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768):
            revert with 0, 17
        stor3[address(arg1)][idx].field_512 = block.timestamp
        if s + (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768 < arg2:
            if stor3[address(arg1)][idx].field_768 > !((block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768):
                revert with 0, 17
            stor3[address(arg1)][idx].field_768 = block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024
            if s > !((block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            t = (5 * idx) + sha3(sha3(address(arg1), 3))
            continue 
        if stor3[address(arg1)][idx].field_768 > !arg2:
            revert with 0, 17
        if stor3[address(arg1)][idx].field_768 + arg2 < s:
            revert with 0, 17
        stor3[address(arg1)][idx].field_768 = stor3[address(arg1)][idx].field_768 + arg2 - s
        if arg2 < s:
            revert with 0, 17
        if s > !(arg2 - s):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = arg2
        t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
        t = (5 * idx) + sha3(sha3(address(arg1), 3))
        continue 
    return s
}

function sub_89fef769(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0, 'MANAGEMENT: GET NAME ERROR'
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _56 = mem[64]
        mem[64] = mem[64] + 160
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_63] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_63 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_63 + 32] = stor3[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_56] = _63
                mem[_56 + 32] = stor3[address(arg1)][idx].field_256
                mem[_56 + 64] = stor3[address(arg1)][idx].field_512
                mem[_56 + 96] = stor3[address(arg1)][idx].field_768
                mem[_56 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_56] = _63
                mem[_56 + 32] = stor3[address(arg1)][idx].field_256
                mem[_56 + 64] = stor3[address(arg1)][idx].field_512
                mem[_56 + 96] = stor3[address(arg1)][idx].field_768
                mem[_56 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_63 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_56] = _63
                mem[_56 + 32] = stor3[address(arg1)][idx].field_256
                mem[_56 + 64] = stor3[address(arg1)][idx].field_512
                mem[_56 + 96] = stor3[address(arg1)][idx].field_768
                mem[_56 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_63 + 32] = stor3[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _63
            mem[_56 + 32] = stor3[address(arg1)][u].field_256
            mem[_56 + 64] = stor3[address(arg1)][u].field_512
            mem[_56 + 96] = stor3[address(arg1)][u].field_768
            mem[_56 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_67] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_56] = _67
                mem[_56 + 32] = stor3[address(arg1)][idx].field_256
                mem[_56 + 64] = stor3[address(arg1)][idx].field_512
                mem[_56 + 96] = stor3[address(arg1)][idx].field_768
                mem[_56 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_67 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_56] = _67
                mem[_56 + 32] = stor3[address(arg1)][idx].field_256
                mem[_56 + 64] = stor3[address(arg1)][idx].field_512
                mem[_56 + 96] = stor3[address(arg1)][idx].field_768
                mem[_56 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _56
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_67 + 32] = stor3[address(arg1)][idx].field_0
            t = _67 + 32
            u = sha3(mem[0])
            while _67 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_56] = _67
            mem[_56 + 32] = stor3[address(arg1)][u].field_256
            mem[_56 + 64] = stor3[address(arg1)][u].field_512
            mem[_56 + 96] = stor3[address(arg1)][u].field_768
            mem[_56 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _56
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_67 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                mem[_67 + 32] = stor3[address(arg1)][idx].field_0
                t = _67 + 32
                u = sha3(mem[0])
                while _67 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_56] = _67
        mem[_56 + 32] = stor3[address(arg1)][idx].field_256
        mem[_56 + 64] = stor3[address(arg1)][idx].field_512
        mem[_56 + 96] = stor3[address(arg1)][idx].field_768
        mem[_56 + 128] = stor3[address(arg1)][idx].field_1024
        mem[s] = _56
        s = s + 32
        idx = idx + 1
        continue 
    _54 = mem[64]
    mem[64] = mem[64] + 160
    mem[_54] = 96
    mem[_54 + 32] = 0
    mem[_54 + 64] = 0
    mem[_54 + 96] = 0
    mem[_54 + 128] = 0
    mem[0] = address(arg1)
    mem[32] = 4
    _58 = mem[64]
    mem[64] = mem[64] + 64
    mem[_58] = 1
    mem[_58 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    if not mem[96]:
        revert with 0, 50
    idx = 1
    s = mem[mem[128]]
    t = _54
    while idx < sub_05b707ff[address(arg1)]:
        if idx >= mem[96]:
            revert with 0, 50
        _100 = mem[(32 * idx) + 128]
        _101 = mem[mem[(32 * idx) + 128]]
        _102 = mem[64]
        _104 = mem[s]
        t = 0
        while t < _104:
            mem[t + _102 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_104) <= _104:
            _132 = mem[_58]
            s = 0
            while s < _132:
                mem[s + _102 + _104 + 32] = mem[s + _58 + 32]
                s = s + 32
                continue 
            if ceil32(_132) <= _132:
                _156 = mem[_101]
                s = 0
                while s < _156:
                    mem[s + _102 + _104 + _132 + 32] = mem[s + _101 + 32]
                    s = s + 32
                    continue 
                if ceil32(_156) <= _156:
                    _176 = mem[64]
                    mem[mem[64]] = _156 + _102 + _104 + _132 - mem[64]
                    mem[64] = _156 + _102 + _104 + _132 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _176
                    t = _100
                    continue 
                mem[_102 + _104 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _156 + _102 + _104 + _132 - mem[64]
                mem[64] = _156 + _102 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _180
                t = _100
                continue 
            mem[_102 + _104 + _132 + 32] = 0
            _158 = mem[_101]
            s = 0
            while s < _158:
                mem[s + _102 + _104 + _132 + 32] = mem[s + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_158) <= _158:
                _177 = mem[64]
                mem[mem[64]] = _158 + _102 + _104 + _132 - mem[64]
                mem[64] = _158 + _102 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _100
                continue 
            mem[_102 + _104 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _158 + _102 + _104 + _132 - mem[64]
            mem[64] = _158 + _102 + _104 + _132 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _181
            t = _100
            continue 
        mem[_102 + _104 + 32] = 0
        _133 = mem[_58]
        s = 0
        while s < _133:
            mem[s + _102 + _104 + 32] = mem[s + _58 + 32]
            s = s + 32
            continue 
        if ceil32(_133) <= _133:
            _157 = mem[_101]
            s = 0
            while s < _157:
                mem[s + _102 + _104 + _133 + 32] = mem[s + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                _178 = mem[64]
                mem[mem[64]] = _157 + _102 + _104 + _133 - mem[64]
                mem[64] = _157 + _102 + _104 + _133 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _178
                t = _100
                continue 
            mem[_102 + _104 + _133 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _157 + _102 + _104 + _133 - mem[64]
            mem[64] = _157 + _102 + _104 + _133 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _182
            t = _100
            continue 
        mem[_102 + _104 + _133 + 32] = 0
        _159 = mem[_101]
        s = 0
        while s < _159:
            mem[s + _102 + _104 + _133 + 32] = mem[s + _101 + 32]
            s = s + 32
            continue 
        if ceil32(_159) <= _159:
            _179 = mem[64]
            mem[mem[64]] = _159 + _102 + _104 + _133 - mem[64]
            mem[64] = _159 + _102 + _104 + _133 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _100
            continue 
        mem[_102 + _104 + _133 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _159 + _102 + _104 + _133 - mem[64]
        mem[64] = _159 + _102 + _104 + _133 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _183
        t = _100
        continue 
    mem[mem[64]] = 32
    _105 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
    if ceil32(_105) > _105:
        mem[mem[64] + _105 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
}

function sub_a716a53b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: GET CREATE TIME ERROR'
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _58 = mem[64]
        mem[64] = mem[64] + 160
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_65] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_65 + 32] = stor3[address(arg1)][idx].field_0
                        t = _65 + 32
                        u = sha3(mem[0])
                        while _65 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_65 + 32] = stor3[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = stor3[address(arg1)][u].field_256
            mem[_58 + 64] = stor3[address(arg1)][u].field_512
            mem[_58 + 96] = stor3[address(arg1)][u].field_768
            mem[_58 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_66] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_58] = _66
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_58] = _66
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_66 + 32] = stor3[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _66
            mem[_58 + 32] = stor3[address(arg1)][u].field_256
            mem[_58 + 64] = stor3[address(arg1)][u].field_512
            mem[_58 + 96] = stor3[address(arg1)][u].field_768
            mem[_58 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_66 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                mem[_66 + 32] = stor3[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _66
        mem[_58 + 32] = stor3[address(arg1)][idx].field_256
        mem[_58 + 64] = stor3[address(arg1)][idx].field_512
        mem[_58 + 96] = stor3[address(arg1)][idx].field_768
        mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[64] = mem[64] + 160
    mem[_56] = 96
    mem[_56 + 32] = 0
    mem[_56 + 64] = 0
    mem[_56 + 96] = 0
    mem[_56 + 128] = 0
    mem[0] = address(arg1)
    mem[32] = 4
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60] = 1
    mem[_60 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    if 0 >= mem[96]:
        revert with 0, 50
    _63 = mem[mem[128] + 32]
    if not mem[mem[128] + 32]:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 1
        mem[_64 + 32] = '0'
        idx = 1
        s = _64
        t = _56
        while idx < sub_05b707ff[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            _105 = mem[(32 * idx) + 128]
            _106 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = '0'
                _110 = mem[64]
                _111 = mem[s]
                t = 0
                while t < _111:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_111) <= _111:
                    _205 = mem[_60]
                    s = 0
                    while s < _205:
                        mem[s + _110 + _111 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_205) <= _205:
                        _355 = mem[_108]
                        s = 0
                        while s < _355:
                            mem[s + _110 + _111 + _205 + 32] = mem[s + _108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_355) <= _355:
                            _491 = mem[64]
                            mem[mem[64]] = _355 + _110 + _111 + _205 - mem[64]
                            mem[64] = _355 + _110 + _111 + _205 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _491
                            t = _105
                            continue 
                        mem[_110 + _111 + _205 + _355 + 32] = 0
                        _497 = mem[64]
                        mem[mem[64]] = _355 + _110 + _111 + _205 - mem[64]
                        mem[64] = _355 + _110 + _111 + _205 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _105
                        continue 
                    mem[_110 + _111 + _205 + 32] = 0
                    _359 = mem[_108]
                    s = 0
                    while s < _359:
                        mem[s + _110 + _111 + _205 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _492 = mem[64]
                        mem[mem[64]] = _359 + _110 + _111 + _205 - mem[64]
                        mem[64] = _359 + _110 + _111 + _205 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _492
                        t = _105
                        continue 
                    mem[_110 + _111 + _205 + _359 + 32] = 0
                    _498 = mem[64]
                    mem[mem[64]] = _359 + _110 + _111 + _205 - mem[64]
                    mem[64] = _359 + _110 + _111 + _205 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _105
                    continue 
                mem[_110 + _111 + 32] = 0
                _208 = mem[_60]
                s = 0
                while s < _208:
                    mem[s + _110 + _111 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_208) <= _208:
                    _356 = mem[_108]
                    s = 0
                    while s < _356:
                        mem[s + _110 + _111 + _208 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_356) <= _356:
                        _493 = mem[64]
                        mem[mem[64]] = _356 + _110 + _111 + _208 - mem[64]
                        mem[64] = _356 + _110 + _111 + _208 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _493
                        t = _105
                        continue 
                    mem[_110 + _111 + _208 + _356 + 32] = 0
                    _499 = mem[64]
                    mem[mem[64]] = _356 + _110 + _111 + _208 - mem[64]
                    mem[64] = _356 + _110 + _111 + _208 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _499
                    t = _105
                    continue 
                mem[_110 + _111 + _208 + 32] = 0
                _360 = mem[_108]
                s = 0
                while s < _360:
                    mem[s + _110 + _111 + _208 + 32] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _494 = mem[64]
                    mem[mem[64]] = _360 + _110 + _111 + _208 - mem[64]
                    mem[64] = _360 + _110 + _111 + _208 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _494
                    t = _105
                    continue 
                mem[_110 + _111 + _208 + _360 + 32] = 0
                _500 = mem[64]
                mem[mem[64]] = _360 + _110 + _111 + _208 - mem[64]
                mem[64] = _360 + _110 + _111 + _208 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _500
                t = _105
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _204 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _106
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_204]:
                        revert with 0, 50
                    mem[v + _204 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _353 = mem[s]
                t = 0
                while t < _353:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_353) <= _353:
                    _485 = mem[_60]
                    s = 0
                    while s < _485:
                        mem[s + _349 + _353 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _691 = mem[_204]
                        s = 0
                        while s < _691:
                            mem[s + _349 + _353 + _485 + 32] = mem[s + _204 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_691) <= _691:
                            _875 = mem[64]
                            mem[mem[64]] = _691 + _349 + _353 + _485 - mem[64]
                            mem[64] = _691 + _349 + _353 + _485 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _875
                            t = _105
                            continue 
                        mem[_349 + _353 + _485 + _691 + 32] = 0
                        _891 = mem[64]
                        mem[mem[64]] = _691 + _349 + _353 + _485 - mem[64]
                        mem[64] = _691 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _891
                        t = _105
                        continue 
                    mem[_349 + _353 + _485 + 32] = 0
                    _699 = mem[_204]
                    s = 0
                    while s < _699:
                        mem[s + _349 + _353 + _485 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _876 = mem[64]
                        mem[mem[64]] = _699 + _349 + _353 + _485 - mem[64]
                        mem[64] = _699 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _876
                        t = _105
                        continue 
                    mem[_349 + _353 + _485 + _699 + 32] = 0
                    _892 = mem[64]
                    mem[mem[64]] = _699 + _349 + _353 + _485 - mem[64]
                    mem[64] = _699 + _349 + _353 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _892
                    t = _105
                    continue 
                mem[_349 + _353 + 32] = 0
                _489 = mem[_60]
                s = 0
                while s < _489:
                    mem[s + _349 + _353 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_489) <= _489:
                    _692 = mem[_204]
                    s = 0
                    while s < _692:
                        mem[s + _349 + _353 + _489 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_692) <= _692:
                        _877 = mem[64]
                        mem[mem[64]] = _692 + _349 + _353 + _489 - mem[64]
                        mem[64] = _692 + _349 + _353 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _105
                        continue 
                    mem[_349 + _353 + _489 + _692 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _692 + _349 + _353 + _489 - mem[64]
                    mem[64] = _692 + _349 + _353 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _105
                    continue 
                mem[_349 + _353 + _489 + 32] = 0
                _700 = mem[_204]
                s = 0
                while s < _700:
                    mem[s + _349 + _353 + _489 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _878 = mem[64]
                    mem[mem[64]] = _700 + _349 + _353 + _489 - mem[64]
                    mem[64] = _700 + _349 + _353 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _105
                    continue 
                mem[_349 + _353 + _489 + _700 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _700 + _349 + _353 + _489 - mem[64]
                mem[64] = _700 + _349 + _353 + _489 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _105
                continue 
            mem[_204 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _106
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_204]:
                    revert with 0, 50
                mem[v + _204 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_354) <= _354:
                _486 = mem[_60]
                s = 0
                while s < _486:
                    mem[s + _350 + _354 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _693 = mem[_204]
                    s = 0
                    while s < _693:
                        mem[s + _350 + _354 + _486 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _879 = mem[64]
                        mem[mem[64]] = _693 + _350 + _354 + _486 - mem[64]
                        mem[64] = _693 + _350 + _354 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _879
                        t = _105
                        continue 
                    mem[_350 + _354 + _486 + _693 + 32] = 0
                    _895 = mem[64]
                    mem[mem[64]] = _693 + _350 + _354 + _486 - mem[64]
                    mem[64] = _693 + _350 + _354 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _895
                    t = _105
                    continue 
                mem[_350 + _354 + _486 + 32] = 0
                _701 = mem[_204]
                s = 0
                while s < _701:
                    mem[s + _350 + _354 + _486 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _880 = mem[64]
                    mem[mem[64]] = _701 + _350 + _354 + _486 - mem[64]
                    mem[64] = _701 + _350 + _354 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _880
                    t = _105
                    continue 
                mem[_350 + _354 + _486 + _701 + 32] = 0
                _896 = mem[64]
                mem[mem[64]] = _701 + _350 + _354 + _486 - mem[64]
                mem[64] = _701 + _350 + _354 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _896
                t = _105
                continue 
            mem[_350 + _354 + 32] = 0
            _490 = mem[_60]
            s = 0
            while s < _490:
                mem[s + _350 + _354 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_490) <= _490:
                _694 = mem[_204]
                s = 0
                while s < _694:
                    mem[s + _350 + _354 + _490 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _881 = mem[64]
                    mem[mem[64]] = _694 + _350 + _354 + _490 - mem[64]
                    mem[64] = _694 + _350 + _354 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _105
                    continue 
                mem[_350 + _354 + _490 + _694 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _694 + _350 + _354 + _490 - mem[64]
                mem[64] = _694 + _350 + _354 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _897
                t = _105
                continue 
            mem[_350 + _354 + _490 + 32] = 0
            _702 = mem[_204]
            s = 0
            while s < _702:
                mem[s + _350 + _354 + _490 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _882 = mem[64]
                mem[mem[64]] = _702 + _350 + _354 + _490 - mem[64]
                mem[64] = _702 + _350 + _354 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _882
                t = _105
                continue 
            mem[_350 + _354 + _490 + _702 + 32] = 0
            _898 = mem[64]
            mem[mem[64]] = _702 + _350 + _354 + _490 - mem[64]
            mem[64] = _702 + _350 + _354 + _490 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _898
            t = _105
            continue 
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) > _109:
            mem[mem[64] + _109 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
    u = 0
    t = mem[mem[128] + 32]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _63
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        idx = 1
        t = _104
        u = _56
        while idx < sub_05b707ff[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            _345 = mem[(32 * idx) + 128]
            _346 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 1
                mem[_357 + 32] = '0'
                _362 = mem[64]
                _365 = mem[t]
                u = 0
                while u < _365:
                    mem[u + _362 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_365) <= _365:
                    _483 = mem[_60]
                    t = 0
                    while t < _483:
                        mem[t + _362 + _365 + 32] = mem[t + _60 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _685 = mem[_357]
                        s = 0
                        while s < _685:
                            mem[s + _362 + _365 + _483 + 32] = mem[s + _357 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_685) <= _685:
                            _865 = mem[64]
                            mem[mem[64]] = _685 + _362 + _365 + _483 - mem[64]
                            mem[64] = _685 + _362 + _365 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _865
                            u = _345
                            continue 
                        mem[_362 + _365 + _483 + _685 + 32] = 0
                        _883 = mem[64]
                        mem[mem[64]] = _685 + _362 + _365 + _483 - mem[64]
                        mem[64] = _685 + _362 + _365 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _883
                        u = _345
                        continue 
                    mem[_362 + _365 + _483 + 32] = 0
                    _695 = mem[_357]
                    s = 0
                    while s < _695:
                        mem[s + _362 + _365 + _483 + 32] = mem[s + _357 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_695) <= _695:
                        _866 = mem[64]
                        mem[mem[64]] = _695 + _362 + _365 + _483 - mem[64]
                        mem[64] = _695 + _362 + _365 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _866
                        u = _345
                        continue 
                    mem[_362 + _365 + _483 + _695 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _695 + _362 + _365 + _483 - mem[64]
                    mem[64] = _695 + _362 + _365 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _884
                    u = _345
                    continue 
                mem[_362 + _365 + 32] = 0
                _487 = mem[_60]
                s = 0
                while s < _487:
                    mem[s + _362 + _365 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _686 = mem[_357]
                    s = 0
                    while s < _686:
                        mem[s + _362 + _365 + _487 + 32] = mem[s + _357 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_686) <= _686:
                        _867 = mem[64]
                        mem[mem[64]] = _686 + _362 + _365 + _487 - mem[64]
                        mem[64] = _686 + _362 + _365 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _345
                        continue 
                    mem[_362 + _365 + _487 + _686 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _686 + _362 + _365 + _487 - mem[64]
                    mem[64] = _686 + _362 + _365 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _345
                    continue 
                mem[_362 + _365 + _487 + 32] = 0
                _696 = mem[_357]
                s = 0
                while s < _696:
                    mem[s + _362 + _365 + _487 + 32] = mem[s + _357 + 32]
                    s = s + 32
                    continue 
                if ceil32(_696) <= _696:
                    _868 = mem[64]
                    mem[mem[64]] = _696 + _362 + _365 + _487 - mem[64]
                    mem[64] = _696 + _362 + _365 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _868
                    u = _345
                    continue 
                mem[_362 + _365 + _487 + _696 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _696 + _362 + _365 + _487 - mem[64]
                mem[64] = _696 + _362 + _365 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _345
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 32]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _481 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _346
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_481]:
                        revert with 0, 50
                    mem[v + _481 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _679 = mem[64]
                _683 = mem[t]
                s = 0
                while s < _683:
                    mem[s + _679 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_683) <= _683:
                    _859 = mem[_60]
                    s = 0
                    while s < _859:
                        mem[s + _679 + _683 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_859) <= _859:
                        _979 = mem[_481]
                        s = 0
                        while s < _979:
                            mem[s + _679 + _683 + _859 + 32] = mem[s + _481 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_979) <= _979:
                            _1059 = mem[64]
                            mem[mem[64]] = _979 + _679 + _683 + _859 - mem[64]
                            mem[64] = _979 + _679 + _683 + _859 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1059
                            u = _345
                            continue 
                        mem[_679 + _683 + _859 + _979 + 32] = 0
                        _1075 = mem[64]
                        mem[mem[64]] = _979 + _679 + _683 + _859 - mem[64]
                        mem[64] = _979 + _679 + _683 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1075
                        u = _345
                        continue 
                    mem[_679 + _683 + _859 + 32] = 0
                    _987 = mem[_481]
                    s = 0
                    while s < _987:
                        mem[s + _679 + _683 + _859 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1060 = mem[64]
                        mem[mem[64]] = _987 + _679 + _683 + _859 - mem[64]
                        mem[64] = _987 + _679 + _683 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1060
                        u = _345
                        continue 
                    mem[_679 + _683 + _859 + _987 + 32] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = _987 + _679 + _683 + _859 - mem[64]
                    mem[64] = _987 + _679 + _683 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1076
                    u = _345
                    continue 
                mem[_679 + _683 + 32] = 0
                _863 = mem[_60]
                s = 0
                while s < _863:
                    mem[s + _679 + _683 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_863) <= _863:
                    _980 = mem[_481]
                    s = 0
                    while s < _980:
                        mem[s + _679 + _683 + _863 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_980) <= _980:
                        _1061 = mem[64]
                        mem[mem[64]] = _980 + _679 + _683 + _863 - mem[64]
                        mem[64] = _980 + _679 + _683 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _345
                        continue 
                    mem[_679 + _683 + _863 + _980 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _980 + _679 + _683 + _863 - mem[64]
                    mem[64] = _980 + _679 + _683 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _345
                    continue 
                mem[_679 + _683 + _863 + 32] = 0
                _988 = mem[_481]
                s = 0
                while s < _988:
                    mem[s + _679 + _683 + _863 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1062 = mem[64]
                    mem[mem[64]] = _988 + _679 + _683 + _863 - mem[64]
                    mem[64] = _988 + _679 + _683 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _345
                    continue 
                mem[_679 + _683 + _863 + _988 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _988 + _679 + _683 + _863 - mem[64]
                mem[64] = _988 + _679 + _683 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _345
                continue 
            mem[_481 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _346
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_481]:
                    revert with 0, 50
                mem[v + _481 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _680 = mem[64]
            _684 = mem[t]
            s = 0
            while s < _684:
                mem[s + _680 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_684) <= _684:
                _860 = mem[_60]
                s = 0
                while s < _860:
                    mem[s + _680 + _684 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_860) <= _860:
                    _981 = mem[_481]
                    s = 0
                    while s < _981:
                        mem[s + _680 + _684 + _860 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1063 = mem[64]
                        mem[mem[64]] = _981 + _680 + _684 + _860 - mem[64]
                        mem[64] = _981 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1063
                        u = _345
                        continue 
                    mem[_680 + _684 + _860 + _981 + 32] = 0
                    _1079 = mem[64]
                    mem[mem[64]] = _981 + _680 + _684 + _860 - mem[64]
                    mem[64] = _981 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1079
                    u = _345
                    continue 
                mem[_680 + _684 + _860 + 32] = 0
                _989 = mem[_481]
                s = 0
                while s < _989:
                    mem[s + _680 + _684 + _860 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1064 = mem[64]
                    mem[mem[64]] = _989 + _680 + _684 + _860 - mem[64]
                    mem[64] = _989 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1064
                    u = _345
                    continue 
                mem[_680 + _684 + _860 + _989 + 32] = 0
                _1080 = mem[64]
                mem[mem[64]] = _989 + _680 + _684 + _860 - mem[64]
                mem[64] = _989 + _680 + _684 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1080
                u = _345
                continue 
            mem[_680 + _684 + 32] = 0
            _864 = mem[_60]
            s = 0
            while s < _864:
                mem[s + _680 + _684 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_864) <= _864:
                _982 = mem[_481]
                s = 0
                while s < _982:
                    mem[s + _680 + _684 + _864 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1065 = mem[64]
                    mem[mem[64]] = _982 + _680 + _684 + _864 - mem[64]
                    mem[64] = _982 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1065
                    u = _345
                    continue 
                mem[_680 + _684 + _864 + _982 + 32] = 0
                _1081 = mem[64]
                mem[mem[64]] = _982 + _680 + _684 + _864 - mem[64]
                mem[64] = _982 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1081
                u = _345
                continue 
            mem[_680 + _684 + _864 + 32] = 0
            _990 = mem[_481]
            s = 0
            while s < _990:
                mem[s + _680 + _684 + _864 + 32] = mem[s + _481 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1066 = mem[64]
                mem[mem[64]] = _990 + _680 + _684 + _864 - mem[64]
                mem[64] = _990 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1066
                u = _345
                continue 
            mem[_680 + _684 + _864 + _990 + 32] = 0
            _1082 = mem[64]
            mem[mem[64]] = _990 + _680 + _684 + _864 - mem[64]
            mem[64] = _990 + _680 + _684 + _864 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1082
            u = _345
            continue 
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) > _361:
            mem[mem[64] + _361 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _63
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    idx = 1
    t = _104
    u = _56
    while idx < sub_05b707ff[address(arg1)]:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[(32 * idx) + 128] + 32]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = '0'
            _364 = mem[64]
            _366 = mem[t]
            u = 0
            while u < _366:
                mem[u + _364 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_366) <= _366:
                _484 = mem[_60]
                t = 0
                while t < _484:
                    mem[t + _364 + _366 + 32] = mem[t + _60 + 32]
                    t = t + 32
                    continue 
                if ceil32(_484) <= _484:
                    _689 = mem[_358]
                    s = 0
                    while s < _689:
                        mem[s + _364 + _366 + _484 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_689) <= _689:
                        _871 = mem[64]
                        mem[mem[64]] = _689 + _364 + _366 + _484 - mem[64]
                        mem[64] = _689 + _364 + _366 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _347
                        continue 
                    mem[_364 + _366 + _484 + _689 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _689 + _364 + _366 + _484 - mem[64]
                    mem[64] = _689 + _364 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _887
                    u = _347
                    continue 
                mem[_364 + _366 + _484 + 32] = 0
                _697 = mem[_358]
                s = 0
                while s < _697:
                    mem[s + _364 + _366 + _484 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_697) <= _697:
                    _872 = mem[64]
                    mem[mem[64]] = _697 + _364 + _366 + _484 - mem[64]
                    mem[64] = _697 + _364 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _347
                    continue 
                mem[_364 + _366 + _484 + _697 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _697 + _364 + _366 + _484 - mem[64]
                mem[64] = _697 + _364 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _888
                u = _347
                continue 
            mem[_364 + _366 + 32] = 0
            _488 = mem[_60]
            s = 0
            while s < _488:
                mem[s + _364 + _366 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _690 = mem[_358]
                s = 0
                while s < _690:
                    mem[s + _364 + _366 + _488 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _873 = mem[64]
                    mem[mem[64]] = _690 + _364 + _366 + _488 - mem[64]
                    mem[64] = _690 + _364 + _366 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _873
                    u = _347
                    continue 
                mem[_364 + _366 + _488 + _690 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _690 + _364 + _366 + _488 - mem[64]
                mem[64] = _690 + _364 + _366 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _889
                u = _347
                continue 
            mem[_364 + _366 + _488 + 32] = 0
            _698 = mem[_358]
            s = 0
            while s < _698:
                mem[s + _364 + _366 + _488 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_698) <= _698:
                _874 = mem[64]
                mem[mem[64]] = _698 + _364 + _366 + _488 - mem[64]
                mem[64] = _698 + _364 + _366 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _874
                u = _347
                continue 
            mem[_364 + _366 + _488 + _698 + 32] = 0
            _890 = mem[64]
            mem[mem[64]] = _698 + _364 + _366 + _488 - mem[64]
            mem[64] = _698 + _364 + _366 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _890
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 32]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _482 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_482]:
                    revert with 0, 50
                mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _681 = mem[64]
            _687 = mem[t]
            s = 0
            while s < _687:
                mem[s + _681 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _861 = mem[_60]
                s = 0
                while s < _861:
                    mem[s + _681 + _687 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _983 = mem[_482]
                    s = 0
                    while s < _983:
                        mem[s + _681 + _687 + _861 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_983) <= _983:
                        _1067 = mem[64]
                        mem[mem[64]] = _983 + _681 + _687 + _861 - mem[64]
                        mem[64] = _983 + _681 + _687 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _347
                        continue 
                    mem[_681 + _687 + _861 + _983 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _983 + _681 + _687 + _861 - mem[64]
                    mem[64] = _983 + _681 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _347
                    continue 
                mem[_681 + _687 + _861 + 32] = 0
                _991 = mem[_482]
                s = 0
                while s < _991:
                    mem[s + _681 + _687 + _861 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_991) <= _991:
                    _1068 = mem[64]
                    mem[mem[64]] = _991 + _681 + _687 + _861 - mem[64]
                    mem[64] = _991 + _681 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _347
                    continue 
                mem[_681 + _687 + _861 + _991 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _991 + _681 + _687 + _861 - mem[64]
                mem[64] = _991 + _681 + _687 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _347
                continue 
            mem[_681 + _687 + 32] = 0
            _869 = mem[_60]
            s = 0
            while s < _869:
                mem[s + _681 + _687 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_869) <= _869:
                _984 = mem[_482]
                s = 0
                while s < _984:
                    mem[s + _681 + _687 + _869 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_984) <= _984:
                    _1069 = mem[64]
                    mem[mem[64]] = _984 + _681 + _687 + _869 - mem[64]
                    mem[64] = _984 + _681 + _687 + _869 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_681 + _687 + _869 + _984 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _984 + _681 + _687 + _869 - mem[64]
                mem[64] = _984 + _681 + _687 + _869 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_681 + _687 + _869 + 32] = 0
            _992 = mem[_482]
            s = 0
            while s < _992:
                mem[s + _681 + _687 + _869 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_992) <= _992:
                _1070 = mem[64]
                mem[mem[64]] = _992 + _681 + _687 + _869 - mem[64]
                mem[64] = _992 + _681 + _687 + _869 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_681 + _687 + _869 + _992 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _992 + _681 + _687 + _869 - mem[64]
            mem[64] = _992 + _681 + _687 + _869 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_482 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_482]:
                revert with 0, 50
            mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _682 = mem[64]
        _688 = mem[t]
        s = 0
        while s < _688:
            mem[s + _682 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_688) <= _688:
            _862 = mem[_60]
            s = 0
            while s < _862:
                mem[s + _682 + _688 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _985 = mem[_482]
                s = 0
                while s < _985:
                    mem[s + _682 + _688 + _862 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_985) <= _985:
                    _1071 = mem[64]
                    mem[mem[64]] = _985 + _682 + _688 + _862 - mem[64]
                    mem[64] = _985 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1071
                    u = _347
                    continue 
                mem[_682 + _688 + _862 + _985 + 32] = 0
                _1087 = mem[64]
                mem[mem[64]] = _985 + _682 + _688 + _862 - mem[64]
                mem[64] = _985 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1087
                u = _347
                continue 
            mem[_682 + _688 + _862 + 32] = 0
            _993 = mem[_482]
            s = 0
            while s < _993:
                mem[s + _682 + _688 + _862 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_993) <= _993:
                _1072 = mem[64]
                mem[mem[64]] = _993 + _682 + _688 + _862 - mem[64]
                mem[64] = _993 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1072
                u = _347
                continue 
            mem[_682 + _688 + _862 + _993 + 32] = 0
            _1088 = mem[64]
            mem[mem[64]] = _993 + _682 + _688 + _862 - mem[64]
            mem[64] = _993 + _682 + _688 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1088
            u = _347
            continue 
        mem[_682 + _688 + 32] = 0
        _870 = mem[_60]
        s = 0
        while s < _870:
            mem[s + _682 + _688 + 32] = mem[s + _60 + 32]
            s = s + 32
            continue 
        if ceil32(_870) <= _870:
            _986 = mem[_482]
            s = 0
            while s < _986:
                mem[s + _682 + _688 + _870 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_986) <= _986:
                _1073 = mem[64]
                mem[mem[64]] = _986 + _682 + _688 + _870 - mem[64]
                mem[64] = _986 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1073
                u = _347
                continue 
            mem[_682 + _688 + _870 + _986 + 32] = 0
            _1089 = mem[64]
            mem[mem[64]] = _986 + _682 + _688 + _870 - mem[64]
            mem[64] = _986 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1089
            u = _347
            continue 
        mem[_682 + _688 + _870 + 32] = 0
        _994 = mem[_482]
        s = 0
        while s < _994:
            mem[s + _682 + _688 + _870 + 32] = mem[s + _482 + 32]
            s = s + 32
            continue 
        if ceil32(_994) <= _994:
            _1074 = mem[64]
            mem[mem[64]] = _994 + _682 + _688 + _870 - mem[64]
            mem[64] = _994 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1074
            u = _347
            continue 
        mem[_682 + _688 + _870 + _994 + 32] = 0
        _1090 = mem[64]
        mem[mem[64]] = _994 + _682 + _688 + _870 - mem[64]
        mem[64] = _994 + _682 + _688 + _870 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1090
        u = _347
        continue 
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) > _363:
        mem[mem[64] + _363 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
}

function sub_9c339d05(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: GET LAST CLAIM TIME ERROR'
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _58 = mem[64]
        mem[64] = mem[64] + 160
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_65] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_65 + 32] = stor3[address(arg1)][idx].field_0
                        t = _65 + 32
                        u = sha3(mem[0])
                        while _65 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_65 + 32] = stor3[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = stor3[address(arg1)][u].field_256
            mem[_58 + 64] = stor3[address(arg1)][u].field_512
            mem[_58 + 96] = stor3[address(arg1)][u].field_768
            mem[_58 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_66] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_58] = _66
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_58] = _66
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_66 + 32] = stor3[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _66
            mem[_58 + 32] = stor3[address(arg1)][u].field_256
            mem[_58 + 64] = stor3[address(arg1)][u].field_512
            mem[_58 + 96] = stor3[address(arg1)][u].field_768
            mem[_58 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_66 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                mem[_66 + 32] = stor3[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _66
        mem[_58 + 32] = stor3[address(arg1)][idx].field_256
        mem[_58 + 64] = stor3[address(arg1)][idx].field_512
        mem[_58 + 96] = stor3[address(arg1)][idx].field_768
        mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[64] = mem[64] + 160
    mem[_56] = 96
    mem[_56 + 32] = 0
    mem[_56 + 64] = 0
    mem[_56 + 96] = 0
    mem[_56 + 128] = 0
    mem[0] = address(arg1)
    mem[32] = 4
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60] = 1
    mem[_60 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    if 0 >= mem[96]:
        revert with 0, 50
    _63 = mem[mem[128] + 64]
    if not mem[mem[128] + 64]:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 1
        mem[_64 + 32] = '0'
        idx = 1
        s = _64
        t = _56
        while idx < sub_05b707ff[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            _105 = mem[(32 * idx) + 128]
            _106 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = '0'
                _110 = mem[64]
                _111 = mem[s]
                t = 0
                while t < _111:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_111) <= _111:
                    _205 = mem[_60]
                    s = 0
                    while s < _205:
                        mem[s + _110 + _111 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_205) <= _205:
                        _355 = mem[_108]
                        s = 0
                        while s < _355:
                            mem[s + _110 + _111 + _205 + 32] = mem[s + _108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_355) <= _355:
                            _491 = mem[64]
                            mem[mem[64]] = _355 + _110 + _111 + _205 - mem[64]
                            mem[64] = _355 + _110 + _111 + _205 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _491
                            t = _105
                            continue 
                        mem[_110 + _111 + _205 + _355 + 32] = 0
                        _497 = mem[64]
                        mem[mem[64]] = _355 + _110 + _111 + _205 - mem[64]
                        mem[64] = _355 + _110 + _111 + _205 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _105
                        continue 
                    mem[_110 + _111 + _205 + 32] = 0
                    _359 = mem[_108]
                    s = 0
                    while s < _359:
                        mem[s + _110 + _111 + _205 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _492 = mem[64]
                        mem[mem[64]] = _359 + _110 + _111 + _205 - mem[64]
                        mem[64] = _359 + _110 + _111 + _205 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _492
                        t = _105
                        continue 
                    mem[_110 + _111 + _205 + _359 + 32] = 0
                    _498 = mem[64]
                    mem[mem[64]] = _359 + _110 + _111 + _205 - mem[64]
                    mem[64] = _359 + _110 + _111 + _205 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _105
                    continue 
                mem[_110 + _111 + 32] = 0
                _208 = mem[_60]
                s = 0
                while s < _208:
                    mem[s + _110 + _111 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_208) <= _208:
                    _356 = mem[_108]
                    s = 0
                    while s < _356:
                        mem[s + _110 + _111 + _208 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_356) <= _356:
                        _493 = mem[64]
                        mem[mem[64]] = _356 + _110 + _111 + _208 - mem[64]
                        mem[64] = _356 + _110 + _111 + _208 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _493
                        t = _105
                        continue 
                    mem[_110 + _111 + _208 + _356 + 32] = 0
                    _499 = mem[64]
                    mem[mem[64]] = _356 + _110 + _111 + _208 - mem[64]
                    mem[64] = _356 + _110 + _111 + _208 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _499
                    t = _105
                    continue 
                mem[_110 + _111 + _208 + 32] = 0
                _360 = mem[_108]
                s = 0
                while s < _360:
                    mem[s + _110 + _111 + _208 + 32] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _494 = mem[64]
                    mem[mem[64]] = _360 + _110 + _111 + _208 - mem[64]
                    mem[64] = _360 + _110 + _111 + _208 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _494
                    t = _105
                    continue 
                mem[_110 + _111 + _208 + _360 + 32] = 0
                _500 = mem[64]
                mem[mem[64]] = _360 + _110 + _111 + _208 - mem[64]
                mem[64] = _360 + _110 + _111 + _208 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _500
                t = _105
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _204 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _106
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_204]:
                        revert with 0, 50
                    mem[v + _204 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _353 = mem[s]
                t = 0
                while t < _353:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_353) <= _353:
                    _485 = mem[_60]
                    s = 0
                    while s < _485:
                        mem[s + _349 + _353 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _691 = mem[_204]
                        s = 0
                        while s < _691:
                            mem[s + _349 + _353 + _485 + 32] = mem[s + _204 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_691) <= _691:
                            _875 = mem[64]
                            mem[mem[64]] = _691 + _349 + _353 + _485 - mem[64]
                            mem[64] = _691 + _349 + _353 + _485 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _875
                            t = _105
                            continue 
                        mem[_349 + _353 + _485 + _691 + 32] = 0
                        _891 = mem[64]
                        mem[mem[64]] = _691 + _349 + _353 + _485 - mem[64]
                        mem[64] = _691 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _891
                        t = _105
                        continue 
                    mem[_349 + _353 + _485 + 32] = 0
                    _699 = mem[_204]
                    s = 0
                    while s < _699:
                        mem[s + _349 + _353 + _485 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _876 = mem[64]
                        mem[mem[64]] = _699 + _349 + _353 + _485 - mem[64]
                        mem[64] = _699 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _876
                        t = _105
                        continue 
                    mem[_349 + _353 + _485 + _699 + 32] = 0
                    _892 = mem[64]
                    mem[mem[64]] = _699 + _349 + _353 + _485 - mem[64]
                    mem[64] = _699 + _349 + _353 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _892
                    t = _105
                    continue 
                mem[_349 + _353 + 32] = 0
                _489 = mem[_60]
                s = 0
                while s < _489:
                    mem[s + _349 + _353 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_489) <= _489:
                    _692 = mem[_204]
                    s = 0
                    while s < _692:
                        mem[s + _349 + _353 + _489 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_692) <= _692:
                        _877 = mem[64]
                        mem[mem[64]] = _692 + _349 + _353 + _489 - mem[64]
                        mem[64] = _692 + _349 + _353 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _105
                        continue 
                    mem[_349 + _353 + _489 + _692 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _692 + _349 + _353 + _489 - mem[64]
                    mem[64] = _692 + _349 + _353 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _105
                    continue 
                mem[_349 + _353 + _489 + 32] = 0
                _700 = mem[_204]
                s = 0
                while s < _700:
                    mem[s + _349 + _353 + _489 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _878 = mem[64]
                    mem[mem[64]] = _700 + _349 + _353 + _489 - mem[64]
                    mem[64] = _700 + _349 + _353 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _105
                    continue 
                mem[_349 + _353 + _489 + _700 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _700 + _349 + _353 + _489 - mem[64]
                mem[64] = _700 + _349 + _353 + _489 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _105
                continue 
            mem[_204 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _106
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_204]:
                    revert with 0, 50
                mem[v + _204 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_354) <= _354:
                _486 = mem[_60]
                s = 0
                while s < _486:
                    mem[s + _350 + _354 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _693 = mem[_204]
                    s = 0
                    while s < _693:
                        mem[s + _350 + _354 + _486 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _879 = mem[64]
                        mem[mem[64]] = _693 + _350 + _354 + _486 - mem[64]
                        mem[64] = _693 + _350 + _354 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _879
                        t = _105
                        continue 
                    mem[_350 + _354 + _486 + _693 + 32] = 0
                    _895 = mem[64]
                    mem[mem[64]] = _693 + _350 + _354 + _486 - mem[64]
                    mem[64] = _693 + _350 + _354 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _895
                    t = _105
                    continue 
                mem[_350 + _354 + _486 + 32] = 0
                _701 = mem[_204]
                s = 0
                while s < _701:
                    mem[s + _350 + _354 + _486 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _880 = mem[64]
                    mem[mem[64]] = _701 + _350 + _354 + _486 - mem[64]
                    mem[64] = _701 + _350 + _354 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _880
                    t = _105
                    continue 
                mem[_350 + _354 + _486 + _701 + 32] = 0
                _896 = mem[64]
                mem[mem[64]] = _701 + _350 + _354 + _486 - mem[64]
                mem[64] = _701 + _350 + _354 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _896
                t = _105
                continue 
            mem[_350 + _354 + 32] = 0
            _490 = mem[_60]
            s = 0
            while s < _490:
                mem[s + _350 + _354 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_490) <= _490:
                _694 = mem[_204]
                s = 0
                while s < _694:
                    mem[s + _350 + _354 + _490 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _881 = mem[64]
                    mem[mem[64]] = _694 + _350 + _354 + _490 - mem[64]
                    mem[64] = _694 + _350 + _354 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _105
                    continue 
                mem[_350 + _354 + _490 + _694 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _694 + _350 + _354 + _490 - mem[64]
                mem[64] = _694 + _350 + _354 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _897
                t = _105
                continue 
            mem[_350 + _354 + _490 + 32] = 0
            _702 = mem[_204]
            s = 0
            while s < _702:
                mem[s + _350 + _354 + _490 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _882 = mem[64]
                mem[mem[64]] = _702 + _350 + _354 + _490 - mem[64]
                mem[64] = _702 + _350 + _354 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _882
                t = _105
                continue 
            mem[_350 + _354 + _490 + _702 + 32] = 0
            _898 = mem[64]
            mem[mem[64]] = _702 + _350 + _354 + _490 - mem[64]
            mem[64] = _702 + _350 + _354 + _490 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _898
            t = _105
            continue 
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) > _109:
            mem[mem[64] + _109 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
    u = 0
    t = mem[mem[128] + 64]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _63
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        idx = 1
        t = _104
        u = _56
        while idx < sub_05b707ff[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            _345 = mem[(32 * idx) + 128]
            _346 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 1
                mem[_357 + 32] = '0'
                _362 = mem[64]
                _365 = mem[t]
                u = 0
                while u < _365:
                    mem[u + _362 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_365) <= _365:
                    _483 = mem[_60]
                    t = 0
                    while t < _483:
                        mem[t + _362 + _365 + 32] = mem[t + _60 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _685 = mem[_357]
                        s = 0
                        while s < _685:
                            mem[s + _362 + _365 + _483 + 32] = mem[s + _357 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_685) <= _685:
                            _865 = mem[64]
                            mem[mem[64]] = _685 + _362 + _365 + _483 - mem[64]
                            mem[64] = _685 + _362 + _365 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _865
                            u = _345
                            continue 
                        mem[_362 + _365 + _483 + _685 + 32] = 0
                        _883 = mem[64]
                        mem[mem[64]] = _685 + _362 + _365 + _483 - mem[64]
                        mem[64] = _685 + _362 + _365 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _883
                        u = _345
                        continue 
                    mem[_362 + _365 + _483 + 32] = 0
                    _695 = mem[_357]
                    s = 0
                    while s < _695:
                        mem[s + _362 + _365 + _483 + 32] = mem[s + _357 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_695) <= _695:
                        _866 = mem[64]
                        mem[mem[64]] = _695 + _362 + _365 + _483 - mem[64]
                        mem[64] = _695 + _362 + _365 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _866
                        u = _345
                        continue 
                    mem[_362 + _365 + _483 + _695 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _695 + _362 + _365 + _483 - mem[64]
                    mem[64] = _695 + _362 + _365 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _884
                    u = _345
                    continue 
                mem[_362 + _365 + 32] = 0
                _487 = mem[_60]
                s = 0
                while s < _487:
                    mem[s + _362 + _365 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _686 = mem[_357]
                    s = 0
                    while s < _686:
                        mem[s + _362 + _365 + _487 + 32] = mem[s + _357 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_686) <= _686:
                        _867 = mem[64]
                        mem[mem[64]] = _686 + _362 + _365 + _487 - mem[64]
                        mem[64] = _686 + _362 + _365 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _345
                        continue 
                    mem[_362 + _365 + _487 + _686 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _686 + _362 + _365 + _487 - mem[64]
                    mem[64] = _686 + _362 + _365 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _345
                    continue 
                mem[_362 + _365 + _487 + 32] = 0
                _696 = mem[_357]
                s = 0
                while s < _696:
                    mem[s + _362 + _365 + _487 + 32] = mem[s + _357 + 32]
                    s = s + 32
                    continue 
                if ceil32(_696) <= _696:
                    _868 = mem[64]
                    mem[mem[64]] = _696 + _362 + _365 + _487 - mem[64]
                    mem[64] = _696 + _362 + _365 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _868
                    u = _345
                    continue 
                mem[_362 + _365 + _487 + _696 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _696 + _362 + _365 + _487 - mem[64]
                mem[64] = _696 + _362 + _365 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _345
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 64]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _481 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _346
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_481]:
                        revert with 0, 50
                    mem[v + _481 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _679 = mem[64]
                _683 = mem[t]
                s = 0
                while s < _683:
                    mem[s + _679 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_683) <= _683:
                    _859 = mem[_60]
                    s = 0
                    while s < _859:
                        mem[s + _679 + _683 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_859) <= _859:
                        _979 = mem[_481]
                        s = 0
                        while s < _979:
                            mem[s + _679 + _683 + _859 + 32] = mem[s + _481 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_979) <= _979:
                            _1059 = mem[64]
                            mem[mem[64]] = _979 + _679 + _683 + _859 - mem[64]
                            mem[64] = _979 + _679 + _683 + _859 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1059
                            u = _345
                            continue 
                        mem[_679 + _683 + _859 + _979 + 32] = 0
                        _1075 = mem[64]
                        mem[mem[64]] = _979 + _679 + _683 + _859 - mem[64]
                        mem[64] = _979 + _679 + _683 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1075
                        u = _345
                        continue 
                    mem[_679 + _683 + _859 + 32] = 0
                    _987 = mem[_481]
                    s = 0
                    while s < _987:
                        mem[s + _679 + _683 + _859 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1060 = mem[64]
                        mem[mem[64]] = _987 + _679 + _683 + _859 - mem[64]
                        mem[64] = _987 + _679 + _683 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1060
                        u = _345
                        continue 
                    mem[_679 + _683 + _859 + _987 + 32] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = _987 + _679 + _683 + _859 - mem[64]
                    mem[64] = _987 + _679 + _683 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1076
                    u = _345
                    continue 
                mem[_679 + _683 + 32] = 0
                _863 = mem[_60]
                s = 0
                while s < _863:
                    mem[s + _679 + _683 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_863) <= _863:
                    _980 = mem[_481]
                    s = 0
                    while s < _980:
                        mem[s + _679 + _683 + _863 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_980) <= _980:
                        _1061 = mem[64]
                        mem[mem[64]] = _980 + _679 + _683 + _863 - mem[64]
                        mem[64] = _980 + _679 + _683 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _345
                        continue 
                    mem[_679 + _683 + _863 + _980 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _980 + _679 + _683 + _863 - mem[64]
                    mem[64] = _980 + _679 + _683 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _345
                    continue 
                mem[_679 + _683 + _863 + 32] = 0
                _988 = mem[_481]
                s = 0
                while s < _988:
                    mem[s + _679 + _683 + _863 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1062 = mem[64]
                    mem[mem[64]] = _988 + _679 + _683 + _863 - mem[64]
                    mem[64] = _988 + _679 + _683 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _345
                    continue 
                mem[_679 + _683 + _863 + _988 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _988 + _679 + _683 + _863 - mem[64]
                mem[64] = _988 + _679 + _683 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _345
                continue 
            mem[_481 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _346
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_481]:
                    revert with 0, 50
                mem[v + _481 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _680 = mem[64]
            _684 = mem[t]
            s = 0
            while s < _684:
                mem[s + _680 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_684) <= _684:
                _860 = mem[_60]
                s = 0
                while s < _860:
                    mem[s + _680 + _684 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_860) <= _860:
                    _981 = mem[_481]
                    s = 0
                    while s < _981:
                        mem[s + _680 + _684 + _860 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1063 = mem[64]
                        mem[mem[64]] = _981 + _680 + _684 + _860 - mem[64]
                        mem[64] = _981 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1063
                        u = _345
                        continue 
                    mem[_680 + _684 + _860 + _981 + 32] = 0
                    _1079 = mem[64]
                    mem[mem[64]] = _981 + _680 + _684 + _860 - mem[64]
                    mem[64] = _981 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1079
                    u = _345
                    continue 
                mem[_680 + _684 + _860 + 32] = 0
                _989 = mem[_481]
                s = 0
                while s < _989:
                    mem[s + _680 + _684 + _860 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1064 = mem[64]
                    mem[mem[64]] = _989 + _680 + _684 + _860 - mem[64]
                    mem[64] = _989 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1064
                    u = _345
                    continue 
                mem[_680 + _684 + _860 + _989 + 32] = 0
                _1080 = mem[64]
                mem[mem[64]] = _989 + _680 + _684 + _860 - mem[64]
                mem[64] = _989 + _680 + _684 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1080
                u = _345
                continue 
            mem[_680 + _684 + 32] = 0
            _864 = mem[_60]
            s = 0
            while s < _864:
                mem[s + _680 + _684 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_864) <= _864:
                _982 = mem[_481]
                s = 0
                while s < _982:
                    mem[s + _680 + _684 + _864 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1065 = mem[64]
                    mem[mem[64]] = _982 + _680 + _684 + _864 - mem[64]
                    mem[64] = _982 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1065
                    u = _345
                    continue 
                mem[_680 + _684 + _864 + _982 + 32] = 0
                _1081 = mem[64]
                mem[mem[64]] = _982 + _680 + _684 + _864 - mem[64]
                mem[64] = _982 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1081
                u = _345
                continue 
            mem[_680 + _684 + _864 + 32] = 0
            _990 = mem[_481]
            s = 0
            while s < _990:
                mem[s + _680 + _684 + _864 + 32] = mem[s + _481 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1066 = mem[64]
                mem[mem[64]] = _990 + _680 + _684 + _864 - mem[64]
                mem[64] = _990 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1066
                u = _345
                continue 
            mem[_680 + _684 + _864 + _990 + 32] = 0
            _1082 = mem[64]
            mem[mem[64]] = _990 + _680 + _684 + _864 - mem[64]
            mem[64] = _990 + _680 + _684 + _864 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1082
            u = _345
            continue 
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) > _361:
            mem[mem[64] + _361 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _63
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    idx = 1
    t = _104
    u = _56
    while idx < sub_05b707ff[address(arg1)]:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 64]
        if not mem[mem[(32 * idx) + 128] + 64]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = '0'
            _364 = mem[64]
            _366 = mem[t]
            u = 0
            while u < _366:
                mem[u + _364 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_366) <= _366:
                _484 = mem[_60]
                t = 0
                while t < _484:
                    mem[t + _364 + _366 + 32] = mem[t + _60 + 32]
                    t = t + 32
                    continue 
                if ceil32(_484) <= _484:
                    _689 = mem[_358]
                    s = 0
                    while s < _689:
                        mem[s + _364 + _366 + _484 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_689) <= _689:
                        _871 = mem[64]
                        mem[mem[64]] = _689 + _364 + _366 + _484 - mem[64]
                        mem[64] = _689 + _364 + _366 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _347
                        continue 
                    mem[_364 + _366 + _484 + _689 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _689 + _364 + _366 + _484 - mem[64]
                    mem[64] = _689 + _364 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _887
                    u = _347
                    continue 
                mem[_364 + _366 + _484 + 32] = 0
                _697 = mem[_358]
                s = 0
                while s < _697:
                    mem[s + _364 + _366 + _484 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_697) <= _697:
                    _872 = mem[64]
                    mem[mem[64]] = _697 + _364 + _366 + _484 - mem[64]
                    mem[64] = _697 + _364 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _347
                    continue 
                mem[_364 + _366 + _484 + _697 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _697 + _364 + _366 + _484 - mem[64]
                mem[64] = _697 + _364 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _888
                u = _347
                continue 
            mem[_364 + _366 + 32] = 0
            _488 = mem[_60]
            s = 0
            while s < _488:
                mem[s + _364 + _366 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _690 = mem[_358]
                s = 0
                while s < _690:
                    mem[s + _364 + _366 + _488 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _873 = mem[64]
                    mem[mem[64]] = _690 + _364 + _366 + _488 - mem[64]
                    mem[64] = _690 + _364 + _366 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _873
                    u = _347
                    continue 
                mem[_364 + _366 + _488 + _690 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _690 + _364 + _366 + _488 - mem[64]
                mem[64] = _690 + _364 + _366 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _889
                u = _347
                continue 
            mem[_364 + _366 + _488 + 32] = 0
            _698 = mem[_358]
            s = 0
            while s < _698:
                mem[s + _364 + _366 + _488 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_698) <= _698:
                _874 = mem[64]
                mem[mem[64]] = _698 + _364 + _366 + _488 - mem[64]
                mem[64] = _698 + _364 + _366 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _874
                u = _347
                continue 
            mem[_364 + _366 + _488 + _698 + 32] = 0
            _890 = mem[64]
            mem[mem[64]] = _698 + _364 + _366 + _488 - mem[64]
            mem[64] = _698 + _364 + _366 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _890
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 64]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _482 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_482]:
                    revert with 0, 50
                mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _681 = mem[64]
            _687 = mem[t]
            s = 0
            while s < _687:
                mem[s + _681 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _861 = mem[_60]
                s = 0
                while s < _861:
                    mem[s + _681 + _687 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _983 = mem[_482]
                    s = 0
                    while s < _983:
                        mem[s + _681 + _687 + _861 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_983) <= _983:
                        _1067 = mem[64]
                        mem[mem[64]] = _983 + _681 + _687 + _861 - mem[64]
                        mem[64] = _983 + _681 + _687 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _347
                        continue 
                    mem[_681 + _687 + _861 + _983 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _983 + _681 + _687 + _861 - mem[64]
                    mem[64] = _983 + _681 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _347
                    continue 
                mem[_681 + _687 + _861 + 32] = 0
                _991 = mem[_482]
                s = 0
                while s < _991:
                    mem[s + _681 + _687 + _861 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_991) <= _991:
                    _1068 = mem[64]
                    mem[mem[64]] = _991 + _681 + _687 + _861 - mem[64]
                    mem[64] = _991 + _681 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _347
                    continue 
                mem[_681 + _687 + _861 + _991 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _991 + _681 + _687 + _861 - mem[64]
                mem[64] = _991 + _681 + _687 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _347
                continue 
            mem[_681 + _687 + 32] = 0
            _869 = mem[_60]
            s = 0
            while s < _869:
                mem[s + _681 + _687 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_869) <= _869:
                _984 = mem[_482]
                s = 0
                while s < _984:
                    mem[s + _681 + _687 + _869 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_984) <= _984:
                    _1069 = mem[64]
                    mem[mem[64]] = _984 + _681 + _687 + _869 - mem[64]
                    mem[64] = _984 + _681 + _687 + _869 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_681 + _687 + _869 + _984 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _984 + _681 + _687 + _869 - mem[64]
                mem[64] = _984 + _681 + _687 + _869 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_681 + _687 + _869 + 32] = 0
            _992 = mem[_482]
            s = 0
            while s < _992:
                mem[s + _681 + _687 + _869 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_992) <= _992:
                _1070 = mem[64]
                mem[mem[64]] = _992 + _681 + _687 + _869 - mem[64]
                mem[64] = _992 + _681 + _687 + _869 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_681 + _687 + _869 + _992 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _992 + _681 + _687 + _869 - mem[64]
            mem[64] = _992 + _681 + _687 + _869 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_482 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_482]:
                revert with 0, 50
            mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _682 = mem[64]
        _688 = mem[t]
        s = 0
        while s < _688:
            mem[s + _682 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_688) <= _688:
            _862 = mem[_60]
            s = 0
            while s < _862:
                mem[s + _682 + _688 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _985 = mem[_482]
                s = 0
                while s < _985:
                    mem[s + _682 + _688 + _862 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_985) <= _985:
                    _1071 = mem[64]
                    mem[mem[64]] = _985 + _682 + _688 + _862 - mem[64]
                    mem[64] = _985 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1071
                    u = _347
                    continue 
                mem[_682 + _688 + _862 + _985 + 32] = 0
                _1087 = mem[64]
                mem[mem[64]] = _985 + _682 + _688 + _862 - mem[64]
                mem[64] = _985 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1087
                u = _347
                continue 
            mem[_682 + _688 + _862 + 32] = 0
            _993 = mem[_482]
            s = 0
            while s < _993:
                mem[s + _682 + _688 + _862 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_993) <= _993:
                _1072 = mem[64]
                mem[mem[64]] = _993 + _682 + _688 + _862 - mem[64]
                mem[64] = _993 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1072
                u = _347
                continue 
            mem[_682 + _688 + _862 + _993 + 32] = 0
            _1088 = mem[64]
            mem[mem[64]] = _993 + _682 + _688 + _862 - mem[64]
            mem[64] = _993 + _682 + _688 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1088
            u = _347
            continue 
        mem[_682 + _688 + 32] = 0
        _870 = mem[_60]
        s = 0
        while s < _870:
            mem[s + _682 + _688 + 32] = mem[s + _60 + 32]
            s = s + 32
            continue 
        if ceil32(_870) <= _870:
            _986 = mem[_482]
            s = 0
            while s < _986:
                mem[s + _682 + _688 + _870 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_986) <= _986:
                _1073 = mem[64]
                mem[mem[64]] = _986 + _682 + _688 + _870 - mem[64]
                mem[64] = _986 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1073
                u = _347
                continue 
            mem[_682 + _688 + _870 + _986 + 32] = 0
            _1089 = mem[64]
            mem[mem[64]] = _986 + _682 + _688 + _870 - mem[64]
            mem[64] = _986 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1089
            u = _347
            continue 
        mem[_682 + _688 + _870 + 32] = 0
        _994 = mem[_482]
        s = 0
        while s < _994:
            mem[s + _682 + _688 + _870 + 32] = mem[s + _482 + 32]
            s = s + 32
            continue 
        if ceil32(_994) <= _994:
            _1074 = mem[64]
            mem[mem[64]] = _994 + _682 + _688 + _870 - mem[64]
            mem[64] = _994 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1074
            u = _347
            continue 
        mem[_682 + _688 + _870 + _994 + 32] = 0
        _1090 = mem[64]
        mem[mem[64]] = _994 + _682 + _688 + _870 - mem[64]
        mem[64] = _994 + _682 + _688 + _870 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1090
        u = _347
        continue 
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) > _363:
        mem[mem[64] + _363 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
}

function sub_1c084843(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: GET REWARD PER DAY ERROR'
    mem[0] = address(arg1)
    mem[32] = 3
    mem[64] = (32 * stor3[address(arg1)].field_0) + 128
    mem[96] = stor3[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 3)
        _58 = mem[64]
        mem[64] = mem[64] + 160
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor3[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_65] = uint255(stor3[address(arg1)][idx].field_0) * 0.5
            if stor3[address(arg1)][idx].field_0:
                if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                        mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                    else:
                        mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                        mem[_65 + 32] = stor3[address(arg1)][idx].field_0
                        t = _65 + 32
                        u = sha3(mem[0])
                        while _65 + (uint255(stor3[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u])
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
                revert with 0, 34
            if not stor3[address(arg1)][idx].field_1:
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_65 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_58] = _65
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_65 + 32] = stor3[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + stor3[address(arg1)][u].field_1 > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _65
            mem[_58 + 32] = stor3[address(arg1)][u].field_256
            mem[_58 + 64] = stor3[address(arg1)][u].field_512
            mem[_58 + 96] = stor3[address(arg1)][u].field_768
            mem[_58 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[address(arg1)][idx].field_1) + 32
        mem[_66] = stor3[address(arg1)][idx].field_1
        if stor3[address(arg1)][idx].field_0:
            if stor3[address(arg1)][idx].field_0 == uint255(stor3[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor3[address(arg1)][idx].field_0):
                mem[_58] = _66
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor3[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * stor3[address(arg1)][idx].field_8
                mem[_58] = _66
                mem[_58 + 32] = stor3[address(arg1)][idx].field_256
                mem[_58 + 64] = stor3[address(arg1)][idx].field_512
                mem[_58 + 96] = stor3[address(arg1)][idx].field_768
                mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
                mem[s] = _58
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
            mem[_66 + 32] = stor3[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(stor3[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = uint256(stor1[u])
                t = t + 32
                u = u + 1
                continue 
            mem[_58] = _66
            mem[_58 + 32] = stor3[address(arg1)][u].field_256
            mem[_58 + 64] = stor3[address(arg1)][u].field_512
            mem[_58 + 96] = stor3[address(arg1)][u].field_768
            mem[_58 + 128] = stor3[address(arg1)][u].field_1024
            mem[t] = _58
            t = t + 32
            u = u + 1
            continue 
        if stor3[address(arg1)][idx].field_0 == stor3[address(arg1)][idx].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)][idx].field_1:
            if 31 >= stor3[address(arg1)][idx].field_1:
                mem[_66 + 32] = 256 * stor3[address(arg1)][idx].field_8
            else:
                mem[0] = (5 * idx) + sha3(sha3(address(arg1), 3))
                mem[_66 + 32] = stor3[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor3[address(arg1)][idx].field_1 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_58] = _66
        mem[_58 + 32] = stor3[address(arg1)][idx].field_256
        mem[_58 + 64] = stor3[address(arg1)][idx].field_512
        mem[_58 + 96] = stor3[address(arg1)][idx].field_768
        mem[_58 + 128] = stor3[address(arg1)][idx].field_1024
        mem[s] = _58
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[64] = mem[64] + 160
    mem[_56] = 96
    mem[_56 + 32] = 0
    mem[_56 + 64] = 0
    mem[_56 + 96] = 0
    mem[_56 + 128] = 0
    mem[0] = address(arg1)
    mem[32] = 4
    _60 = mem[64]
    mem[64] = mem[64] + 64
    mem[_60] = 1
    mem[_60 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    if 0 >= mem[96]:
        revert with 0, 50
    _63 = mem[mem[128] + 128]
    if not mem[mem[128] + 128]:
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 1
        mem[_64 + 32] = '0'
        idx = 1
        s = _64
        t = _56
        while idx < sub_05b707ff[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            _105 = mem[(32 * idx) + 128]
            _106 = mem[mem[(32 * idx) + 128] + 128]
            if not mem[mem[(32 * idx) + 128] + 128]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = '0'
                _110 = mem[64]
                _111 = mem[s]
                t = 0
                while t < _111:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_111) <= _111:
                    _205 = mem[_60]
                    s = 0
                    while s < _205:
                        mem[s + _110 + _111 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_205) <= _205:
                        _355 = mem[_108]
                        s = 0
                        while s < _355:
                            mem[s + _110 + _111 + _205 + 32] = mem[s + _108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_355) <= _355:
                            _491 = mem[64]
                            mem[mem[64]] = _355 + _110 + _111 + _205 - mem[64]
                            mem[64] = _355 + _110 + _111 + _205 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _491
                            t = _105
                            continue 
                        mem[_110 + _111 + _205 + _355 + 32] = 0
                        _497 = mem[64]
                        mem[mem[64]] = _355 + _110 + _111 + _205 - mem[64]
                        mem[64] = _355 + _110 + _111 + _205 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _105
                        continue 
                    mem[_110 + _111 + _205 + 32] = 0
                    _359 = mem[_108]
                    s = 0
                    while s < _359:
                        mem[s + _110 + _111 + _205 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_359) <= _359:
                        _492 = mem[64]
                        mem[mem[64]] = _359 + _110 + _111 + _205 - mem[64]
                        mem[64] = _359 + _110 + _111 + _205 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _492
                        t = _105
                        continue 
                    mem[_110 + _111 + _205 + _359 + 32] = 0
                    _498 = mem[64]
                    mem[mem[64]] = _359 + _110 + _111 + _205 - mem[64]
                    mem[64] = _359 + _110 + _111 + _205 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _105
                    continue 
                mem[_110 + _111 + 32] = 0
                _208 = mem[_60]
                s = 0
                while s < _208:
                    mem[s + _110 + _111 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_208) <= _208:
                    _356 = mem[_108]
                    s = 0
                    while s < _356:
                        mem[s + _110 + _111 + _208 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_356) <= _356:
                        _493 = mem[64]
                        mem[mem[64]] = _356 + _110 + _111 + _208 - mem[64]
                        mem[64] = _356 + _110 + _111 + _208 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _493
                        t = _105
                        continue 
                    mem[_110 + _111 + _208 + _356 + 32] = 0
                    _499 = mem[64]
                    mem[mem[64]] = _356 + _110 + _111 + _208 - mem[64]
                    mem[64] = _356 + _110 + _111 + _208 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _499
                    t = _105
                    continue 
                mem[_110 + _111 + _208 + 32] = 0
                _360 = mem[_108]
                s = 0
                while s < _360:
                    mem[s + _110 + _111 + _208 + 32] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_360) <= _360:
                    _494 = mem[64]
                    mem[mem[64]] = _360 + _110 + _111 + _208 - mem[64]
                    mem[64] = _360 + _110 + _111 + _208 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _494
                    t = _105
                    continue 
                mem[_110 + _111 + _208 + _360 + 32] = 0
                _500 = mem[64]
                mem[mem[64]] = _360 + _110 + _111 + _208 - mem[64]
                mem[64] = _360 + _110 + _111 + _208 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _500
                t = _105
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 128]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _204 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _106
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_204]:
                        revert with 0, 50
                    mem[v + _204 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _353 = mem[s]
                t = 0
                while t < _353:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_353) <= _353:
                    _485 = mem[_60]
                    s = 0
                    while s < _485:
                        mem[s + _349 + _353 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _691 = mem[_204]
                        s = 0
                        while s < _691:
                            mem[s + _349 + _353 + _485 + 32] = mem[s + _204 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_691) <= _691:
                            _875 = mem[64]
                            mem[mem[64]] = _691 + _349 + _353 + _485 - mem[64]
                            mem[64] = _691 + _349 + _353 + _485 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _875
                            t = _105
                            continue 
                        mem[_349 + _353 + _485 + _691 + 32] = 0
                        _891 = mem[64]
                        mem[mem[64]] = _691 + _349 + _353 + _485 - mem[64]
                        mem[64] = _691 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _891
                        t = _105
                        continue 
                    mem[_349 + _353 + _485 + 32] = 0
                    _699 = mem[_204]
                    s = 0
                    while s < _699:
                        mem[s + _349 + _353 + _485 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _876 = mem[64]
                        mem[mem[64]] = _699 + _349 + _353 + _485 - mem[64]
                        mem[64] = _699 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _876
                        t = _105
                        continue 
                    mem[_349 + _353 + _485 + _699 + 32] = 0
                    _892 = mem[64]
                    mem[mem[64]] = _699 + _349 + _353 + _485 - mem[64]
                    mem[64] = _699 + _349 + _353 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _892
                    t = _105
                    continue 
                mem[_349 + _353 + 32] = 0
                _489 = mem[_60]
                s = 0
                while s < _489:
                    mem[s + _349 + _353 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_489) <= _489:
                    _692 = mem[_204]
                    s = 0
                    while s < _692:
                        mem[s + _349 + _353 + _489 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_692) <= _692:
                        _877 = mem[64]
                        mem[mem[64]] = _692 + _349 + _353 + _489 - mem[64]
                        mem[64] = _692 + _349 + _353 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _877
                        t = _105
                        continue 
                    mem[_349 + _353 + _489 + _692 + 32] = 0
                    _893 = mem[64]
                    mem[mem[64]] = _692 + _349 + _353 + _489 - mem[64]
                    mem[64] = _692 + _349 + _353 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _893
                    t = _105
                    continue 
                mem[_349 + _353 + _489 + 32] = 0
                _700 = mem[_204]
                s = 0
                while s < _700:
                    mem[s + _349 + _353 + _489 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _878 = mem[64]
                    mem[mem[64]] = _700 + _349 + _353 + _489 - mem[64]
                    mem[64] = _700 + _349 + _353 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _878
                    t = _105
                    continue 
                mem[_349 + _353 + _489 + _700 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _700 + _349 + _353 + _489 - mem[64]
                mem[64] = _700 + _349 + _353 + _489 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _894
                t = _105
                continue 
            mem[_204 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _106
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_204]:
                    revert with 0, 50
                mem[v + _204 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_354) <= _354:
                _486 = mem[_60]
                s = 0
                while s < _486:
                    mem[s + _350 + _354 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _693 = mem[_204]
                    s = 0
                    while s < _693:
                        mem[s + _350 + _354 + _486 + 32] = mem[s + _204 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _879 = mem[64]
                        mem[mem[64]] = _693 + _350 + _354 + _486 - mem[64]
                        mem[64] = _693 + _350 + _354 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _879
                        t = _105
                        continue 
                    mem[_350 + _354 + _486 + _693 + 32] = 0
                    _895 = mem[64]
                    mem[mem[64]] = _693 + _350 + _354 + _486 - mem[64]
                    mem[64] = _693 + _350 + _354 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _895
                    t = _105
                    continue 
                mem[_350 + _354 + _486 + 32] = 0
                _701 = mem[_204]
                s = 0
                while s < _701:
                    mem[s + _350 + _354 + _486 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _880 = mem[64]
                    mem[mem[64]] = _701 + _350 + _354 + _486 - mem[64]
                    mem[64] = _701 + _350 + _354 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _880
                    t = _105
                    continue 
                mem[_350 + _354 + _486 + _701 + 32] = 0
                _896 = mem[64]
                mem[mem[64]] = _701 + _350 + _354 + _486 - mem[64]
                mem[64] = _701 + _350 + _354 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _896
                t = _105
                continue 
            mem[_350 + _354 + 32] = 0
            _490 = mem[_60]
            s = 0
            while s < _490:
                mem[s + _350 + _354 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_490) <= _490:
                _694 = mem[_204]
                s = 0
                while s < _694:
                    mem[s + _350 + _354 + _490 + 32] = mem[s + _204 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _881 = mem[64]
                    mem[mem[64]] = _694 + _350 + _354 + _490 - mem[64]
                    mem[64] = _694 + _350 + _354 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _881
                    t = _105
                    continue 
                mem[_350 + _354 + _490 + _694 + 32] = 0
                _897 = mem[64]
                mem[mem[64]] = _694 + _350 + _354 + _490 - mem[64]
                mem[64] = _694 + _350 + _354 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _897
                t = _105
                continue 
            mem[_350 + _354 + _490 + 32] = 0
            _702 = mem[_204]
            s = 0
            while s < _702:
                mem[s + _350 + _354 + _490 + 32] = mem[s + _204 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _882 = mem[64]
                mem[mem[64]] = _702 + _350 + _354 + _490 - mem[64]
                mem[64] = _702 + _350 + _354 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _882
                t = _105
                continue 
            mem[_350 + _354 + _490 + _702 + 32] = 0
            _898 = mem[64]
            mem[mem[64]] = _702 + _350 + _354 + _490 - mem[64]
            mem[64] = _702 + _350 + _354 + _490 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _898
            t = _105
            continue 
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) > _109:
            mem[mem[64] + _109 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
    u = 0
    t = mem[mem[128] + 128]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _63
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        idx = 1
        t = _104
        u = _56
        while idx < sub_05b707ff[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            _345 = mem[(32 * idx) + 128]
            _346 = mem[mem[(32 * idx) + 128] + 128]
            if not mem[mem[(32 * idx) + 128] + 128]:
                _357 = mem[64]
                mem[64] = mem[64] + 64
                mem[_357] = 1
                mem[_357 + 32] = '0'
                _362 = mem[64]
                _365 = mem[t]
                u = 0
                while u < _365:
                    mem[u + _362 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_365) <= _365:
                    _483 = mem[_60]
                    t = 0
                    while t < _483:
                        mem[t + _362 + _365 + 32] = mem[t + _60 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_483) <= _483:
                        _685 = mem[_357]
                        s = 0
                        while s < _685:
                            mem[s + _362 + _365 + _483 + 32] = mem[s + _357 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_685) <= _685:
                            _865 = mem[64]
                            mem[mem[64]] = _685 + _362 + _365 + _483 - mem[64]
                            mem[64] = _685 + _362 + _365 + _483 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _865
                            u = _345
                            continue 
                        mem[_362 + _365 + _483 + _685 + 32] = 0
                        _883 = mem[64]
                        mem[mem[64]] = _685 + _362 + _365 + _483 - mem[64]
                        mem[64] = _685 + _362 + _365 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _883
                        u = _345
                        continue 
                    mem[_362 + _365 + _483 + 32] = 0
                    _695 = mem[_357]
                    s = 0
                    while s < _695:
                        mem[s + _362 + _365 + _483 + 32] = mem[s + _357 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_695) <= _695:
                        _866 = mem[64]
                        mem[mem[64]] = _695 + _362 + _365 + _483 - mem[64]
                        mem[64] = _695 + _362 + _365 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _866
                        u = _345
                        continue 
                    mem[_362 + _365 + _483 + _695 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _695 + _362 + _365 + _483 - mem[64]
                    mem[64] = _695 + _362 + _365 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _884
                    u = _345
                    continue 
                mem[_362 + _365 + 32] = 0
                _487 = mem[_60]
                s = 0
                while s < _487:
                    mem[s + _362 + _365 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _686 = mem[_357]
                    s = 0
                    while s < _686:
                        mem[s + _362 + _365 + _487 + 32] = mem[s + _357 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_686) <= _686:
                        _867 = mem[64]
                        mem[mem[64]] = _686 + _362 + _365 + _487 - mem[64]
                        mem[64] = _686 + _362 + _365 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _345
                        continue 
                    mem[_362 + _365 + _487 + _686 + 32] = 0
                    _885 = mem[64]
                    mem[mem[64]] = _686 + _362 + _365 + _487 - mem[64]
                    mem[64] = _686 + _362 + _365 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _885
                    u = _345
                    continue 
                mem[_362 + _365 + _487 + 32] = 0
                _696 = mem[_357]
                s = 0
                while s < _696:
                    mem[s + _362 + _365 + _487 + 32] = mem[s + _357 + 32]
                    s = s + 32
                    continue 
                if ceil32(_696) <= _696:
                    _868 = mem[64]
                    mem[mem[64]] = _696 + _362 + _365 + _487 - mem[64]
                    mem[64] = _696 + _362 + _365 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _868
                    u = _345
                    continue 
                mem[_362 + _365 + _487 + _696 + 32] = 0
                _886 = mem[64]
                mem[mem[64]] = _696 + _362 + _365 + _487 - mem[64]
                mem[64] = _696 + _362 + _365 + _487 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _886
                u = _345
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 128]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _481 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _346
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_481]:
                        revert with 0, 50
                    mem[v + _481 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _679 = mem[64]
                _683 = mem[t]
                s = 0
                while s < _683:
                    mem[s + _679 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_683) <= _683:
                    _859 = mem[_60]
                    s = 0
                    while s < _859:
                        mem[s + _679 + _683 + 32] = mem[s + _60 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_859) <= _859:
                        _979 = mem[_481]
                        s = 0
                        while s < _979:
                            mem[s + _679 + _683 + _859 + 32] = mem[s + _481 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_979) <= _979:
                            _1059 = mem[64]
                            mem[mem[64]] = _979 + _679 + _683 + _859 - mem[64]
                            mem[64] = _979 + _679 + _683 + _859 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1059
                            u = _345
                            continue 
                        mem[_679 + _683 + _859 + _979 + 32] = 0
                        _1075 = mem[64]
                        mem[mem[64]] = _979 + _679 + _683 + _859 - mem[64]
                        mem[64] = _979 + _679 + _683 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1075
                        u = _345
                        continue 
                    mem[_679 + _683 + _859 + 32] = 0
                    _987 = mem[_481]
                    s = 0
                    while s < _987:
                        mem[s + _679 + _683 + _859 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1060 = mem[64]
                        mem[mem[64]] = _987 + _679 + _683 + _859 - mem[64]
                        mem[64] = _987 + _679 + _683 + _859 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1060
                        u = _345
                        continue 
                    mem[_679 + _683 + _859 + _987 + 32] = 0
                    _1076 = mem[64]
                    mem[mem[64]] = _987 + _679 + _683 + _859 - mem[64]
                    mem[64] = _987 + _679 + _683 + _859 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1076
                    u = _345
                    continue 
                mem[_679 + _683 + 32] = 0
                _863 = mem[_60]
                s = 0
                while s < _863:
                    mem[s + _679 + _683 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_863) <= _863:
                    _980 = mem[_481]
                    s = 0
                    while s < _980:
                        mem[s + _679 + _683 + _863 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_980) <= _980:
                        _1061 = mem[64]
                        mem[mem[64]] = _980 + _679 + _683 + _863 - mem[64]
                        mem[64] = _980 + _679 + _683 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _345
                        continue 
                    mem[_679 + _683 + _863 + _980 + 32] = 0
                    _1077 = mem[64]
                    mem[mem[64]] = _980 + _679 + _683 + _863 - mem[64]
                    mem[64] = _980 + _679 + _683 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _345
                    continue 
                mem[_679 + _683 + _863 + 32] = 0
                _988 = mem[_481]
                s = 0
                while s < _988:
                    mem[s + _679 + _683 + _863 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1062 = mem[64]
                    mem[mem[64]] = _988 + _679 + _683 + _863 - mem[64]
                    mem[64] = _988 + _679 + _683 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _345
                    continue 
                mem[_679 + _683 + _863 + _988 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _988 + _679 + _683 + _863 - mem[64]
                mem[64] = _988 + _679 + _683 + _863 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _345
                continue 
            mem[_481 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _346
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_481]:
                    revert with 0, 50
                mem[v + _481 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _680 = mem[64]
            _684 = mem[t]
            s = 0
            while s < _684:
                mem[s + _680 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_684) <= _684:
                _860 = mem[_60]
                s = 0
                while s < _860:
                    mem[s + _680 + _684 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_860) <= _860:
                    _981 = mem[_481]
                    s = 0
                    while s < _981:
                        mem[s + _680 + _684 + _860 + 32] = mem[s + _481 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1063 = mem[64]
                        mem[mem[64]] = _981 + _680 + _684 + _860 - mem[64]
                        mem[64] = _981 + _680 + _684 + _860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1063
                        u = _345
                        continue 
                    mem[_680 + _684 + _860 + _981 + 32] = 0
                    _1079 = mem[64]
                    mem[mem[64]] = _981 + _680 + _684 + _860 - mem[64]
                    mem[64] = _981 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1079
                    u = _345
                    continue 
                mem[_680 + _684 + _860 + 32] = 0
                _989 = mem[_481]
                s = 0
                while s < _989:
                    mem[s + _680 + _684 + _860 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1064 = mem[64]
                    mem[mem[64]] = _989 + _680 + _684 + _860 - mem[64]
                    mem[64] = _989 + _680 + _684 + _860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1064
                    u = _345
                    continue 
                mem[_680 + _684 + _860 + _989 + 32] = 0
                _1080 = mem[64]
                mem[mem[64]] = _989 + _680 + _684 + _860 - mem[64]
                mem[64] = _989 + _680 + _684 + _860 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1080
                u = _345
                continue 
            mem[_680 + _684 + 32] = 0
            _864 = mem[_60]
            s = 0
            while s < _864:
                mem[s + _680 + _684 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_864) <= _864:
                _982 = mem[_481]
                s = 0
                while s < _982:
                    mem[s + _680 + _684 + _864 + 32] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1065 = mem[64]
                    mem[mem[64]] = _982 + _680 + _684 + _864 - mem[64]
                    mem[64] = _982 + _680 + _684 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1065
                    u = _345
                    continue 
                mem[_680 + _684 + _864 + _982 + 32] = 0
                _1081 = mem[64]
                mem[mem[64]] = _982 + _680 + _684 + _864 - mem[64]
                mem[64] = _982 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1081
                u = _345
                continue 
            mem[_680 + _684 + _864 + 32] = 0
            _990 = mem[_481]
            s = 0
            while s < _990:
                mem[s + _680 + _684 + _864 + 32] = mem[s + _481 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1066 = mem[64]
                mem[mem[64]] = _990 + _680 + _684 + _864 - mem[64]
                mem[64] = _990 + _680 + _684 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1066
                u = _345
                continue 
            mem[_680 + _684 + _864 + _990 + 32] = 0
            _1082 = mem[64]
            mem[mem[64]] = _990 + _680 + _684 + _864 - mem[64]
            mem[64] = _990 + _680 + _684 + _864 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1082
            u = _345
            continue 
        mem[mem[64]] = 32
        _361 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_361)] = mem[t + 32 len ceil32(_361)]
        if ceil32(_361) > _361:
            mem[mem[64] + _361 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_361) + 32]
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _63
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    idx = 1
    t = _104
    u = _56
    while idx < sub_05b707ff[address(arg1)]:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 128]
        if not mem[mem[(32 * idx) + 128] + 128]:
            _358 = mem[64]
            mem[64] = mem[64] + 64
            mem[_358] = 1
            mem[_358 + 32] = '0'
            _364 = mem[64]
            _366 = mem[t]
            u = 0
            while u < _366:
                mem[u + _364 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_366) <= _366:
                _484 = mem[_60]
                t = 0
                while t < _484:
                    mem[t + _364 + _366 + 32] = mem[t + _60 + 32]
                    t = t + 32
                    continue 
                if ceil32(_484) <= _484:
                    _689 = mem[_358]
                    s = 0
                    while s < _689:
                        mem[s + _364 + _366 + _484 + 32] = mem[s + _358 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_689) <= _689:
                        _871 = mem[64]
                        mem[mem[64]] = _689 + _364 + _366 + _484 - mem[64]
                        mem[64] = _689 + _364 + _366 + _484 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _347
                        continue 
                    mem[_364 + _366 + _484 + _689 + 32] = 0
                    _887 = mem[64]
                    mem[mem[64]] = _689 + _364 + _366 + _484 - mem[64]
                    mem[64] = _689 + _364 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _887
                    u = _347
                    continue 
                mem[_364 + _366 + _484 + 32] = 0
                _697 = mem[_358]
                s = 0
                while s < _697:
                    mem[s + _364 + _366 + _484 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_697) <= _697:
                    _872 = mem[64]
                    mem[mem[64]] = _697 + _364 + _366 + _484 - mem[64]
                    mem[64] = _697 + _364 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _347
                    continue 
                mem[_364 + _366 + _484 + _697 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _697 + _364 + _366 + _484 - mem[64]
                mem[64] = _697 + _364 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _888
                u = _347
                continue 
            mem[_364 + _366 + 32] = 0
            _488 = mem[_60]
            s = 0
            while s < _488:
                mem[s + _364 + _366 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _690 = mem[_358]
                s = 0
                while s < _690:
                    mem[s + _364 + _366 + _488 + 32] = mem[s + _358 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _873 = mem[64]
                    mem[mem[64]] = _690 + _364 + _366 + _488 - mem[64]
                    mem[64] = _690 + _364 + _366 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _873
                    u = _347
                    continue 
                mem[_364 + _366 + _488 + _690 + 32] = 0
                _889 = mem[64]
                mem[mem[64]] = _690 + _364 + _366 + _488 - mem[64]
                mem[64] = _690 + _364 + _366 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _889
                u = _347
                continue 
            mem[_364 + _366 + _488 + 32] = 0
            _698 = mem[_358]
            s = 0
            while s < _698:
                mem[s + _364 + _366 + _488 + 32] = mem[s + _358 + 32]
                s = s + 32
                continue 
            if ceil32(_698) <= _698:
                _874 = mem[64]
                mem[mem[64]] = _698 + _364 + _366 + _488 - mem[64]
                mem[64] = _698 + _364 + _366 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _874
                u = _347
                continue 
            mem[_364 + _366 + _488 + _698 + 32] = 0
            _890 = mem[64]
            mem[mem[64]] = _698 + _364 + _366 + _488 - mem[64]
            mem[64] = _698 + _364 + _366 + _488 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _890
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 128]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _482 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_482]:
                    revert with 0, 50
                mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _681 = mem[64]
            _687 = mem[t]
            s = 0
            while s < _687:
                mem[s + _681 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _861 = mem[_60]
                s = 0
                while s < _861:
                    mem[s + _681 + _687 + 32] = mem[s + _60 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _983 = mem[_482]
                    s = 0
                    while s < _983:
                        mem[s + _681 + _687 + _861 + 32] = mem[s + _482 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_983) <= _983:
                        _1067 = mem[64]
                        mem[mem[64]] = _983 + _681 + _687 + _861 - mem[64]
                        mem[64] = _983 + _681 + _687 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _347
                        continue 
                    mem[_681 + _687 + _861 + _983 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _983 + _681 + _687 + _861 - mem[64]
                    mem[64] = _983 + _681 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _347
                    continue 
                mem[_681 + _687 + _861 + 32] = 0
                _991 = mem[_482]
                s = 0
                while s < _991:
                    mem[s + _681 + _687 + _861 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_991) <= _991:
                    _1068 = mem[64]
                    mem[mem[64]] = _991 + _681 + _687 + _861 - mem[64]
                    mem[64] = _991 + _681 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _347
                    continue 
                mem[_681 + _687 + _861 + _991 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _991 + _681 + _687 + _861 - mem[64]
                mem[64] = _991 + _681 + _687 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _347
                continue 
            mem[_681 + _687 + 32] = 0
            _869 = mem[_60]
            s = 0
            while s < _869:
                mem[s + _681 + _687 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_869) <= _869:
                _984 = mem[_482]
                s = 0
                while s < _984:
                    mem[s + _681 + _687 + _869 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_984) <= _984:
                    _1069 = mem[64]
                    mem[mem[64]] = _984 + _681 + _687 + _869 - mem[64]
                    mem[64] = _984 + _681 + _687 + _869 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _347
                    continue 
                mem[_681 + _687 + _869 + _984 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _984 + _681 + _687 + _869 - mem[64]
                mem[64] = _984 + _681 + _687 + _869 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _347
                continue 
            mem[_681 + _687 + _869 + 32] = 0
            _992 = mem[_482]
            s = 0
            while s < _992:
                mem[s + _681 + _687 + _869 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_992) <= _992:
                _1070 = mem[64]
                mem[mem[64]] = _992 + _681 + _687 + _869 - mem[64]
                mem[64] = _992 + _681 + _687 + _869 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _347
                continue 
            mem[_681 + _687 + _869 + _992 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _992 + _681 + _687 + _869 - mem[64]
            mem[64] = _992 + _681 + _687 + _869 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _347
            continue 
        mem[_482 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_482]:
                revert with 0, 50
            mem[v + _482 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _682 = mem[64]
        _688 = mem[t]
        s = 0
        while s < _688:
            mem[s + _682 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_688) <= _688:
            _862 = mem[_60]
            s = 0
            while s < _862:
                mem[s + _682 + _688 + 32] = mem[s + _60 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _985 = mem[_482]
                s = 0
                while s < _985:
                    mem[s + _682 + _688 + _862 + 32] = mem[s + _482 + 32]
                    s = s + 32
                    continue 
                if ceil32(_985) <= _985:
                    _1071 = mem[64]
                    mem[mem[64]] = _985 + _682 + _688 + _862 - mem[64]
                    mem[64] = _985 + _682 + _688 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1071
                    u = _347
                    continue 
                mem[_682 + _688 + _862 + _985 + 32] = 0
                _1087 = mem[64]
                mem[mem[64]] = _985 + _682 + _688 + _862 - mem[64]
                mem[64] = _985 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1087
                u = _347
                continue 
            mem[_682 + _688 + _862 + 32] = 0
            _993 = mem[_482]
            s = 0
            while s < _993:
                mem[s + _682 + _688 + _862 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_993) <= _993:
                _1072 = mem[64]
                mem[mem[64]] = _993 + _682 + _688 + _862 - mem[64]
                mem[64] = _993 + _682 + _688 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1072
                u = _347
                continue 
            mem[_682 + _688 + _862 + _993 + 32] = 0
            _1088 = mem[64]
            mem[mem[64]] = _993 + _682 + _688 + _862 - mem[64]
            mem[64] = _993 + _682 + _688 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1088
            u = _347
            continue 
        mem[_682 + _688 + 32] = 0
        _870 = mem[_60]
        s = 0
        while s < _870:
            mem[s + _682 + _688 + 32] = mem[s + _60 + 32]
            s = s + 32
            continue 
        if ceil32(_870) <= _870:
            _986 = mem[_482]
            s = 0
            while s < _986:
                mem[s + _682 + _688 + _870 + 32] = mem[s + _482 + 32]
                s = s + 32
                continue 
            if ceil32(_986) <= _986:
                _1073 = mem[64]
                mem[mem[64]] = _986 + _682 + _688 + _870 - mem[64]
                mem[64] = _986 + _682 + _688 + _870 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1073
                u = _347
                continue 
            mem[_682 + _688 + _870 + _986 + 32] = 0
            _1089 = mem[64]
            mem[mem[64]] = _986 + _682 + _688 + _870 - mem[64]
            mem[64] = _986 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1089
            u = _347
            continue 
        mem[_682 + _688 + _870 + 32] = 0
        _994 = mem[_482]
        s = 0
        while s < _994:
            mem[s + _682 + _688 + _870 + 32] = mem[s + _482 + 32]
            s = s + 32
            continue 
        if ceil32(_994) <= _994:
            _1074 = mem[64]
            mem[mem[64]] = _994 + _682 + _688 + _870 - mem[64]
            mem[64] = _994 + _682 + _688 + _870 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1074
            u = _347
            continue 
        mem[_682 + _688 + _870 + _994 + 32] = 0
        _1090 = mem[64]
        mem[mem[64]] = _994 + _682 + _688 + _870 - mem[64]
        mem[64] = _994 + _682 + _688 + _870 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1090
        u = _347
        continue 
    mem[mem[64]] = 32
    _363 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_363)] = mem[t + 32 len ceil32(_363)]
    if ceil32(_363) > _363:
        mem[mem[64] + _363 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_363) + 32]
}

function sub_5e9ce5a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(uint8(stor1[msg.sender])) != 1:
        revert with 0, 'MANAGEMENT: NOT MANAGER'
    if not sub_05b707ff[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANAGEMENT: GET AVAILABLE REWARD ERROR'
    mem[96] = 1
    mem[128] = 0x2300000000000000000000000000000000000000000000000000000000000000
    if 0 > sub_05b707ff[address(arg1)]:
        revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
    mem[0] = address(arg1)
    mem[32] = 4
    if not sub_05b707ff[address(arg1)]:
        mem[64] = 224
        mem[160] = 1
        mem[192] = '0'
        idx = 1
        s = 160
        while idx < sub_05b707ff[address(arg1)]:
            if idx > sub_05b707ff[address(arg1)]:
                revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
            mem[0] = address(arg1)
            mem[32] = 4
            if not sub_05b707ff[address(arg1)]:
                _400 = mem[64]
                mem[64] = mem[64] + 64
                mem[_400] = 1
                mem[_400 + 32] = '0'
                _414 = mem[64]
                _428 = mem[s]
                t = 0
                while t < _428:
                    mem[t + _414 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_428) <= _428:
                    _1110 = mem[96]
                    s = 0
                    while s < _1110:
                        mem[s + _414 + _428 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1110) <= _1110:
                        _2060 = mem[_400]
                        s = 0
                        while s < _2060:
                            mem[s + _414 + _428 + _1110 + 32] = mem[s + _400 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2060) <= _2060:
                            _2988 = mem[64]
                            mem[mem[64]] = _2060 + _414 + _428 + _1110 - mem[64]
                            mem[64] = _2060 + _414 + _428 + _1110 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _2988
                            continue 
                        mem[_414 + _428 + _1110 + _2060 + 32] = 0
                        _3048 = mem[64]
                        mem[mem[64]] = _2060 + _414 + _428 + _1110 - mem[64]
                        mem[64] = _2060 + _414 + _428 + _1110 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3048
                        continue 
                    mem[_414 + _428 + _1110 + 32] = 0
                    _2094 = mem[_400]
                    s = 0
                    while s < _2094:
                        mem[s + _414 + _428 + _1110 + 32] = mem[s + _400 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2094) <= _2094:
                        _2989 = mem[64]
                        mem[mem[64]] = _2094 + _414 + _428 + _1110 - mem[64]
                        mem[64] = _2094 + _414 + _428 + _1110 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2989
                        continue 
                    mem[_414 + _428 + _1110 + _2094 + 32] = 0
                    _3049 = mem[64]
                    mem[mem[64]] = _2094 + _414 + _428 + _1110 - mem[64]
                    mem[64] = _2094 + _414 + _428 + _1110 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3049
                    continue 
                mem[_414 + _428 + 32] = 0
                _1119 = mem[96]
                s = 0
                while s < _1119:
                    mem[s + _414 + _428 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_1119) <= _1119:
                    _2061 = mem[_400]
                    s = 0
                    while s < _2061:
                        mem[s + _414 + _428 + _1119 + 32] = mem[s + _400 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2061) <= _2061:
                        _2990 = mem[64]
                        mem[mem[64]] = _2061 + _414 + _428 + _1119 - mem[64]
                        mem[64] = _2061 + _414 + _428 + _1119 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2990
                        continue 
                    mem[_414 + _428 + _1119 + _2061 + 32] = 0
                    _3050 = mem[64]
                    mem[mem[64]] = _2061 + _414 + _428 + _1119 - mem[64]
                    mem[64] = _2061 + _414 + _428 + _1119 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3050
                    continue 
                mem[_414 + _428 + _1119 + 32] = 0
                _2095 = mem[_400]
                s = 0
                while s < _2095:
                    mem[s + _414 + _428 + _1119 + 32] = mem[s + _400 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2095) <= _2095:
                    _2991 = mem[64]
                    mem[mem[64]] = _2095 + _414 + _428 + _1119 - mem[64]
                    mem[64] = _2095 + _414 + _428 + _1119 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2991
                    continue 
                mem[_414 + _428 + _1119 + _2095 + 32] = 0
                _3051 = mem[64]
                mem[mem[64]] = _2095 + _414 + _428 + _1119 - mem[64]
                mem[64] = _2095 + _414 + _428 + _1119 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3051
                continue 
            if idx >= stor3[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 3)
            if block.timestamp < stor3[address(arg1)][idx].field_256:
                revert with 0, 17
            _415 = mem[64]
            mem[64] = mem[64] + 64
            mem[_415] = 26
            mem[_415 + 32] = 'SafeMath: division by zero'
            if not sub_94471c42:
                _431 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _431 + 68] = mem[idx + _415 + 32]
                    idx = idx + 32
                    continue 
                mem[_431 + 94] = 0
                revert with memory
                  from mem[64]
                   len _431 + -mem[64] + 100
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                _507 = mem[64]
                mem[64] = mem[64] + 64
                mem[_507] = 30
                mem[_507 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(arg1)][idx].field_768 > 0:
                    _527 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _527 + 68] = mem[idx + _507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_527 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _527 + -mem[64] + 100
                if 0 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not -stor3[address(arg1)][idx].field_768:
                    _634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_634] = 1
                    mem[_634 + 32] = '0'
                    _647 = mem[64]
                    _663 = mem[s]
                    t = 0
                    while t < _663:
                        mem[t + _647 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_663) <= _663:
                        _1112 = mem[96]
                        s = 0
                        while s < _1112:
                            mem[s + _647 + _663 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_1112) <= _1112:
                            _2068 = mem[_634]
                            s = 0
                            while s < _2068:
                                mem[s + _647 + _663 + _1112 + 32] = mem[s + _634 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2068) <= _2068:
                                _3000 = mem[64]
                                mem[mem[64]] = _2068 + _647 + _663 + _1112 - mem[64]
                                mem[64] = _2068 + _647 + _663 + _1112 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _3000
                                continue 
                            mem[_647 + _663 + _1112 + _2068 + 32] = 0
                            _3056 = mem[64]
                            mem[mem[64]] = _2068 + _647 + _663 + _1112 - mem[64]
                            mem[64] = _2068 + _647 + _663 + _1112 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3056
                            continue 
                        mem[_647 + _663 + _1112 + 32] = 0
                        _2098 = mem[_634]
                        s = 0
                        while s < _2098:
                            mem[s + _647 + _663 + _1112 + 32] = mem[s + _634 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2098) <= _2098:
                            _3001 = mem[64]
                            mem[mem[64]] = _2098 + _647 + _663 + _1112 - mem[64]
                            mem[64] = _2098 + _647 + _663 + _1112 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3001
                            continue 
                        mem[_647 + _663 + _1112 + _2098 + 32] = 0
                        _3057 = mem[64]
                        mem[mem[64]] = _2098 + _647 + _663 + _1112 - mem[64]
                        mem[64] = _2098 + _647 + _663 + _1112 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3057
                        continue 
                    mem[_647 + _663 + 32] = 0
                    _1121 = mem[96]
                    s = 0
                    while s < _1121:
                        mem[s + _647 + _663 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1121) <= _1121:
                        _2069 = mem[_634]
                        s = 0
                        while s < _2069:
                            mem[s + _647 + _663 + _1121 + 32] = mem[s + _634 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2069) <= _2069:
                            _3002 = mem[64]
                            mem[mem[64]] = _2069 + _647 + _663 + _1121 - mem[64]
                            mem[64] = _2069 + _647 + _663 + _1121 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3002
                            continue 
                        mem[_647 + _663 + _1121 + _2069 + 32] = 0
                        _3058 = mem[64]
                        mem[mem[64]] = _2069 + _647 + _663 + _1121 - mem[64]
                        mem[64] = _2069 + _647 + _663 + _1121 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3058
                        continue 
                    mem[_647 + _663 + _1121 + 32] = 0
                    _2099 = mem[_634]
                    s = 0
                    while s < _2099:
                        mem[s + _647 + _663 + _1121 + 32] = mem[s + _634 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2099) <= _2099:
                        _3003 = mem[64]
                        mem[mem[64]] = _2099 + _647 + _663 + _1121 - mem[64]
                        mem[64] = _2099 + _647 + _663 + _1121 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3003
                        continue 
                    mem[_647 + _663 + _1121 + _2099 + 32] = 0
                    _3059 = mem[64]
                    mem[mem[64]] = _2099 + _647 + _663 + _1121 - mem[64]
                    mem[64] = _2099 + _647 + _663 + _1121 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3059
                    continue 
                u = 0
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _1105 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1105]:
                            revert with 0, 50
                        mem[v + _1105 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _2038 = mem[64]
                    _2066 = mem[s]
                    t = 0
                    while t < _2066:
                        mem[t + _2038 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2066) <= _2066:
                        _2966 = mem[96]
                        s = 0
                        while s < _2966:
                            mem[s + _2038 + _2066 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2966) <= _2966:
                            _4000 = mem[_1105]
                            s = 0
                            while s < _4000:
                                mem[s + _2038 + _2066 + _2966 + 32] = mem[s + _1105 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4000) <= _4000:
                                _4884 = mem[64]
                                mem[mem[64]] = _4000 + _2038 + _2066 + _2966 - mem[64]
                                mem[64] = _4000 + _2038 + _2066 + _2966 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4884
                                continue 
                            mem[_2038 + _2066 + _2966 + _4000 + 32] = 0
                            _4996 = mem[64]
                            mem[mem[64]] = _4000 + _2038 + _2066 + _2966 - mem[64]
                            mem[64] = _4000 + _2038 + _2066 + _2966 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4996
                            continue 
                        mem[_2038 + _2066 + _2966 + 32] = 0
                        _4064 = mem[_1105]
                        s = 0
                        while s < _4064:
                            mem[s + _2038 + _2066 + _2966 + 32] = mem[s + _1105 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4064) <= _4064:
                            _4885 = mem[64]
                            mem[mem[64]] = _4064 + _2038 + _2066 + _2966 - mem[64]
                            mem[64] = _4064 + _2038 + _2066 + _2966 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4885
                            continue 
                        mem[_2038 + _2066 + _2966 + _4064 + 32] = 0
                        _4997 = mem[64]
                        mem[mem[64]] = _4064 + _2038 + _2066 + _2966 - mem[64]
                        mem[64] = _4064 + _2038 + _2066 + _2966 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4997
                        continue 
                    mem[_2038 + _2066 + 32] = 0
                    _2998 = mem[96]
                    s = 0
                    while s < _2998:
                        mem[s + _2038 + _2066 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2998) <= _2998:
                        _4001 = mem[_1105]
                        s = 0
                        while s < _4001:
                            mem[s + _2038 + _2066 + _2998 + 32] = mem[s + _1105 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4001) <= _4001:
                            _4886 = mem[64]
                            mem[mem[64]] = _4001 + _2038 + _2066 + _2998 - mem[64]
                            mem[64] = _4001 + _2038 + _2066 + _2998 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4886
                            continue 
                        mem[_2038 + _2066 + _2998 + _4001 + 32] = 0
                        _4998 = mem[64]
                        mem[mem[64]] = _4001 + _2038 + _2066 + _2998 - mem[64]
                        mem[64] = _4001 + _2038 + _2066 + _2998 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4998
                        continue 
                    mem[_2038 + _2066 + _2998 + 32] = 0
                    _4065 = mem[_1105]
                    s = 0
                    while s < _4065:
                        mem[s + _2038 + _2066 + _2998 + 32] = mem[s + _1105 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4065) <= _4065:
                        _4887 = mem[64]
                        mem[mem[64]] = _4065 + _2038 + _2066 + _2998 - mem[64]
                        mem[64] = _4065 + _2038 + _2066 + _2998 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4887
                        continue 
                    mem[_2038 + _2066 + _2998 + _4065 + 32] = 0
                    _4999 = mem[64]
                    mem[mem[64]] = _4065 + _2038 + _2066 + _2998 - mem[64]
                    mem[64] = _4065 + _2038 + _2066 + _2998 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4999
                    continue 
                mem[_1105 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1105]:
                        revert with 0, 50
                    mem[v + _1105 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _2039 = mem[64]
                _2067 = mem[s]
                t = 0
                while t < _2067:
                    mem[t + _2039 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2067) <= _2067:
                    _2967 = mem[96]
                    s = 0
                    while s < _2967:
                        mem[s + _2039 + _2067 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2967) <= _2967:
                        _4002 = mem[_1105]
                        s = 0
                        while s < _4002:
                            mem[s + _2039 + _2067 + _2967 + 32] = mem[s + _1105 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4002) <= _4002:
                            _4888 = mem[64]
                            mem[mem[64]] = _4002 + _2039 + _2067 + _2967 - mem[64]
                            mem[64] = _4002 + _2039 + _2067 + _2967 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4888
                            continue 
                        mem[_2039 + _2067 + _2967 + _4002 + 32] = 0
                        _5000 = mem[64]
                        mem[mem[64]] = _4002 + _2039 + _2067 + _2967 - mem[64]
                        mem[64] = _4002 + _2039 + _2067 + _2967 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5000
                        continue 
                    mem[_2039 + _2067 + _2967 + 32] = 0
                    _4066 = mem[_1105]
                    s = 0
                    while s < _4066:
                        mem[s + _2039 + _2067 + _2967 + 32] = mem[s + _1105 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4066) <= _4066:
                        _4889 = mem[64]
                        mem[mem[64]] = _4066 + _2039 + _2067 + _2967 - mem[64]
                        mem[64] = _4066 + _2039 + _2067 + _2967 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4889
                        continue 
                    mem[_2039 + _2067 + _2967 + _4066 + 32] = 0
                    _5001 = mem[64]
                    mem[mem[64]] = _4066 + _2039 + _2067 + _2967 - mem[64]
                    mem[64] = _4066 + _2039 + _2067 + _2967 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5001
                    continue 
                mem[_2039 + _2067 + 32] = 0
                _2999 = mem[96]
                s = 0
                while s < _2999:
                    mem[s + _2039 + _2067 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_2999) <= _2999:
                    _4003 = mem[_1105]
                    s = 0
                    while s < _4003:
                        mem[s + _2039 + _2067 + _2999 + 32] = mem[s + _1105 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4003) <= _4003:
                        _4890 = mem[64]
                        mem[mem[64]] = _4003 + _2039 + _2067 + _2999 - mem[64]
                        mem[64] = _4003 + _2039 + _2067 + _2999 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4890
                        continue 
                    mem[_2039 + _2067 + _2999 + _4003 + 32] = 0
                    _5002 = mem[64]
                    mem[mem[64]] = _4003 + _2039 + _2067 + _2999 - mem[64]
                    mem[64] = _4003 + _2039 + _2067 + _2999 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5002
                    continue 
                mem[_2039 + _2067 + _2999 + 32] = 0
                _4067 = mem[_1105]
                s = 0
                while s < _4067:
                    mem[s + _2039 + _2067 + _2999 + 32] = mem[s + _1105 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4067) <= _4067:
                    _4891 = mem[64]
                    mem[mem[64]] = _4067 + _2039 + _2067 + _2999 - mem[64]
                    mem[64] = _4067 + _2039 + _2067 + _2999 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4891
                    continue 
                mem[_2039 + _2067 + _2999 + _4067 + 32] = 0
                _5003 = mem[64]
                mem[mem[64]] = _4067 + _2039 + _2067 + _2999 - mem[64]
                mem[64] = _4067 + _2039 + _2067 + _2999 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5003
                continue 
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 17
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 18
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _572 = mem[64]
            mem[64] = mem[64] + 64
            mem[_572] = 30
            mem[_572 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
                _612 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _612 + 68] = mem[idx + _572 + 32]
                    idx = idx + 32
                    continue 
                mem[_612 + 98] = 0
                revert with memory
                  from mem[64]
                   len _612 + -mem[64] + 100
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
                _725 = mem[64]
                mem[64] = mem[64] + 64
                mem[_725] = 1
                mem[_725 + 32] = '0'
                _732 = mem[64]
                _745 = mem[s]
                t = 0
                while t < _745:
                    mem[t + _732 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_745) <= _745:
                    _1111 = mem[96]
                    s = 0
                    while s < _1111:
                        mem[s + _732 + _745 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1111) <= _1111:
                        _2064 = mem[_725]
                        s = 0
                        while s < _2064:
                            mem[s + _732 + _745 + _1111 + 32] = mem[s + _725 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2064) <= _2064:
                            _2994 = mem[64]
                            mem[mem[64]] = _2064 + _732 + _745 + _1111 - mem[64]
                            mem[64] = _2064 + _732 + _745 + _1111 + 32
                            if ceil32(_2064) == -1:
                                revert with 0, 17
                            s = ceil32(_2064) + 1
                            s = _2994
                            continue 
                        mem[_732 + _745 + _1111 + _2064 + 32] = 0
                        _3052 = mem[64]
                        mem[mem[64]] = _2064 + _732 + _745 + _1111 - mem[64]
                        mem[64] = _2064 + _732 + _745 + _1111 + 32
                        if ceil32(_2064) == -1:
                            revert with 0, 17
                        s = ceil32(_2064) + 1
                        s = _3052
                        continue 
                    mem[_732 + _745 + _1111 + 32] = 0
                    _2096 = mem[_725]
                    s = 0
                    while s < _2096:
                        mem[s + _732 + _745 + _1111 + 32] = mem[s + _725 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2096) <= _2096:
                        _2995 = mem[64]
                        mem[mem[64]] = _2096 + _732 + _745 + _1111 - mem[64]
                        mem[64] = _2096 + _732 + _745 + _1111 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2995
                        continue 
                    mem[_732 + _745 + _1111 + _2096 + 32] = 0
                    _3053 = mem[64]
                    mem[mem[64]] = _2096 + _732 + _745 + _1111 - mem[64]
                    mem[64] = _2096 + _732 + _745 + _1111 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3053
                    continue 
                mem[_732 + _745 + 32] = 0
                _1120 = mem[96]
                s = 0
                while s < _1120:
                    mem[s + _732 + _745 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_1120) <= _1120:
                    _2065 = mem[_725]
                    s = 0
                    while s < _2065:
                        mem[s + _732 + _745 + _1120 + 32] = mem[s + _725 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2065) <= _2065:
                        _2996 = mem[64]
                        mem[mem[64]] = _2065 + _732 + _745 + _1120 - mem[64]
                        mem[64] = _2065 + _732 + _745 + _1120 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _2996
                        continue 
                    mem[_732 + _745 + _1120 + _2065 + 32] = 0
                    _3054 = mem[64]
                    mem[mem[64]] = _2065 + _732 + _745 + _1120 - mem[64]
                    mem[64] = _2065 + _732 + _745 + _1120 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3054
                    continue 
                mem[_732 + _745 + _1120 + 32] = 0
                _2097 = mem[_725]
                s = 0
                while s < _2097:
                    mem[s + _732 + _745 + _1120 + 32] = mem[s + _725 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2097) <= _2097:
                    _2997 = mem[64]
                    mem[mem[64]] = _2097 + _732 + _745 + _1120 - mem[64]
                    mem[64] = _2097 + _732 + _745 + _1120 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _2997
                    continue 
                mem[_732 + _745 + _1120 + _2097 + 32] = 0
                _3055 = mem[64]
                mem[mem[64]] = _2097 + _732 + _745 + _1120 - mem[64]
                mem[64] = _2097 + _732 + _745 + _1120 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3055
                continue 
            u = 0
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _1104 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1104]:
                        revert with 0, 50
                    mem[v + _1104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _2036 = mem[64]
                _2062 = mem[s]
                t = 0
                while t < _2062:
                    mem[t + _2036 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2062) <= _2062:
                    _2964 = mem[96]
                    s = 0
                    while s < _2964:
                        mem[s + _2036 + _2062 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2964) <= _2964:
                        _3996 = mem[_1104]
                        s = 0
                        while s < _3996:
                            mem[s + _2036 + _2062 + _2964 + 32] = mem[s + _1104 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3996) <= _3996:
                            _4876 = mem[64]
                            mem[mem[64]] = _3996 + _2036 + _2062 + _2964 - mem[64]
                            mem[64] = _3996 + _2036 + _2062 + _2964 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4876
                            continue 
                        mem[_2036 + _2062 + _2964 + _3996 + 32] = 0
                        _4988 = mem[64]
                        mem[mem[64]] = _3996 + _2036 + _2062 + _2964 - mem[64]
                        mem[64] = _3996 + _2036 + _2062 + _2964 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4988
                        continue 
                    mem[_2036 + _2062 + _2964 + 32] = 0
                    _4060 = mem[_1104]
                    s = 0
                    while s < _4060:
                        mem[s + _2036 + _2062 + _2964 + 32] = mem[s + _1104 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4060) <= _4060:
                        _4877 = mem[64]
                        mem[mem[64]] = _4060 + _2036 + _2062 + _2964 - mem[64]
                        mem[64] = _4060 + _2036 + _2062 + _2964 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4877
                        continue 
                    mem[_2036 + _2062 + _2964 + _4060 + 32] = 0
                    _4989 = mem[64]
                    mem[mem[64]] = _4060 + _2036 + _2062 + _2964 - mem[64]
                    mem[64] = _4060 + _2036 + _2062 + _2964 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4989
                    continue 
                mem[_2036 + _2062 + 32] = 0
                _2992 = mem[96]
                s = 0
                while s < _2992:
                    mem[s + _2036 + _2062 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_2992) <= _2992:
                    _3997 = mem[_1104]
                    s = 0
                    while s < _3997:
                        mem[s + _2036 + _2062 + _2992 + 32] = mem[s + _1104 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3997) <= _3997:
                        _4878 = mem[64]
                        mem[mem[64]] = _3997 + _2036 + _2062 + _2992 - mem[64]
                        mem[64] = _3997 + _2036 + _2062 + _2992 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4878
                        continue 
                    mem[_2036 + _2062 + _2992 + _3997 + 32] = 0
                    _4990 = mem[64]
                    mem[mem[64]] = _3997 + _2036 + _2062 + _2992 - mem[64]
                    mem[64] = _3997 + _2036 + _2062 + _2992 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4990
                    continue 
                mem[_2036 + _2062 + _2992 + 32] = 0
                _4061 = mem[_1104]
                s = 0
                while s < _4061:
                    mem[s + _2036 + _2062 + _2992 + 32] = mem[s + _1104 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4061) <= _4061:
                    _4879 = mem[64]
                    mem[mem[64]] = _4061 + _2036 + _2062 + _2992 - mem[64]
                    mem[64] = _4061 + _2036 + _2062 + _2992 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4879
                    continue 
                mem[_2036 + _2062 + _2992 + _4061 + 32] = 0
                _4991 = mem[64]
                mem[mem[64]] = _4061 + _2036 + _2062 + _2992 - mem[64]
                mem[64] = _4061 + _2036 + _2062 + _2992 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4991
                continue 
            mem[_1104 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1104]:
                    revert with 0, 50
                mem[v + _1104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _2037 = mem[64]
            _2063 = mem[s]
            t = 0
            while t < _2063:
                mem[t + _2037 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2063) <= _2063:
                _2965 = mem[96]
                s = 0
                while s < _2965:
                    mem[s + _2037 + _2063 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_2965) <= _2965:
                    _3998 = mem[_1104]
                    s = 0
                    while s < _3998:
                        mem[s + _2037 + _2063 + _2965 + 32] = mem[s + _1104 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3998) <= _3998:
                        _4880 = mem[64]
                        mem[mem[64]] = _3998 + _2037 + _2063 + _2965 - mem[64]
                        mem[64] = _3998 + _2037 + _2063 + _2965 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4880
                        continue 
                    mem[_2037 + _2063 + _2965 + _3998 + 32] = 0
                    _4992 = mem[64]
                    mem[mem[64]] = _3998 + _2037 + _2063 + _2965 - mem[64]
                    mem[64] = _3998 + _2037 + _2063 + _2965 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4992
                    continue 
                mem[_2037 + _2063 + _2965 + 32] = 0
                _4062 = mem[_1104]
                s = 0
                while s < _4062:
                    mem[s + _2037 + _2063 + _2965 + 32] = mem[s + _1104 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4062) <= _4062:
                    _4881 = mem[64]
                    mem[mem[64]] = _4062 + _2037 + _2063 + _2965 - mem[64]
                    mem[64] = _4062 + _2037 + _2063 + _2965 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4881
                    continue 
                mem[_2037 + _2063 + _2965 + _4062 + 32] = 0
                _4993 = mem[64]
                mem[mem[64]] = _4062 + _2037 + _2063 + _2965 - mem[64]
                mem[64] = _4062 + _2037 + _2063 + _2965 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4993
                continue 
            mem[_2037 + _2063 + 32] = 0
            _2993 = mem[96]
            s = 0
            while s < _2993:
                mem[s + _2037 + _2063 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_2993) <= _2993:
                _3999 = mem[_1104]
                s = 0
                while s < _3999:
                    mem[s + _2037 + _2063 + _2993 + 32] = mem[s + _1104 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3999) <= _3999:
                    _4882 = mem[64]
                    mem[mem[64]] = _3999 + _2037 + _2063 + _2993 - mem[64]
                    mem[64] = _3999 + _2037 + _2063 + _2993 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4882
                    continue 
                mem[_2037 + _2063 + _2993 + _3999 + 32] = 0
                _4994 = mem[64]
                mem[mem[64]] = _3999 + _2037 + _2063 + _2993 - mem[64]
                mem[64] = _3999 + _2037 + _2063 + _2993 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4994
                continue 
            mem[_2037 + _2063 + _2993 + 32] = 0
            _4063 = mem[_1104]
            s = 0
            while s < _4063:
                mem[s + _2037 + _2063 + _2993 + 32] = mem[s + _1104 + 32]
                s = s + 32
                continue 
            if ceil32(_4063) <= _4063:
                _4883 = mem[64]
                mem[mem[64]] = _4063 + _2037 + _2063 + _2993 - mem[64]
                mem[64] = _4063 + _2037 + _2063 + _2993 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4883
                continue 
            mem[_2037 + _2063 + _2993 + _4063 + 32] = 0
            _4995 = mem[64]
            mem[mem[64]] = _4063 + _2037 + _2063 + _2993 - mem[64]
            mem[64] = _4063 + _2037 + _2063 + _2993 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _4995
            continue 
        mem[mem[64]] = 32
        _364 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_364)] = mem[s + 32 len ceil32(_364)]
        if ceil32(_364) > _364:
            mem[mem[64] + _364 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_364) + 32]
    if 0 >= stor3[address(arg1)].field_0:
        revert with 0, 50
    mem[0] = sha3(address(arg1), 3)
    if block.timestamp < stor3[address(arg1)].field_256:
        revert with 0, 17
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if not sub_94471c42:
        revert with 0, 'SafeMath: division by zero', 0
    if not block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42:
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if stor3[address(arg1)].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < stor3[address(arg1)].field_768:
            revert with 0, 17
        if not -stor3[address(arg1)].field_768:
            mem[64] = 352
            mem[288] = 1
            mem[320] = '0'
            idx = 1
            s = 288
            while idx < sub_05b707ff[address(arg1)]:
                if idx > sub_05b707ff[address(arg1)]:
                    revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
                mem[0] = address(arg1)
                mem[32] = 4
                if not sub_05b707ff[address(arg1)]:
                    _412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_412] = 1
                    mem[_412 + 32] = '0'
                    _426 = mem[64]
                    _430 = mem[s]
                    t = 0
                    while t < _430:
                        mem[t + _426 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_430) <= _430:
                        _1116 = mem[96]
                        s = 0
                        while s < _1116:
                            mem[s + _426 + _430 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_1116) <= _1116:
                            _2084 = mem[_412]
                            s = 0
                            while s < _2084:
                                mem[s + _426 + _430 + _1116 + 32] = mem[s + _412 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2084) <= _2084:
                                _3032 = mem[64]
                                mem[mem[64]] = _2084 + _426 + _430 + _1116 - mem[64]
                                mem[64] = _2084 + _426 + _430 + _1116 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _3032
                                continue 
                            mem[_426 + _430 + _1116 + _2084 + 32] = 0
                            _3088 = mem[64]
                            mem[mem[64]] = _2084 + _426 + _430 + _1116 - mem[64]
                            mem[64] = _2084 + _426 + _430 + _1116 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3088
                            continue 
                        mem[_426 + _430 + _1116 + 32] = 0
                        _2118 = mem[_412]
                        s = 0
                        while s < _2118:
                            mem[s + _426 + _430 + _1116 + 32] = mem[s + _412 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2118) <= _2118:
                            _3033 = mem[64]
                            mem[mem[64]] = _2118 + _426 + _430 + _1116 - mem[64]
                            mem[64] = _2118 + _426 + _430 + _1116 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3033
                            continue 
                        mem[_426 + _430 + _1116 + _2118 + 32] = 0
                        _3089 = mem[64]
                        mem[mem[64]] = _2118 + _426 + _430 + _1116 - mem[64]
                        mem[64] = _2118 + _426 + _430 + _1116 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3089
                        continue 
                    mem[_426 + _430 + 32] = 0
                    _1125 = mem[96]
                    s = 0
                    while s < _1125:
                        mem[s + _426 + _430 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1125) <= _1125:
                        _2085 = mem[_412]
                        s = 0
                        while s < _2085:
                            mem[s + _426 + _430 + _1125 + 32] = mem[s + _412 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2085) <= _2085:
                            _3034 = mem[64]
                            mem[mem[64]] = _2085 + _426 + _430 + _1125 - mem[64]
                            mem[64] = _2085 + _426 + _430 + _1125 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3034
                            continue 
                        mem[_426 + _430 + _1125 + _2085 + 32] = 0
                        _3090 = mem[64]
                        mem[mem[64]] = _2085 + _426 + _430 + _1125 - mem[64]
                        mem[64] = _2085 + _426 + _430 + _1125 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3090
                        continue 
                    mem[_426 + _430 + _1125 + 32] = 0
                    _2119 = mem[_412]
                    s = 0
                    while s < _2119:
                        mem[s + _426 + _430 + _1125 + 32] = mem[s + _412 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2119) <= _2119:
                        _3035 = mem[64]
                        mem[mem[64]] = _2119 + _426 + _430 + _1125 - mem[64]
                        mem[64] = _2119 + _426 + _430 + _1125 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3035
                        continue 
                    mem[_426 + _430 + _1125 + _2119 + 32] = 0
                    _3091 = mem[64]
                    mem[mem[64]] = _2119 + _426 + _430 + _1125 - mem[64]
                    mem[64] = _2119 + _426 + _430 + _1125 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3091
                    continue 
                if idx >= stor3[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 3)
                if block.timestamp < stor3[address(arg1)][idx].field_256:
                    revert with 0, 17
                _427 = mem[64]
                mem[64] = mem[64] + 64
                mem[_427] = 26
                mem[_427 + 32] = 'SafeMath: division by zero'
                if not sub_94471c42:
                    _435 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _435 + 68] = mem[idx + _427 + 32]
                        idx = idx + 32
                        continue 
                    mem[_435 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _435 + -mem[64] + 100
                if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                    _519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_519] = 30
                    mem[_519 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[address(arg1)][idx].field_768 > 0:
                        _537 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _537 + 68] = mem[idx + _519 + 32]
                            idx = idx + 32
                            continue 
                        mem[_537 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _537 + -mem[64] + 100
                    if 0 < stor3[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if not -stor3[address(arg1)][idx].field_768:
                        _646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_646] = 1
                        mem[_646 + 32] = '0'
                        _661 = mem[64]
                        _677 = mem[s]
                        t = 0
                        while t < _677:
                            mem[t + _661 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_677) <= _677:
                            _1118 = mem[96]
                            s = 0
                            while s < _1118:
                                mem[s + _661 + _677 + 32] = mem[s + 128]
                                s = s + 32
                                continue 
                            if ceil32(_1118) <= _1118:
                                _2092 = mem[_646]
                                s = 0
                                while s < _2092:
                                    mem[s + _661 + _677 + _1118 + 32] = mem[s + _646 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_2092) <= _2092:
                                    _3044 = mem[64]
                                    mem[mem[64]] = _2092 + _661 + _677 + _1118 - mem[64]
                                    mem[64] = _2092 + _661 + _677 + _1118 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _3044
                                    continue 
                                mem[_661 + _677 + _1118 + _2092 + 32] = 0
                                _3096 = mem[64]
                                mem[mem[64]] = _2092 + _661 + _677 + _1118 - mem[64]
                                mem[64] = _2092 + _661 + _677 + _1118 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _3096
                                continue 
                            mem[_661 + _677 + _1118 + 32] = 0
                            _2122 = mem[_646]
                            s = 0
                            while s < _2122:
                                mem[s + _661 + _677 + _1118 + 32] = mem[s + _646 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2122) <= _2122:
                                _3045 = mem[64]
                                mem[mem[64]] = _2122 + _661 + _677 + _1118 - mem[64]
                                mem[64] = _2122 + _661 + _677 + _1118 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _3045
                                continue 
                            mem[_661 + _677 + _1118 + _2122 + 32] = 0
                            _3097 = mem[64]
                            mem[mem[64]] = _2122 + _661 + _677 + _1118 - mem[64]
                            mem[64] = _2122 + _661 + _677 + _1118 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3097
                            continue 
                        mem[_661 + _677 + 32] = 0
                        _1127 = mem[96]
                        s = 0
                        while s < _1127:
                            mem[s + _661 + _677 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_1127) <= _1127:
                            _2093 = mem[_646]
                            s = 0
                            while s < _2093:
                                mem[s + _661 + _677 + _1127 + 32] = mem[s + _646 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2093) <= _2093:
                                _3046 = mem[64]
                                mem[mem[64]] = _2093 + _661 + _677 + _1127 - mem[64]
                                mem[64] = _2093 + _661 + _677 + _1127 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _3046
                                continue 
                            mem[_661 + _677 + _1127 + _2093 + 32] = 0
                            _3098 = mem[64]
                            mem[mem[64]] = _2093 + _661 + _677 + _1127 - mem[64]
                            mem[64] = _2093 + _661 + _677 + _1127 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3098
                            continue 
                        mem[_661 + _677 + _1127 + 32] = 0
                        _2123 = mem[_646]
                        s = 0
                        while s < _2123:
                            mem[s + _661 + _677 + _1127 + 32] = mem[s + _646 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2123) <= _2123:
                            _3047 = mem[64]
                            mem[mem[64]] = _2123 + _661 + _677 + _1127 - mem[64]
                            mem[64] = _2123 + _661 + _677 + _1127 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3047
                            continue 
                        mem[_661 + _677 + _1127 + _2123 + 32] = 0
                        _3099 = mem[64]
                        mem[mem[64]] = _2123 + _661 + _677 + _1127 - mem[64]
                        mem[64] = _2123 + _661 + _677 + _1127 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3099
                        continue 
                    u = 0
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _1109 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = -stor3[address(arg1)][idx].field_768
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_1109]:
                                revert with 0, 50
                            mem[v + _1109 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            v = v - 1
                            t = t / 10
                            continue 
                        _2058 = mem[64]
                        _2090 = mem[s]
                        t = 0
                        while t < _2090:
                            mem[t + _2058 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_2090) <= _2090:
                            _2986 = mem[96]
                            s = 0
                            while s < _2986:
                                mem[s + _2058 + _2090 + 32] = mem[s + 128]
                                s = s + 32
                                continue 
                            if ceil32(_2986) <= _2986:
                                _4056 = mem[_1109]
                                s = 0
                                while s < _4056:
                                    mem[s + _2058 + _2090 + _2986 + 32] = mem[s + _1109 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4056) <= _4056:
                                    _4980 = mem[64]
                                    mem[mem[64]] = _4056 + _2058 + _2090 + _2986 - mem[64]
                                    mem[64] = _4056 + _2058 + _2090 + _2986 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _4980
                                    continue 
                                mem[_2058 + _2090 + _2986 + _4056 + 32] = 0
                                _5076 = mem[64]
                                mem[mem[64]] = _4056 + _2058 + _2090 + _2986 - mem[64]
                                mem[64] = _4056 + _2058 + _2090 + _2986 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5076
                                continue 
                            mem[_2058 + _2090 + _2986 + 32] = 0
                            _4104 = mem[_1109]
                            s = 0
                            while s < _4104:
                                mem[s + _2058 + _2090 + _2986 + 32] = mem[s + _1109 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4104) <= _4104:
                                _4981 = mem[64]
                                mem[mem[64]] = _4104 + _2058 + _2090 + _2986 - mem[64]
                                mem[64] = _4104 + _2058 + _2090 + _2986 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4981
                                continue 
                            mem[_2058 + _2090 + _2986 + _4104 + 32] = 0
                            _5077 = mem[64]
                            mem[mem[64]] = _4104 + _2058 + _2090 + _2986 - mem[64]
                            mem[64] = _4104 + _2058 + _2090 + _2986 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5077
                            continue 
                        mem[_2058 + _2090 + 32] = 0
                        _3042 = mem[96]
                        s = 0
                        while s < _3042:
                            mem[s + _2058 + _2090 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_3042) <= _3042:
                            _4057 = mem[_1109]
                            s = 0
                            while s < _4057:
                                mem[s + _2058 + _2090 + _3042 + 32] = mem[s + _1109 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4057) <= _4057:
                                _4982 = mem[64]
                                mem[mem[64]] = _4057 + _2058 + _2090 + _3042 - mem[64]
                                mem[64] = _4057 + _2058 + _2090 + _3042 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4982
                                continue 
                            mem[_2058 + _2090 + _3042 + _4057 + 32] = 0
                            _5078 = mem[64]
                            mem[mem[64]] = _4057 + _2058 + _2090 + _3042 - mem[64]
                            mem[64] = _4057 + _2058 + _2090 + _3042 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5078
                            continue 
                        mem[_2058 + _2090 + _3042 + 32] = 0
                        _4105 = mem[_1109]
                        s = 0
                        while s < _4105:
                            mem[s + _2058 + _2090 + _3042 + 32] = mem[s + _1109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4105) <= _4105:
                            _4983 = mem[64]
                            mem[mem[64]] = _4105 + _2058 + _2090 + _3042 - mem[64]
                            mem[64] = _4105 + _2058 + _2090 + _3042 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4983
                            continue 
                        mem[_2058 + _2090 + _3042 + _4105 + 32] = 0
                        _5079 = mem[64]
                        mem[mem[64]] = _4105 + _2058 + _2090 + _3042 - mem[64]
                        mem[64] = _4105 + _2058 + _2090 + _3042 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5079
                        continue 
                    mem[_1109 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1109]:
                            revert with 0, 50
                        mem[v + _1109 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _2059 = mem[64]
                    _2091 = mem[s]
                    t = 0
                    while t < _2091:
                        mem[t + _2059 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2091) <= _2091:
                        _2987 = mem[96]
                        s = 0
                        while s < _2987:
                            mem[s + _2059 + _2091 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2987) <= _2987:
                            _4058 = mem[_1109]
                            s = 0
                            while s < _4058:
                                mem[s + _2059 + _2091 + _2987 + 32] = mem[s + _1109 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4058) <= _4058:
                                _4984 = mem[64]
                                mem[mem[64]] = _4058 + _2059 + _2091 + _2987 - mem[64]
                                mem[64] = _4058 + _2059 + _2091 + _2987 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4984
                                continue 
                            mem[_2059 + _2091 + _2987 + _4058 + 32] = 0
                            _5080 = mem[64]
                            mem[mem[64]] = _4058 + _2059 + _2091 + _2987 - mem[64]
                            mem[64] = _4058 + _2059 + _2091 + _2987 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5080
                            continue 
                        mem[_2059 + _2091 + _2987 + 32] = 0
                        _4106 = mem[_1109]
                        s = 0
                        while s < _4106:
                            mem[s + _2059 + _2091 + _2987 + 32] = mem[s + _1109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4106) <= _4106:
                            _4985 = mem[64]
                            mem[mem[64]] = _4106 + _2059 + _2091 + _2987 - mem[64]
                            mem[64] = _4106 + _2059 + _2091 + _2987 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4985
                            continue 
                        mem[_2059 + _2091 + _2987 + _4106 + 32] = 0
                        _5081 = mem[64]
                        mem[mem[64]] = _4106 + _2059 + _2091 + _2987 - mem[64]
                        mem[64] = _4106 + _2059 + _2091 + _2987 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5081
                        continue 
                    mem[_2059 + _2091 + 32] = 0
                    _3043 = mem[96]
                    s = 0
                    while s < _3043:
                        mem[s + _2059 + _2091 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3043) <= _3043:
                        _4059 = mem[_1109]
                        s = 0
                        while s < _4059:
                            mem[s + _2059 + _2091 + _3043 + 32] = mem[s + _1109 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4059) <= _4059:
                            _4986 = mem[64]
                            mem[mem[64]] = _4059 + _2059 + _2091 + _3043 - mem[64]
                            mem[64] = _4059 + _2059 + _2091 + _3043 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4986
                            continue 
                        mem[_2059 + _2091 + _3043 + _4059 + 32] = 0
                        _5082 = mem[64]
                        mem[mem[64]] = _4059 + _2059 + _2091 + _3043 - mem[64]
                        mem[64] = _4059 + _2059 + _2091 + _3043 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5082
                        continue 
                    mem[_2059 + _2091 + _3043 + 32] = 0
                    _4107 = mem[_1109]
                    s = 0
                    while s < _4107:
                        mem[s + _2059 + _2091 + _3043 + 32] = mem[s + _1109 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4107) <= _4107:
                        _4987 = mem[64]
                        mem[mem[64]] = _4107 + _2059 + _2091 + _3043 - mem[64]
                        mem[64] = _4107 + _2059 + _2091 + _3043 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4987
                        continue 
                    mem[_2059 + _2091 + _3043 + _4107 + 32] = 0
                    _5083 = mem[64]
                    mem[mem[64]] = _4107 + _2059 + _2091 + _3043 - mem[64]
                    mem[64] = _4107 + _2059 + _2091 + _3043 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5083
                    continue 
                if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                    revert with 0, 17
                if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                    revert with 0, 18
                if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _586 = mem[64]
                mem[64] = mem[64] + 64
                mem[_586] = 30
                mem[_586 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
                    _626 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _626 + 68] = mem[idx + _586 + 32]
                        idx = idx + 32
                        continue 
                    mem[_626 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _626 + -mem[64] + 100
                if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
                    _731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_731] = 1
                    mem[_731 + 32] = '0'
                    _742 = mem[64]
                    _759 = mem[s]
                    t = 0
                    while t < _759:
                        mem[t + _742 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_759) <= _759:
                        _1117 = mem[96]
                        s = 0
                        while s < _1117:
                            mem[s + _742 + _759 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_1117) <= _1117:
                            _2088 = mem[_731]
                            s = 0
                            while s < _2088:
                                mem[s + _742 + _759 + _1117 + 32] = mem[s + _731 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2088) <= _2088:
                                _3038 = mem[64]
                                mem[mem[64]] = _2088 + _742 + _759 + _1117 - mem[64]
                                mem[64] = _2088 + _742 + _759 + _1117 + 32
                                if ceil32(_2088) == -1:
                                    revert with 0, 17
                                s = ceil32(_2088) + 1
                                s = _3038
                                continue 
                            mem[_742 + _759 + _1117 + _2088 + 32] = 0
                            _3092 = mem[64]
                            mem[mem[64]] = _2088 + _742 + _759 + _1117 - mem[64]
                            mem[64] = _2088 + _742 + _759 + _1117 + 32
                            if ceil32(_2088) == -1:
                                revert with 0, 17
                            s = ceil32(_2088) + 1
                            s = _3092
                            continue 
                        mem[_742 + _759 + _1117 + 32] = 0
                        _2120 = mem[_731]
                        s = 0
                        while s < _2120:
                            mem[s + _742 + _759 + _1117 + 32] = mem[s + _731 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2120) <= _2120:
                            _3039 = mem[64]
                            mem[mem[64]] = _2120 + _742 + _759 + _1117 - mem[64]
                            mem[64] = _2120 + _742 + _759 + _1117 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3039
                            continue 
                        mem[_742 + _759 + _1117 + _2120 + 32] = 0
                        _3093 = mem[64]
                        mem[mem[64]] = _2120 + _742 + _759 + _1117 - mem[64]
                        mem[64] = _2120 + _742 + _759 + _1117 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3093
                        continue 
                    mem[_742 + _759 + 32] = 0
                    _1126 = mem[96]
                    s = 0
                    while s < _1126:
                        mem[s + _742 + _759 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1126) <= _1126:
                        _2089 = mem[_731]
                        s = 0
                        while s < _2089:
                            mem[s + _742 + _759 + _1126 + 32] = mem[s + _731 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2089) <= _2089:
                            _3040 = mem[64]
                            mem[mem[64]] = _2089 + _742 + _759 + _1126 - mem[64]
                            mem[64] = _2089 + _742 + _759 + _1126 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3040
                            continue 
                        mem[_742 + _759 + _1126 + _2089 + 32] = 0
                        _3094 = mem[64]
                        mem[mem[64]] = _2089 + _742 + _759 + _1126 - mem[64]
                        mem[64] = _2089 + _742 + _759 + _1126 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3094
                        continue 
                    mem[_742 + _759 + _1126 + 32] = 0
                    _2121 = mem[_731]
                    s = 0
                    while s < _2121:
                        mem[s + _742 + _759 + _1126 + 32] = mem[s + _731 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2121) <= _2121:
                        _3041 = mem[64]
                        mem[mem[64]] = _2121 + _742 + _759 + _1126 - mem[64]
                        mem[64] = _2121 + _742 + _759 + _1126 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3041
                        continue 
                    mem[_742 + _759 + _1126 + _2121 + 32] = 0
                    _3095 = mem[64]
                    mem[mem[64]] = _2121 + _742 + _759 + _1126 - mem[64]
                    mem[64] = _2121 + _742 + _759 + _1126 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3095
                    continue 
                u = 0
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _1108 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1108]:
                            revert with 0, 50
                        mem[v + _1108 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _2056 = mem[64]
                    _2086 = mem[s]
                    t = 0
                    while t < _2086:
                        mem[t + _2056 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2086) <= _2086:
                        _2984 = mem[96]
                        s = 0
                        while s < _2984:
                            mem[s + _2056 + _2086 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2984) <= _2984:
                            _4052 = mem[_1108]
                            s = 0
                            while s < _4052:
                                mem[s + _2056 + _2086 + _2984 + 32] = mem[s + _1108 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4052) <= _4052:
                                _4972 = mem[64]
                                mem[mem[64]] = _4052 + _2056 + _2086 + _2984 - mem[64]
                                mem[64] = _4052 + _2056 + _2086 + _2984 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4972
                                continue 
                            mem[_2056 + _2086 + _2984 + _4052 + 32] = 0
                            _5068 = mem[64]
                            mem[mem[64]] = _4052 + _2056 + _2086 + _2984 - mem[64]
                            mem[64] = _4052 + _2056 + _2086 + _2984 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5068
                            continue 
                        mem[_2056 + _2086 + _2984 + 32] = 0
                        _4100 = mem[_1108]
                        s = 0
                        while s < _4100:
                            mem[s + _2056 + _2086 + _2984 + 32] = mem[s + _1108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4100) <= _4100:
                            _4973 = mem[64]
                            mem[mem[64]] = _4100 + _2056 + _2086 + _2984 - mem[64]
                            mem[64] = _4100 + _2056 + _2086 + _2984 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4973
                            continue 
                        mem[_2056 + _2086 + _2984 + _4100 + 32] = 0
                        _5069 = mem[64]
                        mem[mem[64]] = _4100 + _2056 + _2086 + _2984 - mem[64]
                        mem[64] = _4100 + _2056 + _2086 + _2984 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5069
                        continue 
                    mem[_2056 + _2086 + 32] = 0
                    _3036 = mem[96]
                    s = 0
                    while s < _3036:
                        mem[s + _2056 + _2086 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3036) <= _3036:
                        _4053 = mem[_1108]
                        s = 0
                        while s < _4053:
                            mem[s + _2056 + _2086 + _3036 + 32] = mem[s + _1108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4053) <= _4053:
                            _4974 = mem[64]
                            mem[mem[64]] = _4053 + _2056 + _2086 + _3036 - mem[64]
                            mem[64] = _4053 + _2056 + _2086 + _3036 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4974
                            continue 
                        mem[_2056 + _2086 + _3036 + _4053 + 32] = 0
                        _5070 = mem[64]
                        mem[mem[64]] = _4053 + _2056 + _2086 + _3036 - mem[64]
                        mem[64] = _4053 + _2056 + _2086 + _3036 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5070
                        continue 
                    mem[_2056 + _2086 + _3036 + 32] = 0
                    _4101 = mem[_1108]
                    s = 0
                    while s < _4101:
                        mem[s + _2056 + _2086 + _3036 + 32] = mem[s + _1108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4101) <= _4101:
                        _4975 = mem[64]
                        mem[mem[64]] = _4101 + _2056 + _2086 + _3036 - mem[64]
                        mem[64] = _4101 + _2056 + _2086 + _3036 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4975
                        continue 
                    mem[_2056 + _2086 + _3036 + _4101 + 32] = 0
                    _5071 = mem[64]
                    mem[mem[64]] = _4101 + _2056 + _2086 + _3036 - mem[64]
                    mem[64] = _4101 + _2056 + _2086 + _3036 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5071
                    continue 
                mem[_1108 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1108]:
                        revert with 0, 50
                    mem[v + _1108 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _2057 = mem[64]
                _2087 = mem[s]
                t = 0
                while t < _2087:
                    mem[t + _2057 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2087) <= _2087:
                    _2985 = mem[96]
                    s = 0
                    while s < _2985:
                        mem[s + _2057 + _2087 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2985) <= _2985:
                        _4054 = mem[_1108]
                        s = 0
                        while s < _4054:
                            mem[s + _2057 + _2087 + _2985 + 32] = mem[s + _1108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4054) <= _4054:
                            _4976 = mem[64]
                            mem[mem[64]] = _4054 + _2057 + _2087 + _2985 - mem[64]
                            mem[64] = _4054 + _2057 + _2087 + _2985 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4976
                            continue 
                        mem[_2057 + _2087 + _2985 + _4054 + 32] = 0
                        _5072 = mem[64]
                        mem[mem[64]] = _4054 + _2057 + _2087 + _2985 - mem[64]
                        mem[64] = _4054 + _2057 + _2087 + _2985 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5072
                        continue 
                    mem[_2057 + _2087 + _2985 + 32] = 0
                    _4102 = mem[_1108]
                    s = 0
                    while s < _4102:
                        mem[s + _2057 + _2087 + _2985 + 32] = mem[s + _1108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4102) <= _4102:
                        _4977 = mem[64]
                        mem[mem[64]] = _4102 + _2057 + _2087 + _2985 - mem[64]
                        mem[64] = _4102 + _2057 + _2087 + _2985 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4977
                        continue 
                    mem[_2057 + _2087 + _2985 + _4102 + 32] = 0
                    _5073 = mem[64]
                    mem[mem[64]] = _4102 + _2057 + _2087 + _2985 - mem[64]
                    mem[64] = _4102 + _2057 + _2087 + _2985 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5073
                    continue 
                mem[_2057 + _2087 + 32] = 0
                _3037 = mem[96]
                s = 0
                while s < _3037:
                    mem[s + _2057 + _2087 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3037) <= _3037:
                    _4055 = mem[_1108]
                    s = 0
                    while s < _4055:
                        mem[s + _2057 + _2087 + _3037 + 32] = mem[s + _1108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4055) <= _4055:
                        _4978 = mem[64]
                        mem[mem[64]] = _4055 + _2057 + _2087 + _3037 - mem[64]
                        mem[64] = _4055 + _2057 + _2087 + _3037 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4978
                        continue 
                    mem[_2057 + _2087 + _3037 + _4055 + 32] = 0
                    _5074 = mem[64]
                    mem[mem[64]] = _4055 + _2057 + _2087 + _3037 - mem[64]
                    mem[64] = _4055 + _2057 + _2087 + _3037 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5074
                    continue 
                mem[_2057 + _2087 + _3037 + 32] = 0
                _4103 = mem[_1108]
                s = 0
                while s < _4103:
                    mem[s + _2057 + _2087 + _3037 + 32] = mem[s + _1108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4103) <= _4103:
                    _4979 = mem[64]
                    mem[mem[64]] = _4103 + _2057 + _2087 + _3037 - mem[64]
                    mem[64] = _4103 + _2057 + _2087 + _3037 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4979
                    continue 
                mem[_2057 + _2087 + _3037 + _4103 + 32] = 0
                _5075 = mem[64]
                mem[mem[64]] = _4103 + _2057 + _2087 + _3037 - mem[64]
                mem[64] = _4103 + _2057 + _2087 + _3037 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5075
                continue 
            mem[mem[64]] = 32
            _370 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_370)] = mem[s + 32 len ceil32(_370)]
            if ceil32(_370) > _370:
                mem[mem[64] + _370 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_370) + 32]
        s = 0
        idx = -stor3[address(arg1)].field_768
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[288] = s
        mem[64] = ceil32(s) + 320
        if not s:
            t = s
            idx = -stor3[address(arg1)].field_768
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[288]:
                    revert with 0, 50
                mem[t + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            idx = 1
            s = 288
            while idx < sub_05b707ff[address(arg1)]:
                if idx > sub_05b707ff[address(arg1)]:
                    revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
                mem[0] = address(arg1)
                mem[32] = 4
                if not sub_05b707ff[address(arg1)]:
                    _2283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2283] = 1
                    mem[_2283 + 32] = '0'
                    _2311 = mem[64]
                    _2330 = mem[s]
                    t = 0
                    while t < _2330:
                        mem[t + _2311 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2330) <= _2330:
                        _2978 = mem[96]
                        s = 0
                        while s < _2978:
                            mem[s + _2311 + _2330 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2978) <= _2978:
                            _4032 = mem[_2283]
                            s = 0
                            while s < _4032:
                                mem[s + _2311 + _2330 + _2978 + 32] = mem[s + _2283 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4032) <= _4032:
                                _4940 = mem[64]
                                mem[mem[64]] = _4032 + _2311 + _2330 + _2978 - mem[64]
                                mem[64] = _4032 + _2311 + _2330 + _2978 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4940
                                continue 
                            mem[_2311 + _2330 + _2978 + _4032 + 32] = 0
                            _5044 = mem[64]
                            mem[mem[64]] = _4032 + _2311 + _2330 + _2978 - mem[64]
                            mem[64] = _4032 + _2311 + _2330 + _2978 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5044
                            continue 
                        mem[_2311 + _2330 + _2978 + 32] = 0
                        _4088 = mem[_2283]
                        s = 0
                        while s < _4088:
                            mem[s + _2311 + _2330 + _2978 + 32] = mem[s + _2283 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4088) <= _4088:
                            _4941 = mem[64]
                            mem[mem[64]] = _4088 + _2311 + _2330 + _2978 - mem[64]
                            mem[64] = _4088 + _2311 + _2330 + _2978 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4941
                            continue 
                        mem[_2311 + _2330 + _2978 + _4088 + 32] = 0
                        _5045 = mem[64]
                        mem[mem[64]] = _4088 + _2311 + _2330 + _2978 - mem[64]
                        mem[64] = _4088 + _2311 + _2330 + _2978 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5045
                        continue 
                    mem[_2311 + _2330 + 32] = 0
                    _3026 = mem[96]
                    s = 0
                    while s < _3026:
                        mem[s + _2311 + _2330 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3026) <= _3026:
                        _4033 = mem[_2283]
                        s = 0
                        while s < _4033:
                            mem[s + _2311 + _2330 + _3026 + 32] = mem[s + _2283 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4033) <= _4033:
                            _4942 = mem[64]
                            mem[mem[64]] = _4033 + _2311 + _2330 + _3026 - mem[64]
                            mem[64] = _4033 + _2311 + _2330 + _3026 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4942
                            continue 
                        mem[_2311 + _2330 + _3026 + _4033 + 32] = 0
                        _5046 = mem[64]
                        mem[mem[64]] = _4033 + _2311 + _2330 + _3026 - mem[64]
                        mem[64] = _4033 + _2311 + _2330 + _3026 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5046
                        continue 
                    mem[_2311 + _2330 + _3026 + 32] = 0
                    _4089 = mem[_2283]
                    s = 0
                    while s < _4089:
                        mem[s + _2311 + _2330 + _3026 + 32] = mem[s + _2283 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4089) <= _4089:
                        _4943 = mem[64]
                        mem[mem[64]] = _4089 + _2311 + _2330 + _3026 - mem[64]
                        mem[64] = _4089 + _2311 + _2330 + _3026 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4943
                        continue 
                    mem[_2311 + _2330 + _3026 + _4089 + 32] = 0
                    _5047 = mem[64]
                    mem[mem[64]] = _4089 + _2311 + _2330 + _3026 - mem[64]
                    mem[64] = _4089 + _2311 + _2330 + _3026 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5047
                    continue 
                if idx >= stor3[address(arg1)].field_0:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 3)
                if block.timestamp < stor3[address(arg1)][idx].field_256:
                    revert with 0, 17
                _2312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2312] = 26
                mem[_2312 + 32] = 'SafeMath: division by zero'
                if not sub_94471c42:
                    _2354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2354 + 68] = mem[idx + _2312 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2354 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2354 + -mem[64] + 100
                if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                    _2578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2578] = 30
                    mem[_2578 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[address(arg1)][idx].field_768 > 0:
                        _2593 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2593 + 68] = mem[idx + _2578 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2593 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2593 + -mem[64] + 100
                    if 0 < stor3[address(arg1)][idx].field_768:
                        revert with 0, 17
                    if not -stor3[address(arg1)][idx].field_768:
                        _2669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2669] = 1
                        mem[_2669 + 32] = '0'
                        _2676 = mem[64]
                        _2684 = mem[s]
                        t = 0
                        while t < _2684:
                            mem[t + _2676 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_2684) <= _2684:
                            _2980 = mem[96]
                            s = 0
                            while s < _2980:
                                mem[s + _2676 + _2684 + 32] = mem[s + 128]
                                s = s + 32
                                continue 
                            if ceil32(_2980) <= _2980:
                                _4040 = mem[_2669]
                                s = 0
                                while s < _4040:
                                    mem[s + _2676 + _2684 + _2980 + 32] = mem[s + _2669 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_4040) <= _4040:
                                    _4952 = mem[64]
                                    mem[mem[64]] = _4040 + _2676 + _2684 + _2980 - mem[64]
                                    mem[64] = _4040 + _2676 + _2684 + _2980 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _4952
                                    continue 
                                mem[_2676 + _2684 + _2980 + _4040 + 32] = 0
                                _5052 = mem[64]
                                mem[mem[64]] = _4040 + _2676 + _2684 + _2980 - mem[64]
                                mem[64] = _4040 + _2676 + _2684 + _2980 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5052
                                continue 
                            mem[_2676 + _2684 + _2980 + 32] = 0
                            _4092 = mem[_2669]
                            s = 0
                            while s < _4092:
                                mem[s + _2676 + _2684 + _2980 + 32] = mem[s + _2669 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4092) <= _4092:
                                _4953 = mem[64]
                                mem[mem[64]] = _4092 + _2676 + _2684 + _2980 - mem[64]
                                mem[64] = _4092 + _2676 + _2684 + _2980 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4953
                                continue 
                            mem[_2676 + _2684 + _2980 + _4092 + 32] = 0
                            _5053 = mem[64]
                            mem[mem[64]] = _4092 + _2676 + _2684 + _2980 - mem[64]
                            mem[64] = _4092 + _2676 + _2684 + _2980 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5053
                            continue 
                        mem[_2676 + _2684 + 32] = 0
                        _3028 = mem[96]
                        s = 0
                        while s < _3028:
                            mem[s + _2676 + _2684 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_3028) <= _3028:
                            _4041 = mem[_2669]
                            s = 0
                            while s < _4041:
                                mem[s + _2676 + _2684 + _3028 + 32] = mem[s + _2669 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4041) <= _4041:
                                _4954 = mem[64]
                                mem[mem[64]] = _4041 + _2676 + _2684 + _3028 - mem[64]
                                mem[64] = _4041 + _2676 + _2684 + _3028 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4954
                                continue 
                            mem[_2676 + _2684 + _3028 + _4041 + 32] = 0
                            _5054 = mem[64]
                            mem[mem[64]] = _4041 + _2676 + _2684 + _3028 - mem[64]
                            mem[64] = _4041 + _2676 + _2684 + _3028 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5054
                            continue 
                        mem[_2676 + _2684 + _3028 + 32] = 0
                        _4093 = mem[_2669]
                        s = 0
                        while s < _4093:
                            mem[s + _2676 + _2684 + _3028 + 32] = mem[s + _2669 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4093) <= _4093:
                            _4955 = mem[64]
                            mem[mem[64]] = _4093 + _2676 + _2684 + _3028 - mem[64]
                            mem[64] = _4093 + _2676 + _2684 + _3028 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4955
                            continue 
                        mem[_2676 + _2684 + _3028 + _4093 + 32] = 0
                        _5055 = mem[64]
                        mem[mem[64]] = _4093 + _2676 + _2684 + _3028 - mem[64]
                        mem[64] = _4093 + _2676 + _2684 + _3028 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5055
                        continue 
                    u = 0
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _2961 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = -stor3[address(arg1)][idx].field_768
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if t < 10 * t / 10:
                                revert with 0, 17
                            if 48 > -uint8(t - (10 * t / 10)) + 255:
                                revert with 0, 17
                            if v - 1 >= mem[_2961]:
                                revert with 0, 50
                            mem[v + _2961 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                            v = v - 1
                            t = t / 10
                            continue 
                        _3990 = mem[64]
                        _4038 = mem[s]
                        t = 0
                        while t < _4038:
                            mem[t + _3990 + 32] = mem[t + s + 32]
                            t = t + 32
                            continue 
                        if ceil32(_4038) <= _4038:
                            _4870 = mem[96]
                            s = 0
                            while s < _4870:
                                mem[s + _3990 + _4038 + 32] = mem[s + 128]
                                s = s + 32
                                continue 
                            if ceil32(_4870) <= _4870:
                                _5424 = mem[_2961]
                                s = 0
                                while s < _5424:
                                    mem[s + _3990 + _4038 + _4870 + 32] = mem[s + _2961 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_5424) <= _5424:
                                    _5764 = mem[64]
                                    mem[mem[64]] = _5424 + _3990 + _4038 + _4870 - mem[64]
                                    mem[64] = _5424 + _3990 + _4038 + _4870 + 32
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = _5764
                                    continue 
                                mem[_3990 + _4038 + _4870 + _5424 + 32] = 0
                                _5828 = mem[64]
                                mem[mem[64]] = _5424 + _3990 + _4038 + _4870 - mem[64]
                                mem[64] = _5424 + _3990 + _4038 + _4870 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5828
                                continue 
                            mem[_3990 + _4038 + _4870 + 32] = 0
                            _5456 = mem[_2961]
                            s = 0
                            while s < _5456:
                                mem[s + _3990 + _4038 + _4870 + 32] = mem[s + _2961 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5456) <= _5456:
                                _5765 = mem[64]
                                mem[mem[64]] = _5456 + _3990 + _4038 + _4870 - mem[64]
                                mem[64] = _5456 + _3990 + _4038 + _4870 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5765
                                continue 
                            mem[_3990 + _4038 + _4870 + _5456 + 32] = 0
                            _5829 = mem[64]
                            mem[mem[64]] = _5456 + _3990 + _4038 + _4870 - mem[64]
                            mem[64] = _5456 + _3990 + _4038 + _4870 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5829
                            continue 
                        mem[_3990 + _4038 + 32] = 0
                        _4950 = mem[96]
                        s = 0
                        while s < _4950:
                            mem[s + _3990 + _4038 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_4950) <= _4950:
                            _5425 = mem[_2961]
                            s = 0
                            while s < _5425:
                                mem[s + _3990 + _4038 + _4950 + 32] = mem[s + _2961 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5425) <= _5425:
                                _5766 = mem[64]
                                mem[mem[64]] = _5425 + _3990 + _4038 + _4950 - mem[64]
                                mem[64] = _5425 + _3990 + _4038 + _4950 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5766
                                continue 
                            mem[_3990 + _4038 + _4950 + _5425 + 32] = 0
                            _5830 = mem[64]
                            mem[mem[64]] = _5425 + _3990 + _4038 + _4950 - mem[64]
                            mem[64] = _5425 + _3990 + _4038 + _4950 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5830
                            continue 
                        mem[_3990 + _4038 + _4950 + 32] = 0
                        _5457 = mem[_2961]
                        s = 0
                        while s < _5457:
                            mem[s + _3990 + _4038 + _4950 + 32] = mem[s + _2961 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5457) <= _5457:
                            _5767 = mem[64]
                            mem[mem[64]] = _5457 + _3990 + _4038 + _4950 - mem[64]
                            mem[64] = _5457 + _3990 + _4038 + _4950 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5767
                            continue 
                        mem[_3990 + _4038 + _4950 + _5457 + 32] = 0
                        _5831 = mem[64]
                        mem[mem[64]] = _5457 + _3990 + _4038 + _4950 - mem[64]
                        mem[64] = _5457 + _3990 + _4038 + _4950 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5831
                        continue 
                    mem[_2961 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_2961]:
                            revert with 0, 50
                        mem[v + _2961 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _3991 = mem[64]
                    _4039 = mem[s]
                    t = 0
                    while t < _4039:
                        mem[t + _3991 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_4039) <= _4039:
                        _4871 = mem[96]
                        s = 0
                        while s < _4871:
                            mem[s + _3991 + _4039 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_4871) <= _4871:
                            _5426 = mem[_2961]
                            s = 0
                            while s < _5426:
                                mem[s + _3991 + _4039 + _4871 + 32] = mem[s + _2961 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5426) <= _5426:
                                _5768 = mem[64]
                                mem[mem[64]] = _5426 + _3991 + _4039 + _4871 - mem[64]
                                mem[64] = _5426 + _3991 + _4039 + _4871 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5768
                                continue 
                            mem[_3991 + _4039 + _4871 + _5426 + 32] = 0
                            _5832 = mem[64]
                            mem[mem[64]] = _5426 + _3991 + _4039 + _4871 - mem[64]
                            mem[64] = _5426 + _3991 + _4039 + _4871 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5832
                            continue 
                        mem[_3991 + _4039 + _4871 + 32] = 0
                        _5458 = mem[_2961]
                        s = 0
                        while s < _5458:
                            mem[s + _3991 + _4039 + _4871 + 32] = mem[s + _2961 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5458) <= _5458:
                            _5769 = mem[64]
                            mem[mem[64]] = _5458 + _3991 + _4039 + _4871 - mem[64]
                            mem[64] = _5458 + _3991 + _4039 + _4871 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5769
                            continue 
                        mem[_3991 + _4039 + _4871 + _5458 + 32] = 0
                        _5833 = mem[64]
                        mem[mem[64]] = _5458 + _3991 + _4039 + _4871 - mem[64]
                        mem[64] = _5458 + _3991 + _4039 + _4871 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5833
                        continue 
                    mem[_3991 + _4039 + 32] = 0
                    _4951 = mem[96]
                    s = 0
                    while s < _4951:
                        mem[s + _3991 + _4039 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4951) <= _4951:
                        _5427 = mem[_2961]
                        s = 0
                        while s < _5427:
                            mem[s + _3991 + _4039 + _4951 + 32] = mem[s + _2961 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5427) <= _5427:
                            _5770 = mem[64]
                            mem[mem[64]] = _5427 + _3991 + _4039 + _4951 - mem[64]
                            mem[64] = _5427 + _3991 + _4039 + _4951 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5770
                            continue 
                        mem[_3991 + _4039 + _4951 + _5427 + 32] = 0
                        _5834 = mem[64]
                        mem[mem[64]] = _5427 + _3991 + _4039 + _4951 - mem[64]
                        mem[64] = _5427 + _3991 + _4039 + _4951 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5834
                        continue 
                    mem[_3991 + _4039 + _4951 + 32] = 0
                    _5459 = mem[_2961]
                    s = 0
                    while s < _5459:
                        mem[s + _3991 + _4039 + _4951 + 32] = mem[s + _2961 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5459) <= _5459:
                        _5771 = mem[64]
                        mem[mem[64]] = _5459 + _3991 + _4039 + _4951 - mem[64]
                        mem[64] = _5459 + _3991 + _4039 + _4951 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5771
                        continue 
                    mem[_3991 + _4039 + _4951 + _5459 + 32] = 0
                    _5835 = mem[64]
                    mem[mem[64]] = _5459 + _3991 + _4039 + _4951 - mem[64]
                    mem[64] = _5459 + _3991 + _4039 + _4951 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5835
                    continue 
                if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                    revert with 0, 17
                if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                    revert with 0, 18
                if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2635 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2635] = 30
                mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
                    _2661 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2661 + 68] = mem[idx + _2635 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2661 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2661 + -mem[64] + 100
                if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
                    _2698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2698] = 1
                    mem[_2698 + 32] = '0'
                    _2706 = mem[64]
                    _2718 = mem[s]
                    t = 0
                    while t < _2718:
                        mem[t + _2706 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2718) <= _2718:
                        _2979 = mem[96]
                        s = 0
                        while s < _2979:
                            mem[s + _2706 + _2718 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2979) <= _2979:
                            _4036 = mem[_2698]
                            s = 0
                            while s < _4036:
                                mem[s + _2706 + _2718 + _2979 + 32] = mem[s + _2698 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4036) <= _4036:
                                _4946 = mem[64]
                                mem[mem[64]] = _4036 + _2706 + _2718 + _2979 - mem[64]
                                mem[64] = _4036 + _2706 + _2718 + _2979 + 32
                                if ceil32(_4036) == -1:
                                    revert with 0, 17
                                s = ceil32(_4036) + 1
                                s = _4946
                                continue 
                            mem[_2706 + _2718 + _2979 + _4036 + 32] = 0
                            _5048 = mem[64]
                            mem[mem[64]] = _4036 + _2706 + _2718 + _2979 - mem[64]
                            mem[64] = _4036 + _2706 + _2718 + _2979 + 32
                            if ceil32(_4036) == -1:
                                revert with 0, 17
                            s = ceil32(_4036) + 1
                            s = _5048
                            continue 
                        mem[_2706 + _2718 + _2979 + 32] = 0
                        _4090 = mem[_2698]
                        s = 0
                        while s < _4090:
                            mem[s + _2706 + _2718 + _2979 + 32] = mem[s + _2698 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4090) <= _4090:
                            _4947 = mem[64]
                            mem[mem[64]] = _4090 + _2706 + _2718 + _2979 - mem[64]
                            mem[64] = _4090 + _2706 + _2718 + _2979 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4947
                            continue 
                        mem[_2706 + _2718 + _2979 + _4090 + 32] = 0
                        _5049 = mem[64]
                        mem[mem[64]] = _4090 + _2706 + _2718 + _2979 - mem[64]
                        mem[64] = _4090 + _2706 + _2718 + _2979 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5049
                        continue 
                    mem[_2706 + _2718 + 32] = 0
                    _3027 = mem[96]
                    s = 0
                    while s < _3027:
                        mem[s + _2706 + _2718 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3027) <= _3027:
                        _4037 = mem[_2698]
                        s = 0
                        while s < _4037:
                            mem[s + _2706 + _2718 + _3027 + 32] = mem[s + _2698 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4037) <= _4037:
                            _4948 = mem[64]
                            mem[mem[64]] = _4037 + _2706 + _2718 + _3027 - mem[64]
                            mem[64] = _4037 + _2706 + _2718 + _3027 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4948
                            continue 
                        mem[_2706 + _2718 + _3027 + _4037 + 32] = 0
                        _5050 = mem[64]
                        mem[mem[64]] = _4037 + _2706 + _2718 + _3027 - mem[64]
                        mem[64] = _4037 + _2706 + _2718 + _3027 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5050
                        continue 
                    mem[_2706 + _2718 + _3027 + 32] = 0
                    _4091 = mem[_2698]
                    s = 0
                    while s < _4091:
                        mem[s + _2706 + _2718 + _3027 + 32] = mem[s + _2698 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4091) <= _4091:
                        _4949 = mem[64]
                        mem[mem[64]] = _4091 + _2706 + _2718 + _3027 - mem[64]
                        mem[64] = _4091 + _2706 + _2718 + _3027 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4949
                        continue 
                    mem[_2706 + _2718 + _3027 + _4091 + 32] = 0
                    _5051 = mem[64]
                    mem[mem[64]] = _4091 + _2706 + _2718 + _3027 - mem[64]
                    mem[64] = _4091 + _2706 + _2718 + _3027 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5051
                    continue 
                u = 0
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _2960 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_2960]:
                            revert with 0, 50
                        mem[v + _2960 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _3988 = mem[64]
                    _4034 = mem[s]
                    t = 0
                    while t < _4034:
                        mem[t + _3988 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_4034) <= _4034:
                        _4868 = mem[96]
                        s = 0
                        while s < _4868:
                            mem[s + _3988 + _4034 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_4868) <= _4868:
                            _5420 = mem[_2960]
                            s = 0
                            while s < _5420:
                                mem[s + _3988 + _4034 + _4868 + 32] = mem[s + _2960 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5420) <= _5420:
                                _5756 = mem[64]
                                mem[mem[64]] = _5420 + _3988 + _4034 + _4868 - mem[64]
                                mem[64] = _5420 + _3988 + _4034 + _4868 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5756
                                continue 
                            mem[_3988 + _4034 + _4868 + _5420 + 32] = 0
                            _5820 = mem[64]
                            mem[mem[64]] = _5420 + _3988 + _4034 + _4868 - mem[64]
                            mem[64] = _5420 + _3988 + _4034 + _4868 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5820
                            continue 
                        mem[_3988 + _4034 + _4868 + 32] = 0
                        _5452 = mem[_2960]
                        s = 0
                        while s < _5452:
                            mem[s + _3988 + _4034 + _4868 + 32] = mem[s + _2960 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5452) <= _5452:
                            _5757 = mem[64]
                            mem[mem[64]] = _5452 + _3988 + _4034 + _4868 - mem[64]
                            mem[64] = _5452 + _3988 + _4034 + _4868 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5757
                            continue 
                        mem[_3988 + _4034 + _4868 + _5452 + 32] = 0
                        _5821 = mem[64]
                        mem[mem[64]] = _5452 + _3988 + _4034 + _4868 - mem[64]
                        mem[64] = _5452 + _3988 + _4034 + _4868 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5821
                        continue 
                    mem[_3988 + _4034 + 32] = 0
                    _4944 = mem[96]
                    s = 0
                    while s < _4944:
                        mem[s + _3988 + _4034 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4944) <= _4944:
                        _5421 = mem[_2960]
                        s = 0
                        while s < _5421:
                            mem[s + _3988 + _4034 + _4944 + 32] = mem[s + _2960 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5421) <= _5421:
                            _5758 = mem[64]
                            mem[mem[64]] = _5421 + _3988 + _4034 + _4944 - mem[64]
                            mem[64] = _5421 + _3988 + _4034 + _4944 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5758
                            continue 
                        mem[_3988 + _4034 + _4944 + _5421 + 32] = 0
                        _5822 = mem[64]
                        mem[mem[64]] = _5421 + _3988 + _4034 + _4944 - mem[64]
                        mem[64] = _5421 + _3988 + _4034 + _4944 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5822
                        continue 
                    mem[_3988 + _4034 + _4944 + 32] = 0
                    _5453 = mem[_2960]
                    s = 0
                    while s < _5453:
                        mem[s + _3988 + _4034 + _4944 + 32] = mem[s + _2960 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5453) <= _5453:
                        _5759 = mem[64]
                        mem[mem[64]] = _5453 + _3988 + _4034 + _4944 - mem[64]
                        mem[64] = _5453 + _3988 + _4034 + _4944 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5759
                        continue 
                    mem[_3988 + _4034 + _4944 + _5453 + 32] = 0
                    _5823 = mem[64]
                    mem[mem[64]] = _5453 + _3988 + _4034 + _4944 - mem[64]
                    mem[64] = _5453 + _3988 + _4034 + _4944 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5823
                    continue 
                mem[_2960 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_2960]:
                        revert with 0, 50
                    mem[v + _2960 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _3989 = mem[64]
                _4035 = mem[s]
                t = 0
                while t < _4035:
                    mem[t + _3989 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_4035) <= _4035:
                    _4869 = mem[96]
                    s = 0
                    while s < _4869:
                        mem[s + _3989 + _4035 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4869) <= _4869:
                        _5422 = mem[_2960]
                        s = 0
                        while s < _5422:
                            mem[s + _3989 + _4035 + _4869 + 32] = mem[s + _2960 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5422) <= _5422:
                            _5760 = mem[64]
                            mem[mem[64]] = _5422 + _3989 + _4035 + _4869 - mem[64]
                            mem[64] = _5422 + _3989 + _4035 + _4869 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5760
                            continue 
                        mem[_3989 + _4035 + _4869 + _5422 + 32] = 0
                        _5824 = mem[64]
                        mem[mem[64]] = _5422 + _3989 + _4035 + _4869 - mem[64]
                        mem[64] = _5422 + _3989 + _4035 + _4869 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5824
                        continue 
                    mem[_3989 + _4035 + _4869 + 32] = 0
                    _5454 = mem[_2960]
                    s = 0
                    while s < _5454:
                        mem[s + _3989 + _4035 + _4869 + 32] = mem[s + _2960 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5454) <= _5454:
                        _5761 = mem[64]
                        mem[mem[64]] = _5454 + _3989 + _4035 + _4869 - mem[64]
                        mem[64] = _5454 + _3989 + _4035 + _4869 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5761
                        continue 
                    mem[_3989 + _4035 + _4869 + _5454 + 32] = 0
                    _5825 = mem[64]
                    mem[mem[64]] = _5454 + _3989 + _4035 + _4869 - mem[64]
                    mem[64] = _5454 + _3989 + _4035 + _4869 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5825
                    continue 
                mem[_3989 + _4035 + 32] = 0
                _4945 = mem[96]
                s = 0
                while s < _4945:
                    mem[s + _3989 + _4035 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4945) <= _4945:
                    _5423 = mem[_2960]
                    s = 0
                    while s < _5423:
                        mem[s + _3989 + _4035 + _4945 + 32] = mem[s + _2960 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5423) <= _5423:
                        _5762 = mem[64]
                        mem[mem[64]] = _5423 + _3989 + _4035 + _4945 - mem[64]
                        mem[64] = _5423 + _3989 + _4035 + _4945 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5762
                        continue 
                    mem[_3989 + _4035 + _4945 + _5423 + 32] = 0
                    _5826 = mem[64]
                    mem[mem[64]] = _5423 + _3989 + _4035 + _4945 - mem[64]
                    mem[64] = _5423 + _3989 + _4035 + _4945 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5826
                    continue 
                mem[_3989 + _4035 + _4945 + 32] = 0
                _5455 = mem[_2960]
                s = 0
                while s < _5455:
                    mem[s + _3989 + _4035 + _4945 + 32] = mem[s + _2960 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5455) <= _5455:
                    _5763 = mem[64]
                    mem[mem[64]] = _5455 + _3989 + _4035 + _4945 - mem[64]
                    mem[64] = _5455 + _3989 + _4035 + _4945 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5763
                    continue 
                mem[_3989 + _4035 + _4945 + _5455 + 32] = 0
                _5827 = mem[64]
                mem[mem[64]] = _5455 + _3989 + _4035 + _4945 - mem[64]
                mem[64] = _5455 + _3989 + _4035 + _4945 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5827
                continue 
            mem[mem[64]] = 32
            _2112 = mem[s]
            mem[mem[64] + 32] = mem[s]
            mem[mem[64] + 64 len ceil32(_2112)] = mem[s + 32 len ceil32(_2112)]
            if ceil32(_2112) > _2112:
                mem[mem[64] + _2112 + 64] = 0
            return 32, mem[mem[64] + 32 len ceil32(_2112) + 32]
        mem[320 len s] = call.data[calldata.size len s]
        t = s
        idx = -stor3[address(arg1)].field_768
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[288]:
                revert with 0, 50
            mem[t + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        idx = 1
        s = 288
        while idx < sub_05b707ff[address(arg1)]:
            if idx > sub_05b707ff[address(arg1)]:
                revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
            mem[0] = address(arg1)
            mem[32] = 4
            if not sub_05b707ff[address(arg1)]:
                _2285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2285] = 1
                mem[_2285 + 32] = '0'
                _2314 = mem[64]
                _2331 = mem[s]
                t = 0
                while t < _2331:
                    mem[t + _2314 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2331) <= _2331:
                    _2981 = mem[96]
                    s = 0
                    while s < _2981:
                        mem[s + _2314 + _2331 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2981) <= _2981:
                        _4042 = mem[_2285]
                        s = 0
                        while s < _4042:
                            mem[s + _2314 + _2331 + _2981 + 32] = mem[s + _2285 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4042) <= _4042:
                            _4956 = mem[64]
                            mem[mem[64]] = _4042 + _2314 + _2331 + _2981 - mem[64]
                            mem[64] = _4042 + _2314 + _2331 + _2981 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4956
                            continue 
                        mem[_2314 + _2331 + _2981 + _4042 + 32] = 0
                        _5056 = mem[64]
                        mem[mem[64]] = _4042 + _2314 + _2331 + _2981 - mem[64]
                        mem[64] = _4042 + _2314 + _2331 + _2981 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5056
                        continue 
                    mem[_2314 + _2331 + _2981 + 32] = 0
                    _4094 = mem[_2285]
                    s = 0
                    while s < _4094:
                        mem[s + _2314 + _2331 + _2981 + 32] = mem[s + _2285 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4094) <= _4094:
                        _4957 = mem[64]
                        mem[mem[64]] = _4094 + _2314 + _2331 + _2981 - mem[64]
                        mem[64] = _4094 + _2314 + _2331 + _2981 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4957
                        continue 
                    mem[_2314 + _2331 + _2981 + _4094 + 32] = 0
                    _5057 = mem[64]
                    mem[mem[64]] = _4094 + _2314 + _2331 + _2981 - mem[64]
                    mem[64] = _4094 + _2314 + _2331 + _2981 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5057
                    continue 
                mem[_2314 + _2331 + 32] = 0
                _3029 = mem[96]
                s = 0
                while s < _3029:
                    mem[s + _2314 + _2331 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3029) <= _3029:
                    _4043 = mem[_2285]
                    s = 0
                    while s < _4043:
                        mem[s + _2314 + _2331 + _3029 + 32] = mem[s + _2285 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4043) <= _4043:
                        _4958 = mem[64]
                        mem[mem[64]] = _4043 + _2314 + _2331 + _3029 - mem[64]
                        mem[64] = _4043 + _2314 + _2331 + _3029 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4958
                        continue 
                    mem[_2314 + _2331 + _3029 + _4043 + 32] = 0
                    _5058 = mem[64]
                    mem[mem[64]] = _4043 + _2314 + _2331 + _3029 - mem[64]
                    mem[64] = _4043 + _2314 + _2331 + _3029 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5058
                    continue 
                mem[_2314 + _2331 + _3029 + 32] = 0
                _4095 = mem[_2285]
                s = 0
                while s < _4095:
                    mem[s + _2314 + _2331 + _3029 + 32] = mem[s + _2285 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4095) <= _4095:
                    _4959 = mem[64]
                    mem[mem[64]] = _4095 + _2314 + _2331 + _3029 - mem[64]
                    mem[64] = _4095 + _2314 + _2331 + _3029 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4959
                    continue 
                mem[_2314 + _2331 + _3029 + _4095 + 32] = 0
                _5059 = mem[64]
                mem[mem[64]] = _4095 + _2314 + _2331 + _3029 - mem[64]
                mem[64] = _4095 + _2314 + _2331 + _3029 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5059
                continue 
            if idx >= stor3[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 3)
            if block.timestamp < stor3[address(arg1)][idx].field_256:
                revert with 0, 17
            _2315 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2315] = 26
            mem[_2315 + 32] = 'SafeMath: division by zero'
            if not sub_94471c42:
                _2355 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2355 + 68] = mem[idx + _2315 + 32]
                    idx = idx + 32
                    continue 
                mem[_2355 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2355 + -mem[64] + 100
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                _2582 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2582] = 30
                mem[_2582 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(arg1)][idx].field_768 > 0:
                    _2595 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2595 + 68] = mem[idx + _2582 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2595 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2595 + -mem[64] + 100
                if 0 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not -stor3[address(arg1)][idx].field_768:
                    _2671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2671] = 1
                    mem[_2671 + 32] = '0'
                    _2678 = mem[64]
                    _2686 = mem[s]
                    t = 0
                    while t < _2686:
                        mem[t + _2678 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2686) <= _2686:
                        _2983 = mem[96]
                        s = 0
                        while s < _2983:
                            mem[s + _2678 + _2686 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2983) <= _2983:
                            _4050 = mem[_2671]
                            s = 0
                            while s < _4050:
                                mem[s + _2678 + _2686 + _2983 + 32] = mem[s + _2671 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4050) <= _4050:
                                _4968 = mem[64]
                                mem[mem[64]] = _4050 + _2678 + _2686 + _2983 - mem[64]
                                mem[64] = _4050 + _2678 + _2686 + _2983 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4968
                                continue 
                            mem[_2678 + _2686 + _2983 + _4050 + 32] = 0
                            _5064 = mem[64]
                            mem[mem[64]] = _4050 + _2678 + _2686 + _2983 - mem[64]
                            mem[64] = _4050 + _2678 + _2686 + _2983 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5064
                            continue 
                        mem[_2678 + _2686 + _2983 + 32] = 0
                        _4098 = mem[_2671]
                        s = 0
                        while s < _4098:
                            mem[s + _2678 + _2686 + _2983 + 32] = mem[s + _2671 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4098) <= _4098:
                            _4969 = mem[64]
                            mem[mem[64]] = _4098 + _2678 + _2686 + _2983 - mem[64]
                            mem[64] = _4098 + _2678 + _2686 + _2983 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4969
                            continue 
                        mem[_2678 + _2686 + _2983 + _4098 + 32] = 0
                        _5065 = mem[64]
                        mem[mem[64]] = _4098 + _2678 + _2686 + _2983 - mem[64]
                        mem[64] = _4098 + _2678 + _2686 + _2983 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5065
                        continue 
                    mem[_2678 + _2686 + 32] = 0
                    _3031 = mem[96]
                    s = 0
                    while s < _3031:
                        mem[s + _2678 + _2686 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3031) <= _3031:
                        _4051 = mem[_2671]
                        s = 0
                        while s < _4051:
                            mem[s + _2678 + _2686 + _3031 + 32] = mem[s + _2671 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4051) <= _4051:
                            _4970 = mem[64]
                            mem[mem[64]] = _4051 + _2678 + _2686 + _3031 - mem[64]
                            mem[64] = _4051 + _2678 + _2686 + _3031 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4970
                            continue 
                        mem[_2678 + _2686 + _3031 + _4051 + 32] = 0
                        _5066 = mem[64]
                        mem[mem[64]] = _4051 + _2678 + _2686 + _3031 - mem[64]
                        mem[64] = _4051 + _2678 + _2686 + _3031 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5066
                        continue 
                    mem[_2678 + _2686 + _3031 + 32] = 0
                    _4099 = mem[_2671]
                    s = 0
                    while s < _4099:
                        mem[s + _2678 + _2686 + _3031 + 32] = mem[s + _2671 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4099) <= _4099:
                        _4971 = mem[64]
                        mem[mem[64]] = _4099 + _2678 + _2686 + _3031 - mem[64]
                        mem[64] = _4099 + _2678 + _2686 + _3031 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4971
                        continue 
                    mem[_2678 + _2686 + _3031 + _4099 + 32] = 0
                    _5067 = mem[64]
                    mem[mem[64]] = _4099 + _2678 + _2686 + _3031 - mem[64]
                    mem[64] = _4099 + _2678 + _2686 + _3031 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5067
                    continue 
                u = 0
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _2963 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_2963]:
                            revert with 0, 50
                        mem[v + _2963 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _3994 = mem[64]
                    _4048 = mem[s]
                    t = 0
                    while t < _4048:
                        mem[t + _3994 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_4048) <= _4048:
                        _4874 = mem[96]
                        s = 0
                        while s < _4874:
                            mem[s + _3994 + _4048 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_4874) <= _4874:
                            _5432 = mem[_2963]
                            s = 0
                            while s < _5432:
                                mem[s + _3994 + _4048 + _4874 + 32] = mem[s + _2963 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5432) <= _5432:
                                _5780 = mem[64]
                                mem[mem[64]] = _5432 + _3994 + _4048 + _4874 - mem[64]
                                mem[64] = _5432 + _3994 + _4048 + _4874 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5780
                                continue 
                            mem[_3994 + _4048 + _4874 + _5432 + 32] = 0
                            _5844 = mem[64]
                            mem[mem[64]] = _5432 + _3994 + _4048 + _4874 - mem[64]
                            mem[64] = _5432 + _3994 + _4048 + _4874 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5844
                            continue 
                        mem[_3994 + _4048 + _4874 + 32] = 0
                        _5464 = mem[_2963]
                        s = 0
                        while s < _5464:
                            mem[s + _3994 + _4048 + _4874 + 32] = mem[s + _2963 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5464) <= _5464:
                            _5781 = mem[64]
                            mem[mem[64]] = _5464 + _3994 + _4048 + _4874 - mem[64]
                            mem[64] = _5464 + _3994 + _4048 + _4874 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5781
                            continue 
                        mem[_3994 + _4048 + _4874 + _5464 + 32] = 0
                        _5845 = mem[64]
                        mem[mem[64]] = _5464 + _3994 + _4048 + _4874 - mem[64]
                        mem[64] = _5464 + _3994 + _4048 + _4874 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5845
                        continue 
                    mem[_3994 + _4048 + 32] = 0
                    _4966 = mem[96]
                    s = 0
                    while s < _4966:
                        mem[s + _3994 + _4048 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4966) <= _4966:
                        _5433 = mem[_2963]
                        s = 0
                        while s < _5433:
                            mem[s + _3994 + _4048 + _4966 + 32] = mem[s + _2963 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5433) <= _5433:
                            _5782 = mem[64]
                            mem[mem[64]] = _5433 + _3994 + _4048 + _4966 - mem[64]
                            mem[64] = _5433 + _3994 + _4048 + _4966 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5782
                            continue 
                        mem[_3994 + _4048 + _4966 + _5433 + 32] = 0
                        _5846 = mem[64]
                        mem[mem[64]] = _5433 + _3994 + _4048 + _4966 - mem[64]
                        mem[64] = _5433 + _3994 + _4048 + _4966 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5846
                        continue 
                    mem[_3994 + _4048 + _4966 + 32] = 0
                    _5465 = mem[_2963]
                    s = 0
                    while s < _5465:
                        mem[s + _3994 + _4048 + _4966 + 32] = mem[s + _2963 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5465) <= _5465:
                        _5783 = mem[64]
                        mem[mem[64]] = _5465 + _3994 + _4048 + _4966 - mem[64]
                        mem[64] = _5465 + _3994 + _4048 + _4966 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5783
                        continue 
                    mem[_3994 + _4048 + _4966 + _5465 + 32] = 0
                    _5847 = mem[64]
                    mem[mem[64]] = _5465 + _3994 + _4048 + _4966 - mem[64]
                    mem[64] = _5465 + _3994 + _4048 + _4966 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5847
                    continue 
                mem[_2963 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_2963]:
                        revert with 0, 50
                    mem[v + _2963 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _3995 = mem[64]
                _4049 = mem[s]
                t = 0
                while t < _4049:
                    mem[t + _3995 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_4049) <= _4049:
                    _4875 = mem[96]
                    s = 0
                    while s < _4875:
                        mem[s + _3995 + _4049 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4875) <= _4875:
                        _5434 = mem[_2963]
                        s = 0
                        while s < _5434:
                            mem[s + _3995 + _4049 + _4875 + 32] = mem[s + _2963 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5434) <= _5434:
                            _5784 = mem[64]
                            mem[mem[64]] = _5434 + _3995 + _4049 + _4875 - mem[64]
                            mem[64] = _5434 + _3995 + _4049 + _4875 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5784
                            continue 
                        mem[_3995 + _4049 + _4875 + _5434 + 32] = 0
                        _5848 = mem[64]
                        mem[mem[64]] = _5434 + _3995 + _4049 + _4875 - mem[64]
                        mem[64] = _5434 + _3995 + _4049 + _4875 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5848
                        continue 
                    mem[_3995 + _4049 + _4875 + 32] = 0
                    _5466 = mem[_2963]
                    s = 0
                    while s < _5466:
                        mem[s + _3995 + _4049 + _4875 + 32] = mem[s + _2963 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5466) <= _5466:
                        _5785 = mem[64]
                        mem[mem[64]] = _5466 + _3995 + _4049 + _4875 - mem[64]
                        mem[64] = _5466 + _3995 + _4049 + _4875 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5785
                        continue 
                    mem[_3995 + _4049 + _4875 + _5466 + 32] = 0
                    _5849 = mem[64]
                    mem[mem[64]] = _5466 + _3995 + _4049 + _4875 - mem[64]
                    mem[64] = _5466 + _3995 + _4049 + _4875 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5849
                    continue 
                mem[_3995 + _4049 + 32] = 0
                _4967 = mem[96]
                s = 0
                while s < _4967:
                    mem[s + _3995 + _4049 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4967) <= _4967:
                    _5435 = mem[_2963]
                    s = 0
                    while s < _5435:
                        mem[s + _3995 + _4049 + _4967 + 32] = mem[s + _2963 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5435) <= _5435:
                        _5786 = mem[64]
                        mem[mem[64]] = _5435 + _3995 + _4049 + _4967 - mem[64]
                        mem[64] = _5435 + _3995 + _4049 + _4967 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5786
                        continue 
                    mem[_3995 + _4049 + _4967 + _5435 + 32] = 0
                    _5850 = mem[64]
                    mem[mem[64]] = _5435 + _3995 + _4049 + _4967 - mem[64]
                    mem[64] = _5435 + _3995 + _4049 + _4967 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5850
                    continue 
                mem[_3995 + _4049 + _4967 + 32] = 0
                _5467 = mem[_2963]
                s = 0
                while s < _5467:
                    mem[s + _3995 + _4049 + _4967 + 32] = mem[s + _2963 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5467) <= _5467:
                    _5787 = mem[64]
                    mem[mem[64]] = _5467 + _3995 + _4049 + _4967 - mem[64]
                    mem[64] = _5467 + _3995 + _4049 + _4967 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5787
                    continue 
                mem[_3995 + _4049 + _4967 + _5467 + 32] = 0
                _5851 = mem[64]
                mem[mem[64]] = _5467 + _3995 + _4049 + _4967 - mem[64]
                mem[64] = _5467 + _3995 + _4049 + _4967 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5851
                continue 
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 17
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 18
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _2639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2639] = 30
            mem[_2639 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
                _2663 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2663 + 68] = mem[idx + _2639 + 32]
                    idx = idx + 32
                    continue 
                mem[_2663 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2663 + -mem[64] + 100
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
                _2699 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2699] = 1
                mem[_2699 + 32] = '0'
                _2709 = mem[64]
                _2721 = mem[s]
                t = 0
                while t < _2721:
                    mem[t + _2709 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2721) <= _2721:
                    _2982 = mem[96]
                    s = 0
                    while s < _2982:
                        mem[s + _2709 + _2721 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2982) <= _2982:
                        _4046 = mem[_2699]
                        s = 0
                        while s < _4046:
                            mem[s + _2709 + _2721 + _2982 + 32] = mem[s + _2699 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4046) <= _4046:
                            _4962 = mem[64]
                            mem[mem[64]] = _4046 + _2709 + _2721 + _2982 - mem[64]
                            mem[64] = _4046 + _2709 + _2721 + _2982 + 32
                            if ceil32(_4046) == -1:
                                revert with 0, 17
                            s = ceil32(_4046) + 1
                            s = _4962
                            continue 
                        mem[_2709 + _2721 + _2982 + _4046 + 32] = 0
                        _5060 = mem[64]
                        mem[mem[64]] = _4046 + _2709 + _2721 + _2982 - mem[64]
                        mem[64] = _4046 + _2709 + _2721 + _2982 + 32
                        if ceil32(_4046) == -1:
                            revert with 0, 17
                        s = ceil32(_4046) + 1
                        s = _5060
                        continue 
                    mem[_2709 + _2721 + _2982 + 32] = 0
                    _4096 = mem[_2699]
                    s = 0
                    while s < _4096:
                        mem[s + _2709 + _2721 + _2982 + 32] = mem[s + _2699 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4096) <= _4096:
                        _4963 = mem[64]
                        mem[mem[64]] = _4096 + _2709 + _2721 + _2982 - mem[64]
                        mem[64] = _4096 + _2709 + _2721 + _2982 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4963
                        continue 
                    mem[_2709 + _2721 + _2982 + _4096 + 32] = 0
                    _5061 = mem[64]
                    mem[mem[64]] = _4096 + _2709 + _2721 + _2982 - mem[64]
                    mem[64] = _4096 + _2709 + _2721 + _2982 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5061
                    continue 
                mem[_2709 + _2721 + 32] = 0
                _3030 = mem[96]
                s = 0
                while s < _3030:
                    mem[s + _2709 + _2721 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3030) <= _3030:
                    _4047 = mem[_2699]
                    s = 0
                    while s < _4047:
                        mem[s + _2709 + _2721 + _3030 + 32] = mem[s + _2699 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4047) <= _4047:
                        _4964 = mem[64]
                        mem[mem[64]] = _4047 + _2709 + _2721 + _3030 - mem[64]
                        mem[64] = _4047 + _2709 + _2721 + _3030 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4964
                        continue 
                    mem[_2709 + _2721 + _3030 + _4047 + 32] = 0
                    _5062 = mem[64]
                    mem[mem[64]] = _4047 + _2709 + _2721 + _3030 - mem[64]
                    mem[64] = _4047 + _2709 + _2721 + _3030 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5062
                    continue 
                mem[_2709 + _2721 + _3030 + 32] = 0
                _4097 = mem[_2699]
                s = 0
                while s < _4097:
                    mem[s + _2709 + _2721 + _3030 + 32] = mem[s + _2699 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4097) <= _4097:
                    _4965 = mem[64]
                    mem[mem[64]] = _4097 + _2709 + _2721 + _3030 - mem[64]
                    mem[64] = _4097 + _2709 + _2721 + _3030 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4965
                    continue 
                mem[_2709 + _2721 + _3030 + _4097 + 32] = 0
                _5063 = mem[64]
                mem[mem[64]] = _4097 + _2709 + _2721 + _3030 - mem[64]
                mem[64] = _4097 + _2709 + _2721 + _3030 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5063
                continue 
            u = 0
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _2962 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_2962]:
                        revert with 0, 50
                    mem[v + _2962 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _3992 = mem[64]
                _4044 = mem[s]
                t = 0
                while t < _4044:
                    mem[t + _3992 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_4044) <= _4044:
                    _4872 = mem[96]
                    s = 0
                    while s < _4872:
                        mem[s + _3992 + _4044 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4872) <= _4872:
                        _5428 = mem[_2962]
                        s = 0
                        while s < _5428:
                            mem[s + _3992 + _4044 + _4872 + 32] = mem[s + _2962 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5428) <= _5428:
                            _5772 = mem[64]
                            mem[mem[64]] = _5428 + _3992 + _4044 + _4872 - mem[64]
                            mem[64] = _5428 + _3992 + _4044 + _4872 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5772
                            continue 
                        mem[_3992 + _4044 + _4872 + _5428 + 32] = 0
                        _5836 = mem[64]
                        mem[mem[64]] = _5428 + _3992 + _4044 + _4872 - mem[64]
                        mem[64] = _5428 + _3992 + _4044 + _4872 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5836
                        continue 
                    mem[_3992 + _4044 + _4872 + 32] = 0
                    _5460 = mem[_2962]
                    s = 0
                    while s < _5460:
                        mem[s + _3992 + _4044 + _4872 + 32] = mem[s + _2962 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5460) <= _5460:
                        _5773 = mem[64]
                        mem[mem[64]] = _5460 + _3992 + _4044 + _4872 - mem[64]
                        mem[64] = _5460 + _3992 + _4044 + _4872 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5773
                        continue 
                    mem[_3992 + _4044 + _4872 + _5460 + 32] = 0
                    _5837 = mem[64]
                    mem[mem[64]] = _5460 + _3992 + _4044 + _4872 - mem[64]
                    mem[64] = _5460 + _3992 + _4044 + _4872 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5837
                    continue 
                mem[_3992 + _4044 + 32] = 0
                _4960 = mem[96]
                s = 0
                while s < _4960:
                    mem[s + _3992 + _4044 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4960) <= _4960:
                    _5429 = mem[_2962]
                    s = 0
                    while s < _5429:
                        mem[s + _3992 + _4044 + _4960 + 32] = mem[s + _2962 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5429) <= _5429:
                        _5774 = mem[64]
                        mem[mem[64]] = _5429 + _3992 + _4044 + _4960 - mem[64]
                        mem[64] = _5429 + _3992 + _4044 + _4960 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5774
                        continue 
                    mem[_3992 + _4044 + _4960 + _5429 + 32] = 0
                    _5838 = mem[64]
                    mem[mem[64]] = _5429 + _3992 + _4044 + _4960 - mem[64]
                    mem[64] = _5429 + _3992 + _4044 + _4960 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5838
                    continue 
                mem[_3992 + _4044 + _4960 + 32] = 0
                _5461 = mem[_2962]
                s = 0
                while s < _5461:
                    mem[s + _3992 + _4044 + _4960 + 32] = mem[s + _2962 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5461) <= _5461:
                    _5775 = mem[64]
                    mem[mem[64]] = _5461 + _3992 + _4044 + _4960 - mem[64]
                    mem[64] = _5461 + _3992 + _4044 + _4960 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5775
                    continue 
                mem[_3992 + _4044 + _4960 + _5461 + 32] = 0
                _5839 = mem[64]
                mem[mem[64]] = _5461 + _3992 + _4044 + _4960 - mem[64]
                mem[64] = _5461 + _3992 + _4044 + _4960 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5839
                continue 
            mem[_2962 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_2962]:
                    revert with 0, 50
                mem[v + _2962 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _3993 = mem[64]
            _4045 = mem[s]
            t = 0
            while t < _4045:
                mem[t + _3993 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_4045) <= _4045:
                _4873 = mem[96]
                s = 0
                while s < _4873:
                    mem[s + _3993 + _4045 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4873) <= _4873:
                    _5430 = mem[_2962]
                    s = 0
                    while s < _5430:
                        mem[s + _3993 + _4045 + _4873 + 32] = mem[s + _2962 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5430) <= _5430:
                        _5776 = mem[64]
                        mem[mem[64]] = _5430 + _3993 + _4045 + _4873 - mem[64]
                        mem[64] = _5430 + _3993 + _4045 + _4873 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5776
                        continue 
                    mem[_3993 + _4045 + _4873 + _5430 + 32] = 0
                    _5840 = mem[64]
                    mem[mem[64]] = _5430 + _3993 + _4045 + _4873 - mem[64]
                    mem[64] = _5430 + _3993 + _4045 + _4873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5840
                    continue 
                mem[_3993 + _4045 + _4873 + 32] = 0
                _5462 = mem[_2962]
                s = 0
                while s < _5462:
                    mem[s + _3993 + _4045 + _4873 + 32] = mem[s + _2962 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5462) <= _5462:
                    _5777 = mem[64]
                    mem[mem[64]] = _5462 + _3993 + _4045 + _4873 - mem[64]
                    mem[64] = _5462 + _3993 + _4045 + _4873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5777
                    continue 
                mem[_3993 + _4045 + _4873 + _5462 + 32] = 0
                _5841 = mem[64]
                mem[mem[64]] = _5462 + _3993 + _4045 + _4873 - mem[64]
                mem[64] = _5462 + _3993 + _4045 + _4873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5841
                continue 
            mem[_3993 + _4045 + 32] = 0
            _4961 = mem[96]
            s = 0
            while s < _4961:
                mem[s + _3993 + _4045 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_4961) <= _4961:
                _5431 = mem[_2962]
                s = 0
                while s < _5431:
                    mem[s + _3993 + _4045 + _4961 + 32] = mem[s + _2962 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5431) <= _5431:
                    _5778 = mem[64]
                    mem[mem[64]] = _5431 + _3993 + _4045 + _4961 - mem[64]
                    mem[64] = _5431 + _3993 + _4045 + _4961 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5778
                    continue 
                mem[_3993 + _4045 + _4961 + _5431 + 32] = 0
                _5842 = mem[64]
                mem[mem[64]] = _5431 + _3993 + _4045 + _4961 - mem[64]
                mem[64] = _5431 + _3993 + _4045 + _4961 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5842
                continue 
            mem[_3993 + _4045 + _4961 + 32] = 0
            _5463 = mem[_2962]
            s = 0
            while s < _5463:
                mem[s + _3993 + _4045 + _4961 + 32] = mem[s + _2962 + 32]
                s = s + 32
                continue 
            if ceil32(_5463) <= _5463:
                _5779 = mem[64]
                mem[mem[64]] = _5463 + _3993 + _4045 + _4961 - mem[64]
                mem[64] = _5463 + _3993 + _4045 + _4961 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5779
                continue 
            mem[_3993 + _4045 + _4961 + _5463 + 32] = 0
            _5843 = mem[64]
            mem[mem[64]] = _5463 + _3993 + _4045 + _4961 - mem[64]
            mem[64] = _5463 + _3993 + _4045 + _4961 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5843
            continue 
        mem[mem[64]] = 32
        _2115 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_2115)] = mem[s + 32 len ceil32(_2115)]
        if ceil32(_2115) > _2115:
            mem[mem[64] + _2115 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_2115) + 32]
    if block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 and stor3[address(arg1)].field_1024 > -1 / block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42:
        revert with 0, 17
    if not block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42:
        revert with 0, 18
    if block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024 / block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 != stor3[address(arg1)].field_1024:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[224] = 30
    mem[256] = 'SafeMath: subtraction overflow'
    if stor3[address(arg1)].field_768 > block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024 < stor3[address(arg1)].field_768:
        revert with 0, 17
    if not (block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024) - stor3[address(arg1)].field_768:
        mem[64] = 352
        mem[288] = 1
        mem[320] = '0'
        idx = 1
        s = 288
        while idx < sub_05b707ff[address(arg1)]:
            if idx > sub_05b707ff[address(arg1)]:
                revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
            mem[0] = address(arg1)
            mem[32] = 4
            if not sub_05b707ff[address(arg1)]:
                _406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_406] = 1
                mem[_406 + 32] = '0'
                _420 = mem[64]
                _429 = mem[s]
                t = 0
                while t < _429:
                    mem[t + _420 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_429) <= _429:
                    _1113 = mem[96]
                    s = 0
                    while s < _1113:
                        mem[s + _420 + _429 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1113) <= _1113:
                        _2072 = mem[_406]
                        s = 0
                        while s < _2072:
                            mem[s + _420 + _429 + _1113 + 32] = mem[s + _406 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2072) <= _2072:
                            _3010 = mem[64]
                            mem[mem[64]] = _2072 + _420 + _429 + _1113 - mem[64]
                            mem[64] = _2072 + _420 + _429 + _1113 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3010
                            continue 
                        mem[_420 + _429 + _1113 + _2072 + 32] = 0
                        _3068 = mem[64]
                        mem[mem[64]] = _2072 + _420 + _429 + _1113 - mem[64]
                        mem[64] = _2072 + _420 + _429 + _1113 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3068
                        continue 
                    mem[_420 + _429 + _1113 + 32] = 0
                    _2106 = mem[_406]
                    s = 0
                    while s < _2106:
                        mem[s + _420 + _429 + _1113 + 32] = mem[s + _406 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2106) <= _2106:
                        _3011 = mem[64]
                        mem[mem[64]] = _2106 + _420 + _429 + _1113 - mem[64]
                        mem[64] = _2106 + _420 + _429 + _1113 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3011
                        continue 
                    mem[_420 + _429 + _1113 + _2106 + 32] = 0
                    _3069 = mem[64]
                    mem[mem[64]] = _2106 + _420 + _429 + _1113 - mem[64]
                    mem[64] = _2106 + _420 + _429 + _1113 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3069
                    continue 
                mem[_420 + _429 + 32] = 0
                _1122 = mem[96]
                s = 0
                while s < _1122:
                    mem[s + _420 + _429 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_1122) <= _1122:
                    _2073 = mem[_406]
                    s = 0
                    while s < _2073:
                        mem[s + _420 + _429 + _1122 + 32] = mem[s + _406 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2073) <= _2073:
                        _3012 = mem[64]
                        mem[mem[64]] = _2073 + _420 + _429 + _1122 - mem[64]
                        mem[64] = _2073 + _420 + _429 + _1122 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3012
                        continue 
                    mem[_420 + _429 + _1122 + _2073 + 32] = 0
                    _3070 = mem[64]
                    mem[mem[64]] = _2073 + _420 + _429 + _1122 - mem[64]
                    mem[64] = _2073 + _420 + _429 + _1122 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3070
                    continue 
                mem[_420 + _429 + _1122 + 32] = 0
                _2107 = mem[_406]
                s = 0
                while s < _2107:
                    mem[s + _420 + _429 + _1122 + 32] = mem[s + _406 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2107) <= _2107:
                    _3013 = mem[64]
                    mem[mem[64]] = _2107 + _420 + _429 + _1122 - mem[64]
                    mem[64] = _2107 + _420 + _429 + _1122 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3013
                    continue 
                mem[_420 + _429 + _1122 + _2107 + 32] = 0
                _3071 = mem[64]
                mem[mem[64]] = _2107 + _420 + _429 + _1122 - mem[64]
                mem[64] = _2107 + _420 + _429 + _1122 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3071
                continue 
            if idx >= stor3[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 3)
            if block.timestamp < stor3[address(arg1)][idx].field_256:
                revert with 0, 17
            _421 = mem[64]
            mem[64] = mem[64] + 64
            mem[_421] = 26
            mem[_421 + 32] = 'SafeMath: division by zero'
            if not sub_94471c42:
                _433 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _433 + 68] = mem[idx + _421 + 32]
                    idx = idx + 32
                    continue 
                mem[_433 + 94] = 0
                revert with memory
                  from mem[64]
                   len _433 + -mem[64] + 100
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                _513 = mem[64]
                mem[64] = mem[64] + 64
                mem[_513] = 30
                mem[_513 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(arg1)][idx].field_768 > 0:
                    _532 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _532 + 68] = mem[idx + _513 + 32]
                        idx = idx + 32
                        continue 
                    mem[_532 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _532 + -mem[64] + 100
                if 0 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not -stor3[address(arg1)][idx].field_768:
                    _640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_640] = 1
                    mem[_640 + 32] = '0'
                    _654 = mem[64]
                    _670 = mem[s]
                    t = 0
                    while t < _670:
                        mem[t + _654 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_670) <= _670:
                        _1115 = mem[96]
                        s = 0
                        while s < _1115:
                            mem[s + _654 + _670 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_1115) <= _1115:
                            _2080 = mem[_640]
                            s = 0
                            while s < _2080:
                                mem[s + _654 + _670 + _1115 + 32] = mem[s + _640 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2080) <= _2080:
                                _3022 = mem[64]
                                mem[mem[64]] = _2080 + _654 + _670 + _1115 - mem[64]
                                mem[64] = _2080 + _654 + _670 + _1115 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _3022
                                continue 
                            mem[_654 + _670 + _1115 + _2080 + 32] = 0
                            _3076 = mem[64]
                            mem[mem[64]] = _2080 + _654 + _670 + _1115 - mem[64]
                            mem[64] = _2080 + _654 + _670 + _1115 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3076
                            continue 
                        mem[_654 + _670 + _1115 + 32] = 0
                        _2110 = mem[_640]
                        s = 0
                        while s < _2110:
                            mem[s + _654 + _670 + _1115 + 32] = mem[s + _640 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2110) <= _2110:
                            _3023 = mem[64]
                            mem[mem[64]] = _2110 + _654 + _670 + _1115 - mem[64]
                            mem[64] = _2110 + _654 + _670 + _1115 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3023
                            continue 
                        mem[_654 + _670 + _1115 + _2110 + 32] = 0
                        _3077 = mem[64]
                        mem[mem[64]] = _2110 + _654 + _670 + _1115 - mem[64]
                        mem[64] = _2110 + _654 + _670 + _1115 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3077
                        continue 
                    mem[_654 + _670 + 32] = 0
                    _1124 = mem[96]
                    s = 0
                    while s < _1124:
                        mem[s + _654 + _670 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1124) <= _1124:
                        _2081 = mem[_640]
                        s = 0
                        while s < _2081:
                            mem[s + _654 + _670 + _1124 + 32] = mem[s + _640 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2081) <= _2081:
                            _3024 = mem[64]
                            mem[mem[64]] = _2081 + _654 + _670 + _1124 - mem[64]
                            mem[64] = _2081 + _654 + _670 + _1124 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _3024
                            continue 
                        mem[_654 + _670 + _1124 + _2081 + 32] = 0
                        _3078 = mem[64]
                        mem[mem[64]] = _2081 + _654 + _670 + _1124 - mem[64]
                        mem[64] = _2081 + _654 + _670 + _1124 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3078
                        continue 
                    mem[_654 + _670 + _1124 + 32] = 0
                    _2111 = mem[_640]
                    s = 0
                    while s < _2111:
                        mem[s + _654 + _670 + _1124 + 32] = mem[s + _640 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2111) <= _2111:
                        _3025 = mem[64]
                        mem[mem[64]] = _2111 + _654 + _670 + _1124 - mem[64]
                        mem[64] = _2111 + _654 + _670 + _1124 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3025
                        continue 
                    mem[_654 + _670 + _1124 + _2111 + 32] = 0
                    _3079 = mem[64]
                    mem[mem[64]] = _2111 + _654 + _670 + _1124 - mem[64]
                    mem[64] = _2111 + _654 + _670 + _1124 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3079
                    continue 
                u = 0
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _1107 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_1107]:
                            revert with 0, 50
                        mem[v + _1107 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _2048 = mem[64]
                    _2078 = mem[s]
                    t = 0
                    while t < _2078:
                        mem[t + _2048 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2078) <= _2078:
                        _2976 = mem[96]
                        s = 0
                        while s < _2976:
                            mem[s + _2048 + _2078 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2976) <= _2976:
                            _4028 = mem[_1107]
                            s = 0
                            while s < _4028:
                                mem[s + _2048 + _2078 + _2976 + 32] = mem[s + _1107 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4028) <= _4028:
                                _4932 = mem[64]
                                mem[mem[64]] = _4028 + _2048 + _2078 + _2976 - mem[64]
                                mem[64] = _4028 + _2048 + _2078 + _2976 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4932
                                continue 
                            mem[_2048 + _2078 + _2976 + _4028 + 32] = 0
                            _5036 = mem[64]
                            mem[mem[64]] = _4028 + _2048 + _2078 + _2976 - mem[64]
                            mem[64] = _4028 + _2048 + _2078 + _2976 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5036
                            continue 
                        mem[_2048 + _2078 + _2976 + 32] = 0
                        _4084 = mem[_1107]
                        s = 0
                        while s < _4084:
                            mem[s + _2048 + _2078 + _2976 + 32] = mem[s + _1107 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4084) <= _4084:
                            _4933 = mem[64]
                            mem[mem[64]] = _4084 + _2048 + _2078 + _2976 - mem[64]
                            mem[64] = _4084 + _2048 + _2078 + _2976 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4933
                            continue 
                        mem[_2048 + _2078 + _2976 + _4084 + 32] = 0
                        _5037 = mem[64]
                        mem[mem[64]] = _4084 + _2048 + _2078 + _2976 - mem[64]
                        mem[64] = _4084 + _2048 + _2078 + _2976 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5037
                        continue 
                    mem[_2048 + _2078 + 32] = 0
                    _3020 = mem[96]
                    s = 0
                    while s < _3020:
                        mem[s + _2048 + _2078 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3020) <= _3020:
                        _4029 = mem[_1107]
                        s = 0
                        while s < _4029:
                            mem[s + _2048 + _2078 + _3020 + 32] = mem[s + _1107 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4029) <= _4029:
                            _4934 = mem[64]
                            mem[mem[64]] = _4029 + _2048 + _2078 + _3020 - mem[64]
                            mem[64] = _4029 + _2048 + _2078 + _3020 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4934
                            continue 
                        mem[_2048 + _2078 + _3020 + _4029 + 32] = 0
                        _5038 = mem[64]
                        mem[mem[64]] = _4029 + _2048 + _2078 + _3020 - mem[64]
                        mem[64] = _4029 + _2048 + _2078 + _3020 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5038
                        continue 
                    mem[_2048 + _2078 + _3020 + 32] = 0
                    _4085 = mem[_1107]
                    s = 0
                    while s < _4085:
                        mem[s + _2048 + _2078 + _3020 + 32] = mem[s + _1107 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4085) <= _4085:
                        _4935 = mem[64]
                        mem[mem[64]] = _4085 + _2048 + _2078 + _3020 - mem[64]
                        mem[64] = _4085 + _2048 + _2078 + _3020 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4935
                        continue 
                    mem[_2048 + _2078 + _3020 + _4085 + 32] = 0
                    _5039 = mem[64]
                    mem[mem[64]] = _4085 + _2048 + _2078 + _3020 - mem[64]
                    mem[64] = _4085 + _2048 + _2078 + _3020 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5039
                    continue 
                mem[_1107 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1107]:
                        revert with 0, 50
                    mem[v + _1107 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _2049 = mem[64]
                _2079 = mem[s]
                t = 0
                while t < _2079:
                    mem[t + _2049 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2079) <= _2079:
                    _2977 = mem[96]
                    s = 0
                    while s < _2977:
                        mem[s + _2049 + _2079 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2977) <= _2977:
                        _4030 = mem[_1107]
                        s = 0
                        while s < _4030:
                            mem[s + _2049 + _2079 + _2977 + 32] = mem[s + _1107 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4030) <= _4030:
                            _4936 = mem[64]
                            mem[mem[64]] = _4030 + _2049 + _2079 + _2977 - mem[64]
                            mem[64] = _4030 + _2049 + _2079 + _2977 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4936
                            continue 
                        mem[_2049 + _2079 + _2977 + _4030 + 32] = 0
                        _5040 = mem[64]
                        mem[mem[64]] = _4030 + _2049 + _2079 + _2977 - mem[64]
                        mem[64] = _4030 + _2049 + _2079 + _2977 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5040
                        continue 
                    mem[_2049 + _2079 + _2977 + 32] = 0
                    _4086 = mem[_1107]
                    s = 0
                    while s < _4086:
                        mem[s + _2049 + _2079 + _2977 + 32] = mem[s + _1107 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4086) <= _4086:
                        _4937 = mem[64]
                        mem[mem[64]] = _4086 + _2049 + _2079 + _2977 - mem[64]
                        mem[64] = _4086 + _2049 + _2079 + _2977 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4937
                        continue 
                    mem[_2049 + _2079 + _2977 + _4086 + 32] = 0
                    _5041 = mem[64]
                    mem[mem[64]] = _4086 + _2049 + _2079 + _2977 - mem[64]
                    mem[64] = _4086 + _2049 + _2079 + _2977 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5041
                    continue 
                mem[_2049 + _2079 + 32] = 0
                _3021 = mem[96]
                s = 0
                while s < _3021:
                    mem[s + _2049 + _2079 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3021) <= _3021:
                    _4031 = mem[_1107]
                    s = 0
                    while s < _4031:
                        mem[s + _2049 + _2079 + _3021 + 32] = mem[s + _1107 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4031) <= _4031:
                        _4938 = mem[64]
                        mem[mem[64]] = _4031 + _2049 + _2079 + _3021 - mem[64]
                        mem[64] = _4031 + _2049 + _2079 + _3021 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4938
                        continue 
                    mem[_2049 + _2079 + _3021 + _4031 + 32] = 0
                    _5042 = mem[64]
                    mem[mem[64]] = _4031 + _2049 + _2079 + _3021 - mem[64]
                    mem[64] = _4031 + _2049 + _2079 + _3021 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5042
                    continue 
                mem[_2049 + _2079 + _3021 + 32] = 0
                _4087 = mem[_1107]
                s = 0
                while s < _4087:
                    mem[s + _2049 + _2079 + _3021 + 32] = mem[s + _1107 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4087) <= _4087:
                    _4939 = mem[64]
                    mem[mem[64]] = _4087 + _2049 + _2079 + _3021 - mem[64]
                    mem[64] = _4087 + _2049 + _2079 + _3021 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4939
                    continue 
                mem[_2049 + _2079 + _3021 + _4087 + 32] = 0
                _5043 = mem[64]
                mem[mem[64]] = _4087 + _2049 + _2079 + _3021 - mem[64]
                mem[64] = _4087 + _2049 + _2079 + _3021 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5043
                continue 
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 17
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 18
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _579 = mem[64]
            mem[64] = mem[64] + 64
            mem[_579] = 30
            mem[_579 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
                _619 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _619 + 68] = mem[idx + _579 + 32]
                    idx = idx + 32
                    continue 
                mem[_619 + 98] = 0
                revert with memory
                  from mem[64]
                   len _619 + -mem[64] + 100
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
                _728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_728] = 1
                mem[_728 + 32] = '0'
                _737 = mem[64]
                _752 = mem[s]
                t = 0
                while t < _752:
                    mem[t + _737 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_752) <= _752:
                    _1114 = mem[96]
                    s = 0
                    while s < _1114:
                        mem[s + _737 + _752 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_1114) <= _1114:
                        _2076 = mem[_728]
                        s = 0
                        while s < _2076:
                            mem[s + _737 + _752 + _1114 + 32] = mem[s + _728 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2076) <= _2076:
                            _3016 = mem[64]
                            mem[mem[64]] = _2076 + _737 + _752 + _1114 - mem[64]
                            mem[64] = _2076 + _737 + _752 + _1114 + 32
                            if ceil32(_2076) == -1:
                                revert with 0, 17
                            s = ceil32(_2076) + 1
                            s = _3016
                            continue 
                        mem[_737 + _752 + _1114 + _2076 + 32] = 0
                        _3072 = mem[64]
                        mem[mem[64]] = _2076 + _737 + _752 + _1114 - mem[64]
                        mem[64] = _2076 + _737 + _752 + _1114 + 32
                        if ceil32(_2076) == -1:
                            revert with 0, 17
                        s = ceil32(_2076) + 1
                        s = _3072
                        continue 
                    mem[_737 + _752 + _1114 + 32] = 0
                    _2108 = mem[_728]
                    s = 0
                    while s < _2108:
                        mem[s + _737 + _752 + _1114 + 32] = mem[s + _728 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2108) <= _2108:
                        _3017 = mem[64]
                        mem[mem[64]] = _2108 + _737 + _752 + _1114 - mem[64]
                        mem[64] = _2108 + _737 + _752 + _1114 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3017
                        continue 
                    mem[_737 + _752 + _1114 + _2108 + 32] = 0
                    _3073 = mem[64]
                    mem[mem[64]] = _2108 + _737 + _752 + _1114 - mem[64]
                    mem[64] = _2108 + _737 + _752 + _1114 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3073
                    continue 
                mem[_737 + _752 + 32] = 0
                _1123 = mem[96]
                s = 0
                while s < _1123:
                    mem[s + _737 + _752 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_1123) <= _1123:
                    _2077 = mem[_728]
                    s = 0
                    while s < _2077:
                        mem[s + _737 + _752 + _1123 + 32] = mem[s + _728 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2077) <= _2077:
                        _3018 = mem[64]
                        mem[mem[64]] = _2077 + _737 + _752 + _1123 - mem[64]
                        mem[64] = _2077 + _737 + _752 + _1123 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _3018
                        continue 
                    mem[_737 + _752 + _1123 + _2077 + 32] = 0
                    _3074 = mem[64]
                    mem[mem[64]] = _2077 + _737 + _752 + _1123 - mem[64]
                    mem[64] = _2077 + _737 + _752 + _1123 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3074
                    continue 
                mem[_737 + _752 + _1123 + 32] = 0
                _2109 = mem[_728]
                s = 0
                while s < _2109:
                    mem[s + _737 + _752 + _1123 + 32] = mem[s + _728 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2109) <= _2109:
                    _3019 = mem[64]
                    mem[mem[64]] = _2109 + _737 + _752 + _1123 - mem[64]
                    mem[64] = _2109 + _737 + _752 + _1123 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _3019
                    continue 
                mem[_737 + _752 + _1123 + _2109 + 32] = 0
                _3075 = mem[64]
                mem[mem[64]] = _2109 + _737 + _752 + _1123 - mem[64]
                mem[64] = _2109 + _737 + _752 + _1123 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _3075
                continue 
            u = 0
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _1106 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_1106]:
                        revert with 0, 50
                    mem[v + _1106 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _2046 = mem[64]
                _2074 = mem[s]
                t = 0
                while t < _2074:
                    mem[t + _2046 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2074) <= _2074:
                    _2974 = mem[96]
                    s = 0
                    while s < _2974:
                        mem[s + _2046 + _2074 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2974) <= _2974:
                        _4024 = mem[_1106]
                        s = 0
                        while s < _4024:
                            mem[s + _2046 + _2074 + _2974 + 32] = mem[s + _1106 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4024) <= _4024:
                            _4924 = mem[64]
                            mem[mem[64]] = _4024 + _2046 + _2074 + _2974 - mem[64]
                            mem[64] = _4024 + _2046 + _2074 + _2974 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4924
                            continue 
                        mem[_2046 + _2074 + _2974 + _4024 + 32] = 0
                        _5028 = mem[64]
                        mem[mem[64]] = _4024 + _2046 + _2074 + _2974 - mem[64]
                        mem[64] = _4024 + _2046 + _2074 + _2974 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5028
                        continue 
                    mem[_2046 + _2074 + _2974 + 32] = 0
                    _4080 = mem[_1106]
                    s = 0
                    while s < _4080:
                        mem[s + _2046 + _2074 + _2974 + 32] = mem[s + _1106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4080) <= _4080:
                        _4925 = mem[64]
                        mem[mem[64]] = _4080 + _2046 + _2074 + _2974 - mem[64]
                        mem[64] = _4080 + _2046 + _2074 + _2974 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4925
                        continue 
                    mem[_2046 + _2074 + _2974 + _4080 + 32] = 0
                    _5029 = mem[64]
                    mem[mem[64]] = _4080 + _2046 + _2074 + _2974 - mem[64]
                    mem[64] = _4080 + _2046 + _2074 + _2974 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5029
                    continue 
                mem[_2046 + _2074 + 32] = 0
                _3014 = mem[96]
                s = 0
                while s < _3014:
                    mem[s + _2046 + _2074 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3014) <= _3014:
                    _4025 = mem[_1106]
                    s = 0
                    while s < _4025:
                        mem[s + _2046 + _2074 + _3014 + 32] = mem[s + _1106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4025) <= _4025:
                        _4926 = mem[64]
                        mem[mem[64]] = _4025 + _2046 + _2074 + _3014 - mem[64]
                        mem[64] = _4025 + _2046 + _2074 + _3014 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4926
                        continue 
                    mem[_2046 + _2074 + _3014 + _4025 + 32] = 0
                    _5030 = mem[64]
                    mem[mem[64]] = _4025 + _2046 + _2074 + _3014 - mem[64]
                    mem[64] = _4025 + _2046 + _2074 + _3014 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5030
                    continue 
                mem[_2046 + _2074 + _3014 + 32] = 0
                _4081 = mem[_1106]
                s = 0
                while s < _4081:
                    mem[s + _2046 + _2074 + _3014 + 32] = mem[s + _1106 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4081) <= _4081:
                    _4927 = mem[64]
                    mem[mem[64]] = _4081 + _2046 + _2074 + _3014 - mem[64]
                    mem[64] = _4081 + _2046 + _2074 + _3014 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4927
                    continue 
                mem[_2046 + _2074 + _3014 + _4081 + 32] = 0
                _5031 = mem[64]
                mem[mem[64]] = _4081 + _2046 + _2074 + _3014 - mem[64]
                mem[64] = _4081 + _2046 + _2074 + _3014 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5031
                continue 
            mem[_1106 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_1106]:
                    revert with 0, 50
                mem[v + _1106 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _2047 = mem[64]
            _2075 = mem[s]
            t = 0
            while t < _2075:
                mem[t + _2047 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2075) <= _2075:
                _2975 = mem[96]
                s = 0
                while s < _2975:
                    mem[s + _2047 + _2075 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_2975) <= _2975:
                    _4026 = mem[_1106]
                    s = 0
                    while s < _4026:
                        mem[s + _2047 + _2075 + _2975 + 32] = mem[s + _1106 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4026) <= _4026:
                        _4928 = mem[64]
                        mem[mem[64]] = _4026 + _2047 + _2075 + _2975 - mem[64]
                        mem[64] = _4026 + _2047 + _2075 + _2975 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4928
                        continue 
                    mem[_2047 + _2075 + _2975 + _4026 + 32] = 0
                    _5032 = mem[64]
                    mem[mem[64]] = _4026 + _2047 + _2075 + _2975 - mem[64]
                    mem[64] = _4026 + _2047 + _2075 + _2975 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5032
                    continue 
                mem[_2047 + _2075 + _2975 + 32] = 0
                _4082 = mem[_1106]
                s = 0
                while s < _4082:
                    mem[s + _2047 + _2075 + _2975 + 32] = mem[s + _1106 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4082) <= _4082:
                    _4929 = mem[64]
                    mem[mem[64]] = _4082 + _2047 + _2075 + _2975 - mem[64]
                    mem[64] = _4082 + _2047 + _2075 + _2975 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4929
                    continue 
                mem[_2047 + _2075 + _2975 + _4082 + 32] = 0
                _5033 = mem[64]
                mem[mem[64]] = _4082 + _2047 + _2075 + _2975 - mem[64]
                mem[64] = _4082 + _2047 + _2075 + _2975 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5033
                continue 
            mem[_2047 + _2075 + 32] = 0
            _3015 = mem[96]
            s = 0
            while s < _3015:
                mem[s + _2047 + _2075 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_3015) <= _3015:
                _4027 = mem[_1106]
                s = 0
                while s < _4027:
                    mem[s + _2047 + _2075 + _3015 + 32] = mem[s + _1106 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4027) <= _4027:
                    _4930 = mem[64]
                    mem[mem[64]] = _4027 + _2047 + _2075 + _3015 - mem[64]
                    mem[64] = _4027 + _2047 + _2075 + _3015 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4930
                    continue 
                mem[_2047 + _2075 + _3015 + _4027 + 32] = 0
                _5034 = mem[64]
                mem[mem[64]] = _4027 + _2047 + _2075 + _3015 - mem[64]
                mem[64] = _4027 + _2047 + _2075 + _3015 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5034
                continue 
            mem[_2047 + _2075 + _3015 + 32] = 0
            _4083 = mem[_1106]
            s = 0
            while s < _4083:
                mem[s + _2047 + _2075 + _3015 + 32] = mem[s + _1106 + 32]
                s = s + 32
                continue 
            if ceil32(_4083) <= _4083:
                _4931 = mem[64]
                mem[mem[64]] = _4083 + _2047 + _2075 + _3015 - mem[64]
                mem[64] = _4083 + _2047 + _2075 + _3015 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4931
                continue 
            mem[_2047 + _2075 + _3015 + _4083 + 32] = 0
            _5035 = mem[64]
            mem[mem[64]] = _4083 + _2047 + _2075 + _3015 - mem[64]
            mem[64] = _4083 + _2047 + _2075 + _3015 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5035
            continue 
        mem[mem[64]] = 32
        _367 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_367)] = mem[s + 32 len ceil32(_367)]
        if ceil32(_367) > _367:
            mem[mem[64] + _367 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_367) + 32]
    s = 0
    idx = (block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024) - stor3[address(arg1)].field_768
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[288] = s
    mem[64] = ceil32(s) + 320
    if not s:
        t = s
        idx = (block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024) - stor3[address(arg1)].field_768
        while idx:
            if t < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if t - 1 >= mem[288]:
                revert with 0, 50
            mem[t + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        idx = 1
        s = 288
        while idx < sub_05b707ff[address(arg1)]:
            if idx > sub_05b707ff[address(arg1)]:
                revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
            mem[0] = address(arg1)
            mem[32] = 4
            if not sub_05b707ff[address(arg1)]:
                _2269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2269] = 1
                mem[_2269 + 32] = '0'
                _2301 = mem[64]
                _2324 = mem[s]
                t = 0
                while t < _2324:
                    mem[t + _2301 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2324) <= _2324:
                    _2968 = mem[96]
                    s = 0
                    while s < _2968:
                        mem[s + _2301 + _2324 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2968) <= _2968:
                        _4004 = mem[_2269]
                        s = 0
                        while s < _4004:
                            mem[s + _2301 + _2324 + _2968 + 32] = mem[s + _2269 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4004) <= _4004:
                            _4892 = mem[64]
                            mem[mem[64]] = _4004 + _2301 + _2324 + _2968 - mem[64]
                            mem[64] = _4004 + _2301 + _2324 + _2968 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4892
                            continue 
                        mem[_2301 + _2324 + _2968 + _4004 + 32] = 0
                        _5004 = mem[64]
                        mem[mem[64]] = _4004 + _2301 + _2324 + _2968 - mem[64]
                        mem[64] = _4004 + _2301 + _2324 + _2968 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5004
                        continue 
                    mem[_2301 + _2324 + _2968 + 32] = 0
                    _4068 = mem[_2269]
                    s = 0
                    while s < _4068:
                        mem[s + _2301 + _2324 + _2968 + 32] = mem[s + _2269 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4068) <= _4068:
                        _4893 = mem[64]
                        mem[mem[64]] = _4068 + _2301 + _2324 + _2968 - mem[64]
                        mem[64] = _4068 + _2301 + _2324 + _2968 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4893
                        continue 
                    mem[_2301 + _2324 + _2968 + _4068 + 32] = 0
                    _5005 = mem[64]
                    mem[mem[64]] = _4068 + _2301 + _2324 + _2968 - mem[64]
                    mem[64] = _4068 + _2301 + _2324 + _2968 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5005
                    continue 
                mem[_2301 + _2324 + 32] = 0
                _3004 = mem[96]
                s = 0
                while s < _3004:
                    mem[s + _2301 + _2324 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3004) <= _3004:
                    _4005 = mem[_2269]
                    s = 0
                    while s < _4005:
                        mem[s + _2301 + _2324 + _3004 + 32] = mem[s + _2269 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4005) <= _4005:
                        _4894 = mem[64]
                        mem[mem[64]] = _4005 + _2301 + _2324 + _3004 - mem[64]
                        mem[64] = _4005 + _2301 + _2324 + _3004 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4894
                        continue 
                    mem[_2301 + _2324 + _3004 + _4005 + 32] = 0
                    _5006 = mem[64]
                    mem[mem[64]] = _4005 + _2301 + _2324 + _3004 - mem[64]
                    mem[64] = _4005 + _2301 + _2324 + _3004 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5006
                    continue 
                mem[_2301 + _2324 + _3004 + 32] = 0
                _4069 = mem[_2269]
                s = 0
                while s < _4069:
                    mem[s + _2301 + _2324 + _3004 + 32] = mem[s + _2269 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4069) <= _4069:
                    _4895 = mem[64]
                    mem[mem[64]] = _4069 + _2301 + _2324 + _3004 - mem[64]
                    mem[64] = _4069 + _2301 + _2324 + _3004 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4895
                    continue 
                mem[_2301 + _2324 + _3004 + _4069 + 32] = 0
                _5007 = mem[64]
                mem[mem[64]] = _4069 + _2301 + _2324 + _3004 - mem[64]
                mem[64] = _4069 + _2301 + _2324 + _3004 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5007
                continue 
            if idx >= stor3[address(arg1)].field_0:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 3)
            if block.timestamp < stor3[address(arg1)][idx].field_256:
                revert with 0, 17
            _2302 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2302] = 26
            mem[_2302 + 32] = 'SafeMath: division by zero'
            if not sub_94471c42:
                _2344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2344 + 68] = mem[idx + _2302 + 32]
                    idx = idx + 32
                    continue 
                mem[_2344 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2344 + -mem[64] + 100
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                _2570 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2570] = 30
                mem[_2570 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(arg1)][idx].field_768 > 0:
                    _2589 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2589 + 68] = mem[idx + _2570 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2589 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2589 + -mem[64] + 100
                if 0 < stor3[address(arg1)][idx].field_768:
                    revert with 0, 17
                if not -stor3[address(arg1)][idx].field_768:
                    _2665 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2665] = 1
                    mem[_2665 + 32] = '0'
                    _2672 = mem[64]
                    _2680 = mem[s]
                    t = 0
                    while t < _2680:
                        mem[t + _2672 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_2680) <= _2680:
                        _2970 = mem[96]
                        s = 0
                        while s < _2970:
                            mem[s + _2672 + _2680 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_2970) <= _2970:
                            _4012 = mem[_2665]
                            s = 0
                            while s < _4012:
                                mem[s + _2672 + _2680 + _2970 + 32] = mem[s + _2665 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4012) <= _4012:
                                _4904 = mem[64]
                                mem[mem[64]] = _4012 + _2672 + _2680 + _2970 - mem[64]
                                mem[64] = _4012 + _2672 + _2680 + _2970 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _4904
                                continue 
                            mem[_2672 + _2680 + _2970 + _4012 + 32] = 0
                            _5012 = mem[64]
                            mem[mem[64]] = _4012 + _2672 + _2680 + _2970 - mem[64]
                            mem[64] = _4012 + _2672 + _2680 + _2970 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5012
                            continue 
                        mem[_2672 + _2680 + _2970 + 32] = 0
                        _4072 = mem[_2665]
                        s = 0
                        while s < _4072:
                            mem[s + _2672 + _2680 + _2970 + 32] = mem[s + _2665 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4072) <= _4072:
                            _4905 = mem[64]
                            mem[mem[64]] = _4072 + _2672 + _2680 + _2970 - mem[64]
                            mem[64] = _4072 + _2672 + _2680 + _2970 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4905
                            continue 
                        mem[_2672 + _2680 + _2970 + _4072 + 32] = 0
                        _5013 = mem[64]
                        mem[mem[64]] = _4072 + _2672 + _2680 + _2970 - mem[64]
                        mem[64] = _4072 + _2672 + _2680 + _2970 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5013
                        continue 
                    mem[_2672 + _2680 + 32] = 0
                    _3006 = mem[96]
                    s = 0
                    while s < _3006:
                        mem[s + _2672 + _2680 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_3006) <= _3006:
                        _4013 = mem[_2665]
                        s = 0
                        while s < _4013:
                            mem[s + _2672 + _2680 + _3006 + 32] = mem[s + _2665 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4013) <= _4013:
                            _4906 = mem[64]
                            mem[mem[64]] = _4013 + _2672 + _2680 + _3006 - mem[64]
                            mem[64] = _4013 + _2672 + _2680 + _3006 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4906
                            continue 
                        mem[_2672 + _2680 + _3006 + _4013 + 32] = 0
                        _5014 = mem[64]
                        mem[mem[64]] = _4013 + _2672 + _2680 + _3006 - mem[64]
                        mem[64] = _4013 + _2672 + _2680 + _3006 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5014
                        continue 
                    mem[_2672 + _2680 + _3006 + 32] = 0
                    _4073 = mem[_2665]
                    s = 0
                    while s < _4073:
                        mem[s + _2672 + _2680 + _3006 + 32] = mem[s + _2665 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4073) <= _4073:
                        _4907 = mem[64]
                        mem[mem[64]] = _4073 + _2672 + _2680 + _3006 - mem[64]
                        mem[64] = _4073 + _2672 + _2680 + _3006 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4907
                        continue 
                    mem[_2672 + _2680 + _3006 + _4073 + 32] = 0
                    _5015 = mem[64]
                    mem[mem[64]] = _4073 + _2672 + _2680 + _3006 - mem[64]
                    mem[64] = _4073 + _2672 + _2680 + _3006 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5015
                    continue 
                u = 0
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _2957 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = -stor3[address(arg1)][idx].field_768
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                            revert with 0, 17
                        if t < 10 * t / 10:
                            revert with 0, 17
                        if 48 > -uint8(t - (10 * t / 10)) + 255:
                            revert with 0, 17
                        if v - 1 >= mem[_2957]:
                            revert with 0, 50
                        mem[v + _2957 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    _3982 = mem[64]
                    _4010 = mem[s]
                    t = 0
                    while t < _4010:
                        mem[t + _3982 + 32] = mem[t + s + 32]
                        t = t + 32
                        continue 
                    if ceil32(_4010) <= _4010:
                        _4862 = mem[96]
                        s = 0
                        while s < _4862:
                            mem[s + _3982 + _4010 + 32] = mem[s + 128]
                            s = s + 32
                            continue 
                        if ceil32(_4862) <= _4862:
                            _5408 = mem[_2957]
                            s = 0
                            while s < _5408:
                                mem[s + _3982 + _4010 + _4862 + 32] = mem[s + _2957 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_5408) <= _5408:
                                _5732 = mem[64]
                                mem[mem[64]] = _5408 + _3982 + _4010 + _4862 - mem[64]
                                mem[64] = _5408 + _3982 + _4010 + _4862 + 32
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = _5732
                                continue 
                            mem[_3982 + _4010 + _4862 + _5408 + 32] = 0
                            _5796 = mem[64]
                            mem[mem[64]] = _5408 + _3982 + _4010 + _4862 - mem[64]
                            mem[64] = _5408 + _3982 + _4010 + _4862 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5796
                            continue 
                        mem[_3982 + _4010 + _4862 + 32] = 0
                        _5440 = mem[_2957]
                        s = 0
                        while s < _5440:
                            mem[s + _3982 + _4010 + _4862 + 32] = mem[s + _2957 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5440) <= _5440:
                            _5733 = mem[64]
                            mem[mem[64]] = _5440 + _3982 + _4010 + _4862 - mem[64]
                            mem[64] = _5440 + _3982 + _4010 + _4862 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5733
                            continue 
                        mem[_3982 + _4010 + _4862 + _5440 + 32] = 0
                        _5797 = mem[64]
                        mem[mem[64]] = _5440 + _3982 + _4010 + _4862 - mem[64]
                        mem[64] = _5440 + _3982 + _4010 + _4862 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5797
                        continue 
                    mem[_3982 + _4010 + 32] = 0
                    _4902 = mem[96]
                    s = 0
                    while s < _4902:
                        mem[s + _3982 + _4010 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4902) <= _4902:
                        _5409 = mem[_2957]
                        s = 0
                        while s < _5409:
                            mem[s + _3982 + _4010 + _4902 + 32] = mem[s + _2957 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5409) <= _5409:
                            _5734 = mem[64]
                            mem[mem[64]] = _5409 + _3982 + _4010 + _4902 - mem[64]
                            mem[64] = _5409 + _3982 + _4010 + _4902 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5734
                            continue 
                        mem[_3982 + _4010 + _4902 + _5409 + 32] = 0
                        _5798 = mem[64]
                        mem[mem[64]] = _5409 + _3982 + _4010 + _4902 - mem[64]
                        mem[64] = _5409 + _3982 + _4010 + _4902 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5798
                        continue 
                    mem[_3982 + _4010 + _4902 + 32] = 0
                    _5441 = mem[_2957]
                    s = 0
                    while s < _5441:
                        mem[s + _3982 + _4010 + _4902 + 32] = mem[s + _2957 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5441) <= _5441:
                        _5735 = mem[64]
                        mem[mem[64]] = _5441 + _3982 + _4010 + _4902 - mem[64]
                        mem[64] = _5441 + _3982 + _4010 + _4902 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5735
                        continue 
                    mem[_3982 + _4010 + _4902 + _5441 + 32] = 0
                    _5799 = mem[64]
                    mem[mem[64]] = _5441 + _3982 + _4010 + _4902 - mem[64]
                    mem[64] = _5441 + _3982 + _4010 + _4902 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5799
                    continue 
                mem[_2957 + 32 len u] = call.data[calldata.size len u]
                v = u
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_2957]:
                        revert with 0, 50
                    mem[v + _2957 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _3983 = mem[64]
                _4011 = mem[s]
                t = 0
                while t < _4011:
                    mem[t + _3983 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_4011) <= _4011:
                    _4863 = mem[96]
                    s = 0
                    while s < _4863:
                        mem[s + _3983 + _4011 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4863) <= _4863:
                        _5410 = mem[_2957]
                        s = 0
                        while s < _5410:
                            mem[s + _3983 + _4011 + _4863 + 32] = mem[s + _2957 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5410) <= _5410:
                            _5736 = mem[64]
                            mem[mem[64]] = _5410 + _3983 + _4011 + _4863 - mem[64]
                            mem[64] = _5410 + _3983 + _4011 + _4863 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5736
                            continue 
                        mem[_3983 + _4011 + _4863 + _5410 + 32] = 0
                        _5800 = mem[64]
                        mem[mem[64]] = _5410 + _3983 + _4011 + _4863 - mem[64]
                        mem[64] = _5410 + _3983 + _4011 + _4863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5800
                        continue 
                    mem[_3983 + _4011 + _4863 + 32] = 0
                    _5442 = mem[_2957]
                    s = 0
                    while s < _5442:
                        mem[s + _3983 + _4011 + _4863 + 32] = mem[s + _2957 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5442) <= _5442:
                        _5737 = mem[64]
                        mem[mem[64]] = _5442 + _3983 + _4011 + _4863 - mem[64]
                        mem[64] = _5442 + _3983 + _4011 + _4863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5737
                        continue 
                    mem[_3983 + _4011 + _4863 + _5442 + 32] = 0
                    _5801 = mem[64]
                    mem[mem[64]] = _5442 + _3983 + _4011 + _4863 - mem[64]
                    mem[64] = _5442 + _3983 + _4011 + _4863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5801
                    continue 
                mem[_3983 + _4011 + 32] = 0
                _4903 = mem[96]
                s = 0
                while s < _4903:
                    mem[s + _3983 + _4011 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4903) <= _4903:
                    _5411 = mem[_2957]
                    s = 0
                    while s < _5411:
                        mem[s + _3983 + _4011 + _4903 + 32] = mem[s + _2957 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5411) <= _5411:
                        _5738 = mem[64]
                        mem[mem[64]] = _5411 + _3983 + _4011 + _4903 - mem[64]
                        mem[64] = _5411 + _3983 + _4011 + _4903 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5738
                        continue 
                    mem[_3983 + _4011 + _4903 + _5411 + 32] = 0
                    _5802 = mem[64]
                    mem[mem[64]] = _5411 + _3983 + _4011 + _4903 - mem[64]
                    mem[64] = _5411 + _3983 + _4011 + _4903 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5802
                    continue 
                mem[_3983 + _4011 + _4903 + 32] = 0
                _5443 = mem[_2957]
                s = 0
                while s < _5443:
                    mem[s + _3983 + _4011 + _4903 + 32] = mem[s + _2957 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5443) <= _5443:
                    _5739 = mem[64]
                    mem[mem[64]] = _5443 + _3983 + _4011 + _4903 - mem[64]
                    mem[64] = _5443 + _3983 + _4011 + _4903 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5739
                    continue 
                mem[_3983 + _4011 + _4903 + _5443 + 32] = 0
                _5803 = mem[64]
                mem[mem[64]] = _5443 + _3983 + _4011 + _4903 - mem[64]
                mem[64] = _5443 + _3983 + _4011 + _4903 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5803
                continue 
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 17
            if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
                revert with 0, 18
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
                revert with 0, 'SafeMath: multiplication overflow'
            _2627 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2627] = 30
            mem[_2627 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
                _2657 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2657 + 68] = mem[idx + _2627 + 32]
                    idx = idx + 32
                    continue 
                mem[_2657 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2657 + -mem[64] + 100
            if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
                _2696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2696] = 1
                mem[_2696 + 32] = '0'
                _2700 = mem[64]
                _2712 = mem[s]
                t = 0
                while t < _2712:
                    mem[t + _2700 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2712) <= _2712:
                    _2969 = mem[96]
                    s = 0
                    while s < _2969:
                        mem[s + _2700 + _2712 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2969) <= _2969:
                        _4008 = mem[_2696]
                        s = 0
                        while s < _4008:
                            mem[s + _2700 + _2712 + _2969 + 32] = mem[s + _2696 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4008) <= _4008:
                            _4898 = mem[64]
                            mem[mem[64]] = _4008 + _2700 + _2712 + _2969 - mem[64]
                            mem[64] = _4008 + _2700 + _2712 + _2969 + 32
                            if ceil32(_4008) == -1:
                                revert with 0, 17
                            s = ceil32(_4008) + 1
                            s = _4898
                            continue 
                        mem[_2700 + _2712 + _2969 + _4008 + 32] = 0
                        _5008 = mem[64]
                        mem[mem[64]] = _4008 + _2700 + _2712 + _2969 - mem[64]
                        mem[64] = _4008 + _2700 + _2712 + _2969 + 32
                        if ceil32(_4008) == -1:
                            revert with 0, 17
                        s = ceil32(_4008) + 1
                        s = _5008
                        continue 
                    mem[_2700 + _2712 + _2969 + 32] = 0
                    _4070 = mem[_2696]
                    s = 0
                    while s < _4070:
                        mem[s + _2700 + _2712 + _2969 + 32] = mem[s + _2696 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4070) <= _4070:
                        _4899 = mem[64]
                        mem[mem[64]] = _4070 + _2700 + _2712 + _2969 - mem[64]
                        mem[64] = _4070 + _2700 + _2712 + _2969 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4899
                        continue 
                    mem[_2700 + _2712 + _2969 + _4070 + 32] = 0
                    _5009 = mem[64]
                    mem[mem[64]] = _4070 + _2700 + _2712 + _2969 - mem[64]
                    mem[64] = _4070 + _2700 + _2712 + _2969 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5009
                    continue 
                mem[_2700 + _2712 + 32] = 0
                _3005 = mem[96]
                s = 0
                while s < _3005:
                    mem[s + _2700 + _2712 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3005) <= _3005:
                    _4009 = mem[_2696]
                    s = 0
                    while s < _4009:
                        mem[s + _2700 + _2712 + _3005 + 32] = mem[s + _2696 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4009) <= _4009:
                        _4900 = mem[64]
                        mem[mem[64]] = _4009 + _2700 + _2712 + _3005 - mem[64]
                        mem[64] = _4009 + _2700 + _2712 + _3005 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4900
                        continue 
                    mem[_2700 + _2712 + _3005 + _4009 + 32] = 0
                    _5010 = mem[64]
                    mem[mem[64]] = _4009 + _2700 + _2712 + _3005 - mem[64]
                    mem[64] = _4009 + _2700 + _2712 + _3005 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5010
                    continue 
                mem[_2700 + _2712 + _3005 + 32] = 0
                _4071 = mem[_2696]
                s = 0
                while s < _4071:
                    mem[s + _2700 + _2712 + _3005 + 32] = mem[s + _2696 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4071) <= _4071:
                    _4901 = mem[64]
                    mem[mem[64]] = _4071 + _2700 + _2712 + _3005 - mem[64]
                    mem[64] = _4071 + _2700 + _2712 + _3005 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4901
                    continue 
                mem[_2700 + _2712 + _3005 + _4071 + 32] = 0
                _5011 = mem[64]
                mem[mem[64]] = _4071 + _2700 + _2712 + _3005 - mem[64]
                mem[64] = _4071 + _2700 + _2712 + _3005 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5011
                continue 
            u = 0
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _2956 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_2956]:
                        revert with 0, 50
                    mem[v + _2956 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _3980 = mem[64]
                _4006 = mem[s]
                t = 0
                while t < _4006:
                    mem[t + _3980 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_4006) <= _4006:
                    _4860 = mem[96]
                    s = 0
                    while s < _4860:
                        mem[s + _3980 + _4006 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4860) <= _4860:
                        _5404 = mem[_2956]
                        s = 0
                        while s < _5404:
                            mem[s + _3980 + _4006 + _4860 + 32] = mem[s + _2956 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5404) <= _5404:
                            _5724 = mem[64]
                            mem[mem[64]] = _5404 + _3980 + _4006 + _4860 - mem[64]
                            mem[64] = _5404 + _3980 + _4006 + _4860 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5724
                            continue 
                        mem[_3980 + _4006 + _4860 + _5404 + 32] = 0
                        _5788 = mem[64]
                        mem[mem[64]] = _5404 + _3980 + _4006 + _4860 - mem[64]
                        mem[64] = _5404 + _3980 + _4006 + _4860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5788
                        continue 
                    mem[_3980 + _4006 + _4860 + 32] = 0
                    _5436 = mem[_2956]
                    s = 0
                    while s < _5436:
                        mem[s + _3980 + _4006 + _4860 + 32] = mem[s + _2956 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5436) <= _5436:
                        _5725 = mem[64]
                        mem[mem[64]] = _5436 + _3980 + _4006 + _4860 - mem[64]
                        mem[64] = _5436 + _3980 + _4006 + _4860 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5725
                        continue 
                    mem[_3980 + _4006 + _4860 + _5436 + 32] = 0
                    _5789 = mem[64]
                    mem[mem[64]] = _5436 + _3980 + _4006 + _4860 - mem[64]
                    mem[64] = _5436 + _3980 + _4006 + _4860 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5789
                    continue 
                mem[_3980 + _4006 + 32] = 0
                _4896 = mem[96]
                s = 0
                while s < _4896:
                    mem[s + _3980 + _4006 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4896) <= _4896:
                    _5405 = mem[_2956]
                    s = 0
                    while s < _5405:
                        mem[s + _3980 + _4006 + _4896 + 32] = mem[s + _2956 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5405) <= _5405:
                        _5726 = mem[64]
                        mem[mem[64]] = _5405 + _3980 + _4006 + _4896 - mem[64]
                        mem[64] = _5405 + _3980 + _4006 + _4896 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5726
                        continue 
                    mem[_3980 + _4006 + _4896 + _5405 + 32] = 0
                    _5790 = mem[64]
                    mem[mem[64]] = _5405 + _3980 + _4006 + _4896 - mem[64]
                    mem[64] = _5405 + _3980 + _4006 + _4896 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5790
                    continue 
                mem[_3980 + _4006 + _4896 + 32] = 0
                _5437 = mem[_2956]
                s = 0
                while s < _5437:
                    mem[s + _3980 + _4006 + _4896 + 32] = mem[s + _2956 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5437) <= _5437:
                    _5727 = mem[64]
                    mem[mem[64]] = _5437 + _3980 + _4006 + _4896 - mem[64]
                    mem[64] = _5437 + _3980 + _4006 + _4896 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5727
                    continue 
                mem[_3980 + _4006 + _4896 + _5437 + 32] = 0
                _5791 = mem[64]
                mem[mem[64]] = _5437 + _3980 + _4006 + _4896 - mem[64]
                mem[64] = _5437 + _3980 + _4006 + _4896 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5791
                continue 
            mem[_2956 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_2956]:
                    revert with 0, 50
                mem[v + _2956 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _3981 = mem[64]
            _4007 = mem[s]
            t = 0
            while t < _4007:
                mem[t + _3981 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_4007) <= _4007:
                _4861 = mem[96]
                s = 0
                while s < _4861:
                    mem[s + _3981 + _4007 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4861) <= _4861:
                    _5406 = mem[_2956]
                    s = 0
                    while s < _5406:
                        mem[s + _3981 + _4007 + _4861 + 32] = mem[s + _2956 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5406) <= _5406:
                        _5728 = mem[64]
                        mem[mem[64]] = _5406 + _3981 + _4007 + _4861 - mem[64]
                        mem[64] = _5406 + _3981 + _4007 + _4861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5728
                        continue 
                    mem[_3981 + _4007 + _4861 + _5406 + 32] = 0
                    _5792 = mem[64]
                    mem[mem[64]] = _5406 + _3981 + _4007 + _4861 - mem[64]
                    mem[64] = _5406 + _3981 + _4007 + _4861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5792
                    continue 
                mem[_3981 + _4007 + _4861 + 32] = 0
                _5438 = mem[_2956]
                s = 0
                while s < _5438:
                    mem[s + _3981 + _4007 + _4861 + 32] = mem[s + _2956 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5438) <= _5438:
                    _5729 = mem[64]
                    mem[mem[64]] = _5438 + _3981 + _4007 + _4861 - mem[64]
                    mem[64] = _5438 + _3981 + _4007 + _4861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5729
                    continue 
                mem[_3981 + _4007 + _4861 + _5438 + 32] = 0
                _5793 = mem[64]
                mem[mem[64]] = _5438 + _3981 + _4007 + _4861 - mem[64]
                mem[64] = _5438 + _3981 + _4007 + _4861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5793
                continue 
            mem[_3981 + _4007 + 32] = 0
            _4897 = mem[96]
            s = 0
            while s < _4897:
                mem[s + _3981 + _4007 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_4897) <= _4897:
                _5407 = mem[_2956]
                s = 0
                while s < _5407:
                    mem[s + _3981 + _4007 + _4897 + 32] = mem[s + _2956 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5407) <= _5407:
                    _5730 = mem[64]
                    mem[mem[64]] = _5407 + _3981 + _4007 + _4897 - mem[64]
                    mem[64] = _5407 + _3981 + _4007 + _4897 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5730
                    continue 
                mem[_3981 + _4007 + _4897 + _5407 + 32] = 0
                _5794 = mem[64]
                mem[mem[64]] = _5407 + _3981 + _4007 + _4897 - mem[64]
                mem[64] = _5407 + _3981 + _4007 + _4897 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5794
                continue 
            mem[_3981 + _4007 + _4897 + 32] = 0
            _5439 = mem[_2956]
            s = 0
            while s < _5439:
                mem[s + _3981 + _4007 + _4897 + 32] = mem[s + _2956 + 32]
                s = s + 32
                continue 
            if ceil32(_5439) <= _5439:
                _5731 = mem[64]
                mem[mem[64]] = _5439 + _3981 + _4007 + _4897 - mem[64]
                mem[64] = _5439 + _3981 + _4007 + _4897 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5731
                continue 
            mem[_3981 + _4007 + _4897 + _5439 + 32] = 0
            _5795 = mem[64]
            mem[mem[64]] = _5439 + _3981 + _4007 + _4897 - mem[64]
            mem[64] = _5439 + _3981 + _4007 + _4897 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5795
            continue 
        mem[mem[64]] = 32
        _2100 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_2100)] = mem[s + 32 len ceil32(_2100)]
        if ceil32(_2100) > _2100:
            mem[mem[64] + _2100 + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_2100) + 32]
    mem[320 len s] = call.data[calldata.size len s]
    t = s
    idx = (block.timestamp - stor3[address(arg1)].field_256 / sub_94471c42 * stor3[address(arg1)].field_1024) - stor3[address(arg1)].field_768
    while idx:
        if t < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if t - 1 >= mem[288]:
            revert with 0, 50
        mem[t + 319 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    idx = 1
    s = 288
    while idx < sub_05b707ff[address(arg1)]:
        if idx > sub_05b707ff[address(arg1)]:
            revert with 0, 'MANAGEMENT: CALCULATE INDEX ERROR'
        mem[0] = address(arg1)
        mem[32] = 4
        if not sub_05b707ff[address(arg1)]:
            _2271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2271] = 1
            mem[_2271 + 32] = '0'
            _2304 = mem[64]
            _2325 = mem[s]
            t = 0
            while t < _2325:
                mem[t + _2304 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2325) <= _2325:
                _2971 = mem[96]
                s = 0
                while s < _2971:
                    mem[s + _2304 + _2325 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_2971) <= _2971:
                    _4014 = mem[_2271]
                    s = 0
                    while s < _4014:
                        mem[s + _2304 + _2325 + _2971 + 32] = mem[s + _2271 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4014) <= _4014:
                        _4908 = mem[64]
                        mem[mem[64]] = _4014 + _2304 + _2325 + _2971 - mem[64]
                        mem[64] = _4014 + _2304 + _2325 + _2971 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4908
                        continue 
                    mem[_2304 + _2325 + _2971 + _4014 + 32] = 0
                    _5016 = mem[64]
                    mem[mem[64]] = _4014 + _2304 + _2325 + _2971 - mem[64]
                    mem[64] = _4014 + _2304 + _2325 + _2971 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5016
                    continue 
                mem[_2304 + _2325 + _2971 + 32] = 0
                _4074 = mem[_2271]
                s = 0
                while s < _4074:
                    mem[s + _2304 + _2325 + _2971 + 32] = mem[s + _2271 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4074) <= _4074:
                    _4909 = mem[64]
                    mem[mem[64]] = _4074 + _2304 + _2325 + _2971 - mem[64]
                    mem[64] = _4074 + _2304 + _2325 + _2971 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4909
                    continue 
                mem[_2304 + _2325 + _2971 + _4074 + 32] = 0
                _5017 = mem[64]
                mem[mem[64]] = _4074 + _2304 + _2325 + _2971 - mem[64]
                mem[64] = _4074 + _2304 + _2325 + _2971 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5017
                continue 
            mem[_2304 + _2325 + 32] = 0
            _3007 = mem[96]
            s = 0
            while s < _3007:
                mem[s + _2304 + _2325 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_3007) <= _3007:
                _4015 = mem[_2271]
                s = 0
                while s < _4015:
                    mem[s + _2304 + _2325 + _3007 + 32] = mem[s + _2271 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4015) <= _4015:
                    _4910 = mem[64]
                    mem[mem[64]] = _4015 + _2304 + _2325 + _3007 - mem[64]
                    mem[64] = _4015 + _2304 + _2325 + _3007 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4910
                    continue 
                mem[_2304 + _2325 + _3007 + _4015 + 32] = 0
                _5018 = mem[64]
                mem[mem[64]] = _4015 + _2304 + _2325 + _3007 - mem[64]
                mem[64] = _4015 + _2304 + _2325 + _3007 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5018
                continue 
            mem[_2304 + _2325 + _3007 + 32] = 0
            _4075 = mem[_2271]
            s = 0
            while s < _4075:
                mem[s + _2304 + _2325 + _3007 + 32] = mem[s + _2271 + 32]
                s = s + 32
                continue 
            if ceil32(_4075) <= _4075:
                _4911 = mem[64]
                mem[mem[64]] = _4075 + _2304 + _2325 + _3007 - mem[64]
                mem[64] = _4075 + _2304 + _2325 + _3007 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4911
                continue 
            mem[_2304 + _2325 + _3007 + _4075 + 32] = 0
            _5019 = mem[64]
            mem[mem[64]] = _4075 + _2304 + _2325 + _3007 - mem[64]
            mem[64] = _4075 + _2304 + _2325 + _3007 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5019
            continue 
        if idx >= stor3[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 3)
        if block.timestamp < stor3[address(arg1)][idx].field_256:
            revert with 0, 17
        _2305 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2305] = 26
        mem[_2305 + 32] = 'SafeMath: division by zero'
        if not sub_94471c42:
            _2345 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _2345 + 68] = mem[idx + _2305 + 32]
                idx = idx + 32
                continue 
            mem[_2345 + 94] = 0
            revert with memory
              from mem[64]
               len _2345 + -mem[64] + 100
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            _2574 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2574] = 30
            mem[_2574 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(arg1)][idx].field_768 > 0:
                _2591 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2591 + 68] = mem[idx + _2574 + 32]
                    idx = idx + 32
                    continue 
                mem[_2591 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2591 + -mem[64] + 100
            if 0 < stor3[address(arg1)][idx].field_768:
                revert with 0, 17
            if not -stor3[address(arg1)][idx].field_768:
                _2667 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2667] = 1
                mem[_2667 + 32] = '0'
                _2674 = mem[64]
                _2682 = mem[s]
                t = 0
                while t < _2682:
                    mem[t + _2674 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_2682) <= _2682:
                    _2973 = mem[96]
                    s = 0
                    while s < _2973:
                        mem[s + _2674 + _2682 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_2973) <= _2973:
                        _4022 = mem[_2667]
                        s = 0
                        while s < _4022:
                            mem[s + _2674 + _2682 + _2973 + 32] = mem[s + _2667 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4022) <= _4022:
                            _4920 = mem[64]
                            mem[mem[64]] = _4022 + _2674 + _2682 + _2973 - mem[64]
                            mem[64] = _4022 + _2674 + _2682 + _2973 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _4920
                            continue 
                        mem[_2674 + _2682 + _2973 + _4022 + 32] = 0
                        _5024 = mem[64]
                        mem[mem[64]] = _4022 + _2674 + _2682 + _2973 - mem[64]
                        mem[64] = _4022 + _2674 + _2682 + _2973 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5024
                        continue 
                    mem[_2674 + _2682 + _2973 + 32] = 0
                    _4078 = mem[_2667]
                    s = 0
                    while s < _4078:
                        mem[s + _2674 + _2682 + _2973 + 32] = mem[s + _2667 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4078) <= _4078:
                        _4921 = mem[64]
                        mem[mem[64]] = _4078 + _2674 + _2682 + _2973 - mem[64]
                        mem[64] = _4078 + _2674 + _2682 + _2973 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4921
                        continue 
                    mem[_2674 + _2682 + _2973 + _4078 + 32] = 0
                    _5025 = mem[64]
                    mem[mem[64]] = _4078 + _2674 + _2682 + _2973 - mem[64]
                    mem[64] = _4078 + _2674 + _2682 + _2973 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5025
                    continue 
                mem[_2674 + _2682 + 32] = 0
                _3009 = mem[96]
                s = 0
                while s < _3009:
                    mem[s + _2674 + _2682 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_3009) <= _3009:
                    _4023 = mem[_2667]
                    s = 0
                    while s < _4023:
                        mem[s + _2674 + _2682 + _3009 + 32] = mem[s + _2667 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4023) <= _4023:
                        _4922 = mem[64]
                        mem[mem[64]] = _4023 + _2674 + _2682 + _3009 - mem[64]
                        mem[64] = _4023 + _2674 + _2682 + _3009 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _4922
                        continue 
                    mem[_2674 + _2682 + _3009 + _4023 + 32] = 0
                    _5026 = mem[64]
                    mem[mem[64]] = _4023 + _2674 + _2682 + _3009 - mem[64]
                    mem[64] = _4023 + _2674 + _2682 + _3009 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5026
                    continue 
                mem[_2674 + _2682 + _3009 + 32] = 0
                _4079 = mem[_2667]
                s = 0
                while s < _4079:
                    mem[s + _2674 + _2682 + _3009 + 32] = mem[s + _2667 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4079) <= _4079:
                    _4923 = mem[64]
                    mem[mem[64]] = _4079 + _2674 + _2682 + _3009 - mem[64]
                    mem[64] = _4079 + _2674 + _2682 + _3009 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4923
                    continue 
                mem[_2674 + _2682 + _3009 + _4079 + 32] = 0
                _5027 = mem[64]
                mem[mem[64]] = _4079 + _2674 + _2682 + _3009 - mem[64]
                mem[64] = _4079 + _2674 + _2682 + _3009 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5027
                continue 
            u = 0
            t = -stor3[address(arg1)][idx].field_768
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _2959 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = -stor3[address(arg1)][idx].field_768
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_2959]:
                        revert with 0, 50
                    mem[v + _2959 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _3986 = mem[64]
                _4020 = mem[s]
                t = 0
                while t < _4020:
                    mem[t + _3986 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_4020) <= _4020:
                    _4866 = mem[96]
                    s = 0
                    while s < _4866:
                        mem[s + _3986 + _4020 + 32] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_4866) <= _4866:
                        _5416 = mem[_2959]
                        s = 0
                        while s < _5416:
                            mem[s + _3986 + _4020 + _4866 + 32] = mem[s + _2959 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5416) <= _5416:
                            _5748 = mem[64]
                            mem[mem[64]] = _5416 + _3986 + _4020 + _4866 - mem[64]
                            mem[64] = _5416 + _3986 + _4020 + _4866 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _5748
                            continue 
                        mem[_3986 + _4020 + _4866 + _5416 + 32] = 0
                        _5812 = mem[64]
                        mem[mem[64]] = _5416 + _3986 + _4020 + _4866 - mem[64]
                        mem[64] = _5416 + _3986 + _4020 + _4866 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5812
                        continue 
                    mem[_3986 + _4020 + _4866 + 32] = 0
                    _5448 = mem[_2959]
                    s = 0
                    while s < _5448:
                        mem[s + _3986 + _4020 + _4866 + 32] = mem[s + _2959 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5448) <= _5448:
                        _5749 = mem[64]
                        mem[mem[64]] = _5448 + _3986 + _4020 + _4866 - mem[64]
                        mem[64] = _5448 + _3986 + _4020 + _4866 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5749
                        continue 
                    mem[_3986 + _4020 + _4866 + _5448 + 32] = 0
                    _5813 = mem[64]
                    mem[mem[64]] = _5448 + _3986 + _4020 + _4866 - mem[64]
                    mem[64] = _5448 + _3986 + _4020 + _4866 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5813
                    continue 
                mem[_3986 + _4020 + 32] = 0
                _4918 = mem[96]
                s = 0
                while s < _4918:
                    mem[s + _3986 + _4020 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4918) <= _4918:
                    _5417 = mem[_2959]
                    s = 0
                    while s < _5417:
                        mem[s + _3986 + _4020 + _4918 + 32] = mem[s + _2959 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5417) <= _5417:
                        _5750 = mem[64]
                        mem[mem[64]] = _5417 + _3986 + _4020 + _4918 - mem[64]
                        mem[64] = _5417 + _3986 + _4020 + _4918 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5750
                        continue 
                    mem[_3986 + _4020 + _4918 + _5417 + 32] = 0
                    _5814 = mem[64]
                    mem[mem[64]] = _5417 + _3986 + _4020 + _4918 - mem[64]
                    mem[64] = _5417 + _3986 + _4020 + _4918 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5814
                    continue 
                mem[_3986 + _4020 + _4918 + 32] = 0
                _5449 = mem[_2959]
                s = 0
                while s < _5449:
                    mem[s + _3986 + _4020 + _4918 + 32] = mem[s + _2959 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5449) <= _5449:
                    _5751 = mem[64]
                    mem[mem[64]] = _5449 + _3986 + _4020 + _4918 - mem[64]
                    mem[64] = _5449 + _3986 + _4020 + _4918 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5751
                    continue 
                mem[_3986 + _4020 + _4918 + _5449 + 32] = 0
                _5815 = mem[64]
                mem[mem[64]] = _5449 + _3986 + _4020 + _4918 - mem[64]
                mem[64] = _5449 + _3986 + _4020 + _4918 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5815
                continue 
            mem[_2959 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = -stor3[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_2959]:
                    revert with 0, 50
                mem[v + _2959 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _3987 = mem[64]
            _4021 = mem[s]
            t = 0
            while t < _4021:
                mem[t + _3987 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_4021) <= _4021:
                _4867 = mem[96]
                s = 0
                while s < _4867:
                    mem[s + _3987 + _4021 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4867) <= _4867:
                    _5418 = mem[_2959]
                    s = 0
                    while s < _5418:
                        mem[s + _3987 + _4021 + _4867 + 32] = mem[s + _2959 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5418) <= _5418:
                        _5752 = mem[64]
                        mem[mem[64]] = _5418 + _3987 + _4021 + _4867 - mem[64]
                        mem[64] = _5418 + _3987 + _4021 + _4867 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5752
                        continue 
                    mem[_3987 + _4021 + _4867 + _5418 + 32] = 0
                    _5816 = mem[64]
                    mem[mem[64]] = _5418 + _3987 + _4021 + _4867 - mem[64]
                    mem[64] = _5418 + _3987 + _4021 + _4867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5816
                    continue 
                mem[_3987 + _4021 + _4867 + 32] = 0
                _5450 = mem[_2959]
                s = 0
                while s < _5450:
                    mem[s + _3987 + _4021 + _4867 + 32] = mem[s + _2959 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5450) <= _5450:
                    _5753 = mem[64]
                    mem[mem[64]] = _5450 + _3987 + _4021 + _4867 - mem[64]
                    mem[64] = _5450 + _3987 + _4021 + _4867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5753
                    continue 
                mem[_3987 + _4021 + _4867 + _5450 + 32] = 0
                _5817 = mem[64]
                mem[mem[64]] = _5450 + _3987 + _4021 + _4867 - mem[64]
                mem[64] = _5450 + _3987 + _4021 + _4867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5817
                continue 
            mem[_3987 + _4021 + 32] = 0
            _4919 = mem[96]
            s = 0
            while s < _4919:
                mem[s + _3987 + _4021 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_4919) <= _4919:
                _5419 = mem[_2959]
                s = 0
                while s < _5419:
                    mem[s + _3987 + _4021 + _4919 + 32] = mem[s + _2959 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5419) <= _5419:
                    _5754 = mem[64]
                    mem[mem[64]] = _5419 + _3987 + _4021 + _4919 - mem[64]
                    mem[64] = _5419 + _3987 + _4021 + _4919 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5754
                    continue 
                mem[_3987 + _4021 + _4919 + _5419 + 32] = 0
                _5818 = mem[64]
                mem[mem[64]] = _5419 + _3987 + _4021 + _4919 - mem[64]
                mem[64] = _5419 + _3987 + _4021 + _4919 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5818
                continue 
            mem[_3987 + _4021 + _4919 + 32] = 0
            _5451 = mem[_2959]
            s = 0
            while s < _5451:
                mem[s + _3987 + _4021 + _4919 + 32] = mem[s + _2959 + 32]
                s = s + 32
                continue 
            if ceil32(_5451) <= _5451:
                _5755 = mem[64]
                mem[mem[64]] = _5451 + _3987 + _4021 + _4919 - mem[64]
                mem[64] = _5451 + _3987 + _4021 + _4919 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5755
                continue 
            mem[_3987 + _4021 + _4919 + _5451 + 32] = 0
            _5819 = mem[64]
            mem[mem[64]] = _5451 + _3987 + _4021 + _4919 - mem[64]
            mem[64] = _5451 + _3987 + _4021 + _4919 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5819
            continue 
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 and stor3[address(arg1)][idx].field_1024 > -1 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 17
        if not block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42:
            revert with 0, 18
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 / block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 != stor3[address(arg1)][idx].field_1024:
            revert with 0, 'SafeMath: multiplication overflow'
        _2631 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2631] = 30
        mem[_2631 + 32] = 'SafeMath: subtraction overflow'
        if stor3[address(arg1)][idx].field_768 > block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024:
            _2659 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _2659 + 68] = mem[idx + _2631 + 32]
                idx = idx + 32
                continue 
            mem[_2659 + 98] = 0
            revert with memory
              from mem[64]
               len _2659 + -mem[64] + 100
        if block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024 < stor3[address(arg1)][idx].field_768:
            revert with 0, 17
        if not (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768:
            _2697 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2697] = 1
            mem[_2697 + 32] = '0'
            _2703 = mem[64]
            _2715 = mem[s]
            t = 0
            while t < _2715:
                mem[t + _2703 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_2715) <= _2715:
                _2972 = mem[96]
                s = 0
                while s < _2972:
                    mem[s + _2703 + _2715 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_2972) <= _2972:
                    _4018 = mem[_2697]
                    s = 0
                    while s < _4018:
                        mem[s + _2703 + _2715 + _2972 + 32] = mem[s + _2697 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4018) <= _4018:
                        _4914 = mem[64]
                        mem[mem[64]] = _4018 + _2703 + _2715 + _2972 - mem[64]
                        mem[64] = _4018 + _2703 + _2715 + _2972 + 32
                        if ceil32(_4018) == -1:
                            revert with 0, 17
                        s = ceil32(_4018) + 1
                        s = _4914
                        continue 
                    mem[_2703 + _2715 + _2972 + _4018 + 32] = 0
                    _5020 = mem[64]
                    mem[mem[64]] = _4018 + _2703 + _2715 + _2972 - mem[64]
                    mem[64] = _4018 + _2703 + _2715 + _2972 + 32
                    if ceil32(_4018) == -1:
                        revert with 0, 17
                    s = ceil32(_4018) + 1
                    s = _5020
                    continue 
                mem[_2703 + _2715 + _2972 + 32] = 0
                _4076 = mem[_2697]
                s = 0
                while s < _4076:
                    mem[s + _2703 + _2715 + _2972 + 32] = mem[s + _2697 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4076) <= _4076:
                    _4915 = mem[64]
                    mem[mem[64]] = _4076 + _2703 + _2715 + _2972 - mem[64]
                    mem[64] = _4076 + _2703 + _2715 + _2972 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4915
                    continue 
                mem[_2703 + _2715 + _2972 + _4076 + 32] = 0
                _5021 = mem[64]
                mem[mem[64]] = _4076 + _2703 + _2715 + _2972 - mem[64]
                mem[64] = _4076 + _2703 + _2715 + _2972 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5021
                continue 
            mem[_2703 + _2715 + 32] = 0
            _3008 = mem[96]
            s = 0
            while s < _3008:
                mem[s + _2703 + _2715 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_3008) <= _3008:
                _4019 = mem[_2697]
                s = 0
                while s < _4019:
                    mem[s + _2703 + _2715 + _3008 + 32] = mem[s + _2697 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4019) <= _4019:
                    _4916 = mem[64]
                    mem[mem[64]] = _4019 + _2703 + _2715 + _3008 - mem[64]
                    mem[64] = _4019 + _2703 + _2715 + _3008 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _4916
                    continue 
                mem[_2703 + _2715 + _3008 + _4019 + 32] = 0
                _5022 = mem[64]
                mem[mem[64]] = _4019 + _2703 + _2715 + _3008 - mem[64]
                mem[64] = _4019 + _2703 + _2715 + _3008 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5022
                continue 
            mem[_2703 + _2715 + _3008 + 32] = 0
            _4077 = mem[_2697]
            s = 0
            while s < _4077:
                mem[s + _2703 + _2715 + _3008 + 32] = mem[s + _2697 + 32]
                s = s + 32
                continue 
            if ceil32(_4077) <= _4077:
                _4917 = mem[64]
                mem[mem[64]] = _4077 + _2703 + _2715 + _3008 - mem[64]
                mem[64] = _4077 + _2703 + _2715 + _3008 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _4917
                continue 
            mem[_2703 + _2715 + _3008 + _4077 + 32] = 0
            _5023 = mem[64]
            mem[mem[64]] = _4077 + _2703 + _2715 + _3008 - mem[64]
            mem[64] = _4077 + _2703 + _2715 + _3008 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5023
            continue 
        u = 0
        t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _2958 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_2958]:
                    revert with 0, 50
                mem[v + _2958 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _3984 = mem[64]
            _4016 = mem[s]
            t = 0
            while t < _4016:
                mem[t + _3984 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_4016) <= _4016:
                _4864 = mem[96]
                s = 0
                while s < _4864:
                    mem[s + _3984 + _4016 + 32] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_4864) <= _4864:
                    _5412 = mem[_2958]
                    s = 0
                    while s < _5412:
                        mem[s + _3984 + _4016 + _4864 + 32] = mem[s + _2958 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5412) <= _5412:
                        _5740 = mem[64]
                        mem[mem[64]] = _5412 + _3984 + _4016 + _4864 - mem[64]
                        mem[64] = _5412 + _3984 + _4016 + _4864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _5740
                        continue 
                    mem[_3984 + _4016 + _4864 + _5412 + 32] = 0
                    _5804 = mem[64]
                    mem[mem[64]] = _5412 + _3984 + _4016 + _4864 - mem[64]
                    mem[64] = _5412 + _3984 + _4016 + _4864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5804
                    continue 
                mem[_3984 + _4016 + _4864 + 32] = 0
                _5444 = mem[_2958]
                s = 0
                while s < _5444:
                    mem[s + _3984 + _4016 + _4864 + 32] = mem[s + _2958 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5444) <= _5444:
                    _5741 = mem[64]
                    mem[mem[64]] = _5444 + _3984 + _4016 + _4864 - mem[64]
                    mem[64] = _5444 + _3984 + _4016 + _4864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5741
                    continue 
                mem[_3984 + _4016 + _4864 + _5444 + 32] = 0
                _5805 = mem[64]
                mem[mem[64]] = _5444 + _3984 + _4016 + _4864 - mem[64]
                mem[64] = _5444 + _3984 + _4016 + _4864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5805
                continue 
            mem[_3984 + _4016 + 32] = 0
            _4912 = mem[96]
            s = 0
            while s < _4912:
                mem[s + _3984 + _4016 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_4912) <= _4912:
                _5413 = mem[_2958]
                s = 0
                while s < _5413:
                    mem[s + _3984 + _4016 + _4912 + 32] = mem[s + _2958 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5413) <= _5413:
                    _5742 = mem[64]
                    mem[mem[64]] = _5413 + _3984 + _4016 + _4912 - mem[64]
                    mem[64] = _5413 + _3984 + _4016 + _4912 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5742
                    continue 
                mem[_3984 + _4016 + _4912 + _5413 + 32] = 0
                _5806 = mem[64]
                mem[mem[64]] = _5413 + _3984 + _4016 + _4912 - mem[64]
                mem[64] = _5413 + _3984 + _4016 + _4912 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5806
                continue 
            mem[_3984 + _4016 + _4912 + 32] = 0
            _5445 = mem[_2958]
            s = 0
            while s < _5445:
                mem[s + _3984 + _4016 + _4912 + 32] = mem[s + _2958 + 32]
                s = s + 32
                continue 
            if ceil32(_5445) <= _5445:
                _5743 = mem[64]
                mem[mem[64]] = _5445 + _3984 + _4016 + _4912 - mem[64]
                mem[64] = _5445 + _3984 + _4016 + _4912 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5743
                continue 
            mem[_3984 + _4016 + _4912 + _5445 + 32] = 0
            _5807 = mem[64]
            mem[mem[64]] = _5445 + _3984 + _4016 + _4912 - mem[64]
            mem[64] = _5445 + _3984 + _4016 + _4912 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5807
            continue 
        mem[_2958 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = (block.timestamp - stor3[address(arg1)][idx].field_256 / sub_94471c42 * stor3[address(arg1)][idx].field_1024) - stor3[address(arg1)][idx].field_768
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_2958]:
                revert with 0, 50
            mem[v + _2958 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _3985 = mem[64]
        _4017 = mem[s]
        t = 0
        while t < _4017:
            mem[t + _3985 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_4017) <= _4017:
            _4865 = mem[96]
            s = 0
            while s < _4865:
                mem[s + _3985 + _4017 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_4865) <= _4865:
                _5414 = mem[_2958]
                s = 0
                while s < _5414:
                    mem[s + _3985 + _4017 + _4865 + 32] = mem[s + _2958 + 32]
                    s = s + 32
                    continue 
                if ceil32(_5414) <= _5414:
                    _5744 = mem[64]
                    mem[mem[64]] = _5414 + _3985 + _4017 + _4865 - mem[64]
                    mem[64] = _5414 + _3985 + _4017 + _4865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _5744
                    continue 
                mem[_3985 + _4017 + _4865 + _5414 + 32] = 0
                _5808 = mem[64]
                mem[mem[64]] = _5414 + _3985 + _4017 + _4865 - mem[64]
                mem[64] = _5414 + _3985 + _4017 + _4865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5808
                continue 
            mem[_3985 + _4017 + _4865 + 32] = 0
            _5446 = mem[_2958]
            s = 0
            while s < _5446:
                mem[s + _3985 + _4017 + _4865 + 32] = mem[s + _2958 + 32]
                s = s + 32
                continue 
            if ceil32(_5446) <= _5446:
                _5745 = mem[64]
                mem[mem[64]] = _5446 + _3985 + _4017 + _4865 - mem[64]
                mem[64] = _5446 + _3985 + _4017 + _4865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5745
                continue 
            mem[_3985 + _4017 + _4865 + _5446 + 32] = 0
            _5809 = mem[64]
            mem[mem[64]] = _5446 + _3985 + _4017 + _4865 - mem[64]
            mem[64] = _5446 + _3985 + _4017 + _4865 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5809
            continue 
        mem[_3985 + _4017 + 32] = 0
        _4913 = mem[96]
        s = 0
        while s < _4913:
            mem[s + _3985 + _4017 + 32] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_4913) <= _4913:
            _5415 = mem[_2958]
            s = 0
            while s < _5415:
                mem[s + _3985 + _4017 + _4913 + 32] = mem[s + _2958 + 32]
                s = s + 32
                continue 
            if ceil32(_5415) <= _5415:
                _5746 = mem[64]
                mem[mem[64]] = _5415 + _3985 + _4017 + _4913 - mem[64]
                mem[64] = _5415 + _3985 + _4017 + _4913 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _5746
                continue 
            mem[_3985 + _4017 + _4913 + _5415 + 32] = 0
            _5810 = mem[64]
            mem[mem[64]] = _5415 + _3985 + _4017 + _4913 - mem[64]
            mem[64] = _5415 + _3985 + _4017 + _4913 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5810
            continue 
        mem[_3985 + _4017 + _4913 + 32] = 0
        _5447 = mem[_2958]
        s = 0
        while s < _5447:
            mem[s + _3985 + _4017 + _4913 + 32] = mem[s + _2958 + 32]
            s = s + 32
            continue 
        if ceil32(_5447) <= _5447:
            _5747 = mem[64]
            mem[mem[64]] = _5447 + _3985 + _4017 + _4913 - mem[64]
            mem[64] = _5447 + _3985 + _4017 + _4913 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _5747
            continue 
        mem[_3985 + _4017 + _4913 + _5447 + 32] = 0
        _5811 = mem[64]
        mem[mem[64]] = _5447 + _3985 + _4017 + _4913 - mem[64]
        mem[64] = _5447 + _3985 + _4017 + _4913 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _5811
        continue 
    mem[mem[64]] = 32
    _2103 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_2103)] = mem[s + 32 len ceil32(_2103)]
    if ceil32(_2103) > _2103:
        mem[mem[64] + _2103 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_2103) + 32]
}



}
