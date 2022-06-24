contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address stakeTokenAddress;
address rewardsTokenAddress;
address sub_0ff8b0abAddress;
array of uint256 checkpoint;
uint256 stor106;
array of struct sub_cc8c1bcf;
array of struct sub_04d94359;
uint256 sub_fcced7e8;
uint256 totalStake;

function sub_04d94359(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_04d94359[address(arg1)].field_0)
}

function sub_0ff8b0ab(?) payable {
    return sub_0ff8b0abAddress
}

function stakeToken() payable {
    return stakeTokenAddress
}

function sub_813dd4e7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_04d94359[arg1].field_0)
    return uint256(sub_04d94359[arg1][arg2].field_0), 
           uint256(sub_04d94359[arg1][arg2].field_256),
           uint256(sub_04d94359[arg1][arg2].field_512)
}

function totalStake() payable {
    return totalStake
}

function owner() payable {
    return owner
}

function sub_cc8c1bcf(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 4
    return uint256(sub_cc8c1bcf[arg1][arg2].field_0)
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function checkpoint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return checkpoint[arg1]
}

function sub_fcced7e8(?) payable {
    return sub_fcced7e8
}

function _fallback() payable {
    revert
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    revert with 0, 'stake has stopped'
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_492c4b2f(?) payable {
    require calldata.size - 4 >= 32
    idx = 224
    s = 0
    while 352 > idx + 32:
        mem[idx + 32] = uint256(sub_cc8c1bcf[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(sub_cc8c1bcf[arg1].field_0), mem[256 len 96]
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

function sub_a3d21836(?) payable {
    require calldata.size - 4 >= 128
    require 35 < calldata.size
    require calldata.size >= 132
    idx = 0
    s = 4
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fcced7e8 = block.timestamp
    s = 0
    idx = 96
    while 224 > idx:
        uint256(sub_cc8c1bcf[stor109][s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while 4 > idx:
        uint256(sub_cc8c1bcf[stor109][idx].field_0) = 0
        idx = idx + 1
        continue 
    emit 0xb02292e8: mem[96 len 128], sub_fcced7e8
}

function sub_7e8b6a22(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require 131 < calldata.size
    require calldata.size >= 228
    idx = 0
    s = 100
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        mem[224] = 2184 * 24 * 3600
        mem[256] = 4344 * 24 * 3600
        mem[288] = 8664 * 24 * 3600
        s = 104
        idx = 224
        while 320 > idx:
            uint32(stor[s].field_0) = mem[idx + 28 len 4]
            Mask(224, 0, stor[s].field_32) = 0
            s = s + 1
            idx = idx + 32
            continue 
        idx = 107
        while 107 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
        stakeTokenAddress = address(cd[4])
        rewardsTokenAddress = address(cd[36])
        sub_0ff8b0abAddress = address(cd[68])
        sub_fcced7e8 = block.timestamp
        s = 0
        idx = 96
        while 224 > idx:
            uint256(sub_cc8c1bcf[stor109][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 4
        while 4 > idx:
            uint256(sub_cc8c1bcf[stor109][idx].field_0) = 0
            idx = idx + 1
            continue 
        var73001 = 4
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
        mem[224] = 2184 * 24 * 3600
        mem[256] = 4344 * 24 * 3600
        mem[288] = 8664 * 24 * 3600
        s = 104
        idx = 224
        while 320 > idx:
            uint32(stor[s].field_0) = mem[idx + 28 len 4]
            Mask(224, 0, stor[s].field_32) = 0
            s = s + 1
            idx = idx + 32
            continue 
        idx = 107
        while 107 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
        stakeTokenAddress = address(cd[4])
        rewardsTokenAddress = address(cd[36])
        sub_0ff8b0abAddress = address(cd[68])
        sub_fcced7e8 = block.timestamp
        s = 0
        idx = 96
        while 224 > idx:
            uint256(sub_cc8c1bcf[stor109][s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 4
        while 4 > idx:
            uint256(sub_cc8c1bcf[stor109][idx].field_0) = 0
            idx = idx + 1
            continue 
    emit 0xb02292e8: mem[96 len 128], sub_fcced7e8
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_9679cf68(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint256(sub_04d94359[address(arg1)].field_0) > test266151307():
        revert with 0, 65
    mem[96] = uint256(sub_04d94359[address(arg1)].field_0)
    mem[64] = (32 * uint256(sub_04d94359[address(arg1)].field_0)) + 128
    if not uint256(sub_04d94359[address(arg1)].field_0):
        mem[0] = address(arg1)
        idx = 0
        while idx < uint256(sub_04d94359[address(arg1)].field_0):
            mem[32] = 108
            if idx >= uint256(sub_04d94359[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 108)
            _39 = mem[64]
            mem[64] = mem[64] + 96
            mem[_39] = uint256(sub_04d94359[address(arg1)][idx].field_0)
            mem[_39 + 32] = uint256(sub_04d94359[address(arg1)][idx].field_256)
            mem[_39 + 64] = uint256(sub_04d94359[address(arg1)][idx].field_512)
            if block.timestamp < uint256(sub_04d94359[address(arg1)][idx].field_0):
                revert with 0, 17
            s = 0
            while s < 3:
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) >= checkpoint[s]:
                    if s == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 108
                    s = s + 1
                    continue 
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) > stor106:
                    if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                        revert with 0, 17
                    if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
                else:
                    if s >= 4:
                        revert with 0, 50
                    if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                        revert with 0, 17
                    if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 108
                idx = idx + 1
                continue 
            if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) <= stor106:
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                    revert with 0, 17
                if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) / 8760 * 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
            else:
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                    revert with 0, 17
                if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 108
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * uint256(sub_04d94359[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(sub_04d94359[address(arg1)].field_0)]
        mem[0] = address(arg1)
        idx = 0
        while idx < uint256(sub_04d94359[address(arg1)].field_0):
            mem[32] = 108
            if idx >= uint256(sub_04d94359[address(arg1)].field_0):
                revert with 0, 50
            mem[0] = sha3(address(arg1), 108)
            _42 = mem[64]
            mem[64] = mem[64] + 96
            mem[_42] = uint256(sub_04d94359[address(arg1)][idx].field_0)
            mem[_42 + 32] = uint256(sub_04d94359[address(arg1)][idx].field_256)
            mem[_42 + 64] = uint256(sub_04d94359[address(arg1)][idx].field_512)
            if block.timestamp < uint256(sub_04d94359[address(arg1)][idx].field_0):
                revert with 0, 17
            s = 0
            while s < 3:
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) >= checkpoint[s]:
                    if s == -1:
                        revert with 0, 17
                    mem[0] = address(arg1)
                    mem[32] = 108
                    s = s + 1
                    continue 
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) > stor106:
                    if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                        revert with 0, 17
                    if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
                else:
                    if s >= 4:
                        revert with 0, 50
                    if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                        revert with 0, 17
                    if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)][s].field_0)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 108
                idx = idx + 1
                continue 
            if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) <= stor106:
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                    revert with 0, 17
                if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) / 8760 * 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_0)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
            else:
                if block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0) and uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768) > -1 / block.timestamp - uint256(sub_04d94359[address(arg1)][idx].field_0):
                    revert with 0, 17
                if (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 and uint256(sub_04d94359[address(arg1)][idx].field_256) > -1 / (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = (block.timestamp * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) - (uint256(sub_04d94359[address(arg1)][idx].field_0) * uint256(sub_cc8c1bcf[uint256(stor108[address(arg1)][idx].field_512)].field_768)) / 8760 * 24 * 3600 * uint256(sub_04d94359[address(arg1)][idx].field_256) / 10^18
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 108
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
