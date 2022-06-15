contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1, uint256 arg2)
#
address owner;
address sub_6251be71Address;
address sub_07961693Address;
uint128 stor3; offset 160
address sub_9c69fb53Address;
uint64 stor4;
uint256 stor4; offset 64
uint256 claimTime;
uint64 stor5;
uint256 stor5; offset 64
uint256 reward;
uint32 stor6;
uint256 stor6; offset 32
uint256 precision;
mapping of struct sub_8913605c;

function sub_07961693(?) payable {
    return sub_07961693Address
}

function reward() payable {
    return reward
}

function claimTime() payable {
    return claimTime
}

function sub_6251be71(?) payable {
    return sub_6251be71Address
}

function sub_8913605c(?) payable {
    require calldata.size - 4 >= 32
    return sub_8913605c[arg1].field_832
}

function owner() payable {
    return owner
}

function sub_9c69fb53(?) payable {
    return sub_9c69fb53Address
}

function precision() payable {
    return precision
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

function sub_a85a424b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = Mask(96, 0, bool(arg1))
}

function sub_718a5417(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6251be71Address = address(arg1)
}

function sub_825771b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07961693Address = address(arg1)
}

function sub_b0af8d47(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9c69fb53Address = address(arg1)
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

function sub_ff86a373(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == uint64(arg2)
    require arg3 == uint32(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor5.field_0) = uint64(arg1)
    Mask(192, 0, stor5.field_64) = 0
    uint64(stor4.field_0) = uint64(arg2)
    Mask(192, 0, stor4.field_64) = 0
    uint32(stor6.field_0) = uint32(arg3)
    Mask(224, 0, stor6.field_32) = 0
}

function sub_331b971e(?) payable {
    require calldata.size - 4 >= 32
    if sub_8913605c[arg1].field_0:
        if sub_8913605c[arg1].field_0 == uint255(sub_8913605c[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if sub_8913605c[arg1].field_0:
            if sub_8913605c[arg1].field_0 == uint255(sub_8913605c[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_8913605c[arg1].field_0):
                if 31 < uint255(sub_8913605c[arg1].field_0) * 0.5:
                    mem[128] = sub_8913605c[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_8913605c[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_8913605c[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_8913605c[arg1].field_0), data=mem[128 len ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)]), 
                mem[128] = 256 * sub_8913605c[arg1].field_8
        else:
            if sub_8913605c[arg1].field_0 == sub_8913605c[arg1].field_1 < 32:
                revert with 0, 34
            if sub_8913605c[arg1].field_1:
                if 31 < sub_8913605c[arg1].field_1:
                    mem[128] = sub_8913605c[arg1].field_0
                    idx = 128
                    s = 0
                    while sub_8913605c[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = sub_8913605c[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, sub_8913605c[arg1].field_0), data=mem[128 len ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)]), 
                mem[128] = 256 * sub_8913605c[arg1].field_8
        mem[ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5) + 192 len ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)]
        if ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5) > uint255(sub_8913605c[arg1].field_0) * 0.5:
            mem[ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5) + (uint255(sub_8913605c[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, sub_8913605c[arg1].field_0), data=mem[128 len ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(sub_8913605c[arg1].field_0) * 0.5)]), 
    if sub_8913605c[arg1].field_0 == sub_8913605c[arg1].field_1 < 32:
        revert with 0, 34
    if sub_8913605c[arg1].field_0:
        if sub_8913605c[arg1].field_0 == uint255(sub_8913605c[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_8913605c[arg1].field_0):
            if 31 < uint255(sub_8913605c[arg1].field_0) * 0.5:
                mem[128] = sub_8913605c[arg1].field_0
                idx = 128
                s = 0
                while (uint255(sub_8913605c[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_8913605c[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_8913605c[arg1].field_0, data=mem[128 len ceil32(sub_8913605c[arg1].field_1)])
            mem[128] = 256 * sub_8913605c[arg1].field_8
    else:
        if sub_8913605c[arg1].field_0 == sub_8913605c[arg1].field_1 < 32:
            revert with 0, 34
        if sub_8913605c[arg1].field_1:
            if 31 < sub_8913605c[arg1].field_1:
                mem[128] = sub_8913605c[arg1].field_0
                idx = 128
                s = 0
                while sub_8913605c[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = sub_8913605c[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=sub_8913605c[arg1].field_0, data=mem[128 len ceil32(sub_8913605c[arg1].field_1)])
            mem[128] = 256 * sub_8913605c[arg1].field_8
    mem[ceil32(sub_8913605c[arg1].field_1) + 192 len ceil32(sub_8913605c[arg1].field_1)] = mem[128 len ceil32(sub_8913605c[arg1].field_1)]
    if ceil32(sub_8913605c[arg1].field_1) > sub_8913605c[arg1].field_1:
        mem[ceil32(sub_8913605c[arg1].field_1) + sub_8913605c[arg1].field_1 + 192] = 0
    return Array(len=sub_8913605c[arg1].field_0, data=mem[128 len ceil32(sub_8913605c[arg1].field_1)], mem[(2 * ceil32(sub_8913605c[arg1].field_1)) + 192 len 2 * ceil32(sub_8913605c[arg1].field_1)]), 
}



}
