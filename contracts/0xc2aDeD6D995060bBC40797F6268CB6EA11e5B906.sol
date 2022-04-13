contract main {




// =====================  Runtime code  =====================


#
#  - sub_3b68ccdb(?)
#  - getParams()
#  - sub_ea15c781(?)
#
const REVISION = 21


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_acdd8243Address;
array of uint256 stor102;
mapping of uint256 stor103;
mapping of struct sub_efc1a9bf;
mapping of address address;
array of struct stor106;
uint256 stor3541;
uint256 stor3541;
uint256 stor4C55;
uint256 stor53B4;
uint256 storC26E;
uint256 storE6E6;
uint256 storE6E6;

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return address[arg1]
}

function sub_23bf2705(?) payable {
    return sub_acdd8243Address
}

function owner() payable {
    return owner
}

function sub_acdd8243(?) payable {
    return sub_acdd8243Address
}

function sub_efc1a9bf(?) payable {
    require calldata.size - 4 >= 32
    return sub_efc1a9bf[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_539d7f38(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor103[arg1]:
        revert with 0, 'In', 0
    if arg3:
        if arg3 < arg2:
            revert with 0, 'Provided inconsistent data', 0
    sub_efc1a9bf[arg1].field_512 = arg2
    sub_efc1a9bf[arg1].field_768 = arg3
}

function sub_9322d1ed(?) payable {
    if storE6E6 > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if storC26E > -storE6E6 + 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor53B4 > -storE6E6 + -storC26E + 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4C55 > -storE6E6 + -storC26E + -stor53B4 + 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    stor3541 = -storE6E6 + -storC26E + -stor53B4 + -stor4C55 + 10000
    stor3541 = storE6E6
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFeeDistribution() payable {
    mem[128] = 0x474f5645524e414e43455f524557415244000000000000000000000000000000
    mem[160] = 0x444556454c4f504d454e54000000000000000000000000000000000000000000
    mem[192] = 'INSURANCE' << 184
    mem[224] = 'CHARITY' << 200
    mem[256] = 0x4255595f414e445f4255524e0000000000000000000000000000000000000000
    mem[288] = 5
    mem[320 len 160] = call.data[calldata.size len 160]
    idx = 0
    while idx < 5:
        require idx < 5
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 104
        require idx < 5
        mem[(32 * idx) + 320] = sub_efc1a9bf[mem[(32 * idx) + 128]].field_0
        idx = idx + 1
        continue 
    return 64, 
           256,
           5,
           0x474f5645524e414e43455f524557415244000000000000000000000000000000, 0x444556454c4f504d454e54000000000000000000000000000000000000000000, 'INSURANCE', 'CHARITY', 0x4255595f414e445f4255524e0000000000000000000000000000000000000000 >> 1024,
           5,
           mem[320 len 160]
}

function setAddress(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 != 0x535741505f524f55544552000000000000000000000000000000000000000000:
        if arg1 != 0x50524943455f4755415244000000000000000000000000000000000000000000:
            if arg1 != 0x5452454153555245520000000000000000000000000000000000000000000000:
                if arg1 != 0x574f570000000000000000000000000000000000000000000000000000000000:
                    if arg1 != 'REFERRAL_PROGRAM' << 128:
                        if arg1 != 0x475541524445445f50524943455f5349474e4552000000000000000000000000:
                            revert with 0, 
                                        32,
                                        46,
                                        0x7250726f7669646564206e616d65206973206e6f7420612076616c6964206164647265737320706172616d657465, mem[174 len 18] >> 112,
                                        0
    address[arg1] = arg2
}

function getVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor106[address(arg1)].field_0:
        mem[128] = stor106[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor106[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor106[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require stor106[address(arg1)].field_0 <= test266151307()
    mem[(32 * stor106[address(arg1)].field_0) + 128] = stor106[address(arg1)].field_0
    if stor106[address(arg1)].field_0:
        mem[(32 * stor106[address(arg1)].field_0) + 160 len 32 * stor106[address(arg1)].field_0] = call.data[calldata.size len 32 * stor106[address(arg1)].field_0]
    idx = 0
    while idx < stor106[address(arg1)].field_0:
        require idx < stor106[address(arg1)].field_0
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(arg1), 106) + 2
        require idx < stor106[address(arg1)].field_0
        mem[(32 * idx) + (32 * stor106[address(arg1)].field_0) + 160] = stor106[address(arg1)][2][mem[(32 * idx) + 128]].field_0
        idx = idx + 1
        continue 
    mem[(64 * stor106[address(arg1)].field_0) + 160] = 64
    mem[(64 * stor106[address(arg1)].field_0) + 224] = stor106[address(arg1)].field_0
    mem[(64 * stor106[address(arg1)].field_0) + 256 len 32 * stor106[address(arg1)].field_0] = mem[128 len 32 * stor106[address(arg1)].field_0]
    mem[(64 * stor106[address(arg1)].field_0) + 192] = (32 * stor106[address(arg1)].field_0) + 96
    mem[(98 * stor106[address(arg1)].field_0) + 256] = stor106[address(arg1)].field_0
    mem[(98 * stor106[address(arg1)].field_0) + 288 len 32 * stor106[address(arg1)].field_0] = mem[(32 * stor106[address(arg1)].field_0) + 160 len 32 * stor106[address(arg1)].field_0]
    return memory
      from (64 * stor106[address(arg1)].field_0) + 160
       len (194 * stor106[address(arg1)].field_0) + 128
}

function update() payable {
    mem[128] = 'POOL_UTILIZATION_ALLOWANCE'
    mem[160] = 'BASE_BORROW_RATE' << 128
    mem[192] = 'OPTIMAL_SLOPE' << 152
    mem[224] = 'EXCESS_SLOPE' << 160
    mem[256] = 0x4f5054494d414c5f5554494c495a4154494f4e00000000000000000000000000
    mem[288] = 0x4c49515549444154494f4e5f4d415247494e0000000000000000000000000000
    mem[320] = 0x4c49515549444154494f4e5f5245574152440000000000000000000000000000
    mem[352] = 0x4d41585f4c455645524147455f464143544f5200000000000000000000000000
    mem[384] = 0x4d41585f524154455f4d554c5449504c49455200000000000000000000000000
    mem[416] = 0x4d494e5f574f575f42414c414e43455f58340000000000000000000000000000
    mem[448] = 'MIN_WOW_BALANCE_X5' << 112
    mem[480] = 'TRADER_PROFIT_FEE' << 120
    mem[512] = 0x54524541535552455f464143544f520000000000000000000000000000000000
    mem[544] = 0x4d41585f4c49515549444154494f4e5f52455741524400000000000000000000
    mem[576] = 0x4d41585f50524943455f5448524553484f4c4400000000000000000000000000
    mem[608] = 0x4d494e5f504f534954494f4e5f4445504f534954000000000000000000000000
    mem[640] = 'REFERRAL_BONUS_1' << 128
    mem[672] = 0x524546455252414c5f424f4e55535f3200000000000000000000000000000000
    mem[704] = 'REFERRAL_BONUS_3' << 128
    require stor102.length <= test266151307()
    mem[736] = stor102.length
    if stor102.length:
        mem[768 len 32 * stor102.length] = call.data[calldata.size len 32 * stor102.length]
    idx = 0
    s = 0
    while idx < stor102.length:
        mem[0] = 102
        s = 0
        while s < 19:
            require s < 19
            if mem[(32 * s) + 128] != stor102[idx]:
                s = s + 1
                continue 
            idx = idx + 1
            s = stor102[idx]
            continue 
        require 0 < stor102.length
        mem[768] = stor102[idx]
        idx = idx + 1
        s = stor102[idx]
        continue 
    s = 0
    while s < 19:
        require s < 19
        mem[0] = mem[(32 * s) + 128]
        mem[32] = 103
        if not stor103[mem[(32 * s) + 128]]:
            stor102.length++
            stor102[stor102.length] = mem[(32 * s) + 128]
            mem[0] = mem[(32 * s) + 128]
            mem[32] = 103
            stor103[mem[(32 * s) + 128]] = stor102.length
        s = s + 1
        continue 
}

function sub_965faf3d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    mem[96] = 26
    mem[128] = 'Provided inconsistent data' << 48
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Provided inconsistent data', 0
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'Provided inconsistent data' << 48
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'Provided inconsistent data', 0
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 103
        _40 = mem[64]
        mem[64] = mem[64] + 64
        mem[_40] = 17
        mem[_40 + 32] = 0x496e76616c696420706172616d65746572000000000000000000000000000000
        if not stor103[cd[((32 * idx) + cd[4] + 36)]]:
            _41 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            s = 0
            while s < 17:
                mem[s + _41 + 68] = mem[s + _40 + 32]
                s = s + 32
                continue 
            mem[_41 + 85] = 0
            revert with memory
              from mem[64]
               len _41 + -mem[64] + 100
        if not cd[((32 * idx) + cd[68] + 36)]:
            _42 = mem[64]
            mem[64] = mem[64] + 64
            mem[_42] = 26
            mem[_42 + 32] = 'Provided inconsistent data' << 48
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 104
            sub_efc1a9bf[cd[((32 * idx) + cd[4] + 36)]].field_512 = cd[((32 * idx) + cd[36] + 36)]
            sub_efc1a9bf[cd[((32 * idx) + cd[4] + 36)]].field_768 = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = 26
        mem[_45 + 32] = 'Provided inconsistent data' << 48
        if cd[((32 * idx) + cd[68] + 36)] >= cd[((32 * idx) + cd[36] + 36)]:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 104
            sub_efc1a9bf[cd[((32 * idx) + cd[4] + 36)]].field_512 = cd[((32 * idx) + cd[36] + 36)]
            sub_efc1a9bf[cd[((32 * idx) + cd[4] + 36)]].field_768 = cd[((32 * idx) + cd[68] + 36)]
            idx = idx + 1
            continue 
        _47 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _47 + 68] = mem[idx + _45 + 32]
            idx = idx + 32
            continue 
        mem[_47 + 94] = 0
        revert with memory
          from mem[64]
           len _47 + -mem[64] + 100
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    sub_acdd8243Address = arg1
    mem[128] = 'POOL_UTILIZATION_ALLOWANCE'
    mem[160] = 'BASE_BORROW_RATE' << 128
    mem[192] = 'OPTIMAL_SLOPE' << 152
    mem[224] = 'EXCESS_SLOPE' << 160
    mem[256] = 0x4f5054494d414c5f5554494c495a4154494f4e00000000000000000000000000
    mem[288] = 0x4c49515549444154494f4e5f4d415247494e0000000000000000000000000000
    mem[320] = 0x4c49515549444154494f4e5f5245574152440000000000000000000000000000
    mem[352] = 0x4d41585f4c455645524147455f464143544f5200000000000000000000000000
    mem[384] = 0x4d41585f524154455f4d554c5449504c49455200000000000000000000000000
    mem[416] = 0x4d494e5f574f575f42414c414e43455f58340000000000000000000000000000
    mem[448] = 'MIN_WOW_BALANCE_X5' << 112
    mem[480] = 'TRADER_PROFIT_FEE' << 120
    mem[512] = 0x54524541535552455f464143544f520000000000000000000000000000000000
    mem[544] = 0x4d41585f4c49515549444154494f4e5f52455741524400000000000000000000
    mem[576] = 0x4d41585f50524943455f5448524553484f4c4400000000000000000000000000
    mem[608] = 0x4d494e5f504f534954494f4e5f4445504f534954000000000000000000000000
    mem[640] = 'REFERRAL_BONUS_1' << 128
    mem[672] = 0x524546455252414c5f424f4e55535f3200000000000000000000000000000000
    mem[704] = 'REFERRAL_BONUS_3' << 128
    require stor102.length <= test266151307()
    mem[736] = stor102.length
    if stor102.length:
        mem[768 len 32 * stor102.length] = call.data[calldata.size len 32 * stor102.length]
    idx = 0
    s = 0
    while idx < stor102.length:
        mem[0] = 102
        s = 0
        while s < 19:
            require s < 19
            if mem[(32 * s) + 128] != stor102[idx]:
                s = s + 1
                continue 
            idx = idx + 1
            s = stor102[idx]
            continue 
        require 0 < stor102.length
        mem[768] = stor102[idx]
        idx = idx + 1
        s = stor102[idx]
        continue 
    s = 0
    while s < 19:
        require s < 19
        mem[0] = mem[(32 * s) + 128]
        mem[32] = 103
        if not stor103[mem[(32 * s) + 128]]:
            stor102.length++
            stor102[stor102.length] = mem[(32 * s) + 128]
            mem[0] = mem[(32 * s) + 128]
            mem[32] = 103
            stor103[mem[(32 * s) + 128]] = stor102.length
        s = s + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_22efee24(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = 0x4155544f4d415449435f52455741524400000000000000000000000000000000
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 106) + 1
        if not stor106[address(cd[((32 * idx) + cd[4] + 36)])][1][0x4155544f4d415449435f52455741524400000000000000000000000000000000].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = 0x444556454c4f504d454e54000000000000000000000000000000000000000000
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 106) + 2
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 30
        mem[_63 + 32] = 'SafeMath: subtraction overflow'
        if stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_0 > 10000:
            _64 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _64 + 68] = mem[idx + _63 + 32]
                idx = idx + 32
                continue 
            mem[_64 + 68] = mem[_64 + 70 len 30]
            revert with memory
              from mem[64]
               len _64 + -mem[64] + 100
        _70 = mem[64]
        mem[64] = mem[64] + 64
        mem[_70] = 30
        mem[_70 + 32] = 'SafeMath: subtraction overflow'
        if stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['INSURANCE'].field_0 > -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_0 + 10000:
            _72 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _72 + 68] = mem[idx + _70 + 32]
                idx = idx + 32
                continue 
            mem[_72 + 68] = mem[_72 + 70 len 30]
            revert with memory
              from mem[64]
               len _72 + -mem[64] + 100
        _78 = mem[64]
        mem[64] = mem[64] + 64
        mem[_78] = 30
        mem[_78 + 32] = 'SafeMath: subtraction overflow'
        if stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['CHARITY'].field_0 > -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['INSURANCE'].field_0 + 10000:
            _80 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _80 + 68] = mem[idx + _78 + 32]
                idx = idx + 32
                continue 
            mem[_80 + 68] = mem[_80 + 70 len 30]
            revert with memory
              from mem[64]
               len _80 + -mem[64] + 100
        _86 = mem[64]
        mem[64] = mem[64] + 64
        mem[_86] = 30
        mem[_86 + 32] = 'SafeMath: subtraction overflow'
        if stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x4255595f414e445f4255524e0000000000000000000000000000000000000000].field_0 > -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['INSURANCE'].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['CHARITY'].field_0 + 10000:
            _88 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _88 + 68] = mem[idx + _86 + 32]
                idx = idx + 32
                continue 
            mem[_88 + 68] = mem[_88 + 70 len 30]
            revert with memory
              from mem[64]
               len _88 + -mem[64] + 100
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x474f5645524e414e43455f524557415244000000000000000000000000000000].field_0 = -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['INSURANCE'].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['CHARITY'].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x4255595f414e445f4255524e0000000000000000000000000000000000000000].field_0 + 10000
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x474f5645524e414e43455f524557415244000000000000000000000000000000].field_256 = stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_256
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = 0x474f5645524e414e43455f524557415244000000000000000000000000000000
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 106) + 1
        if not stor106[address(cd[((32 * idx) + cd[4] + 36)])][1][0x474f5645524e414e43455f524557415244000000000000000000000000000000].field_0:
            stor106[address(cd[((32 * idx) + cd[4] + 36)])].field_0++
            stor106[address(cd[((32 * idx) + cd[4] + 36)])][stor106[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = 0x474f5645524e414e43455f524557415244000000000000000000000000000000
            mem[0] = 0x474f5645524e414e43455f524557415244000000000000000000000000000000
            mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 106) + 1
            stor106[address(cd[((32 * idx) + cd[4] + 36)])][1][0x474f5645524e414e43455f524557415244000000000000000000000000000000].field_0 = stor106[address(cd[((32 * idx) + cd[4] + 36)])].field_0
        idx = idx + 1
        s = -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x444556454c4f504d454e54000000000000000000000000000000000000000000].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['INSURANCE'].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2]['CHARITY'].field_0 + -stor106[address(cd[((32 * idx) + cd[4] + 36)])][2][0x4255595f414e445f4255524e0000000000000000000000000000000000000000].field_0 + 10000
        continue 
}

function sub_0ed9a512(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not stor103[arg2]:
        revert with 0, 'In', 0
    require ext_code.size(sub_acdd8243Address)
    staticcall sub_acdd8243Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Voting is no', 0
    require ext_code.size(sub_acdd8243Address)
    staticcall sub_acdd8243Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 < sub_efc1a9bf[arg2].field_512:
        revert with 0, 'Parameter value is out of bounds'
    if sub_efc1a9bf[arg2].field_768:
        if arg3 > sub_efc1a9bf[arg2].field_768:
            revert with 0, 'Parameter value is out of bounds'
    if not stor106[address(arg1)][1][arg2].field_0:
        if ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 < sub_efc1a9bf[arg2].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if not stor106[address(arg1)][1][arg2].field_0:
            stor106[address(arg1)].field_0++
            stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = arg2
            stor106[address(arg1)][1][arg2].field_0 = stor106[address(arg1)].field_0
        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256:
            stor106[address(arg1)][2][arg2].field_0 = arg3
            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
            sub_efc1a9bf[arg2].field_0 = 0
        else:
            if not arg3:
                if not sub_efc1a9bf[arg2].field_0:
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    stor106[address(arg1)][2][arg2].field_0 = arg3
                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                    sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256
                else:
                    if sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_0 != sub_efc1a9bf[arg2].field_256:
                        revert with 0, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 709 len 31]
                    if sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 < sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    stor106[address(arg1)][2][arg2].field_0 = arg3
                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                    sub_efc1a9bf[arg2].field_0 = sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256
            else:
                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 709 len 31]
                if not sub_efc1a9bf[arg2].field_0:
                    if ext_call.return_data[0] * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    stor106[address(arg1)][2][arg2].field_0 = arg3
                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                    sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256
                else:
                    if sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_0 != sub_efc1a9bf[arg2].field_256:
                        revert with 0, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 709 len 31]
                    if (ext_call.return_data[0] * arg3) + (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) < sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    stor106[address(arg1)][2][arg2].field_0 = arg3
                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                    sub_efc1a9bf[arg2].field_0 = (ext_call.return_data[0] * arg3) + (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256
        sub_efc1a9bf[arg2].field_256 += ext_call.return_data[0]
    else:
        if stor106[address(arg1)][2][arg2].field_256 > sub_efc1a9bf[arg2].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0]:
                if stor106[address(arg1)][1][arg2].field_0:
                    require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                    require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                    stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                    stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                    require stor106[address(arg1)].field_0
                    stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                    stor106[address(arg1)].field_0--
                    stor106[address(arg1)][1][arg2].field_0 = 0
            if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                stor106[address(arg1)][2][arg2].field_0 = arg3
                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                sub_efc1a9bf[arg2].field_0 = 0
            else:
                if not arg3:
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    stor106[address(arg1)][2][arg2].field_0 = arg3
                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                    sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                else:
                    if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 901 len 31]
                    if ext_call.return_data[0] * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                        revert with 0, 'SafeMath: division by zero'
                    stor106[address(arg1)][2][arg2].field_0 = arg3
                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                    sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
        else:
            if not sub_efc1a9bf[arg2].field_0:
                if not stor106[address(arg1)][2][arg2].field_0:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        if stor106[address(arg1)][1][arg2].field_0:
                            require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                            require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                            stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                            stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                            require stor106[address(arg1)].field_0
                            stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                            stor106[address(arg1)].field_0--
                            stor106[address(arg1)][1][arg2].field_0 = 0
                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                        stor106[address(arg1)][2][arg2].field_0 = arg3
                        stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                        sub_efc1a9bf[arg2].field_0 = 0
                    else:
                        if not arg3:
                            if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                revert with 0, 'SafeMath: division by zero'
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                        else:
                            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(2 * ceil32(return_data.size)) + 901 len 31]
                            if ext_call.return_data[0] * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                revert with 0, 'SafeMath: division by zero'
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                else:
                    if stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / stor106[address(arg1)][2][arg2].field_0 != stor106[address(arg1)][2][arg2].field_256:
                        revert with 0, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 901 len 31]
                    if 0 <= stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if stor106[address(arg1)][1][arg2].field_0:
                                require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                                require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                                stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                                require stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                                stor106[address(arg1)].field_0--
                                stor106[address(arg1)][1][arg2].field_0 = 0
                        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0
                        else:
                            if not arg3:
                                if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(arg1)][2][arg2].field_0 = arg3
                                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                            else:
                                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 901 len 31]
                                if ext_call.return_data[0] * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(arg1)][2][arg2].field_0 = arg3
                                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                    else:
                        if stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if stor106[address(arg1)][1][arg2].field_0:
                                require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                                require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                                stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                                require stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                                stor106[address(arg1)].field_0--
                                stor106[address(arg1)][1][arg2].field_0 = 0
                        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0
                        else:
                            if not arg3:
                                if not -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                                else:
                                    if (sub_efc1a9bf[arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256 != sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = (sub_efc1a9bf[arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                            else:
                                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                if not -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    if ext_call.return_data[0] * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                                else:
                                    if (sub_efc1a9bf[arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256 != sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                    if ext_call.return_data[0] * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = (ext_call.return_data[0] * arg3) + (sub_efc1a9bf[arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * -1 * stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
            else:
                if sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_0 != sub_efc1a9bf[arg2].field_256:
                    revert with 0, 
                                32,
                                33,
                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(2 * ceil32(return_data.size)) + 901 len 31]
                if not stor106[address(arg1)][2][arg2].field_0:
                    if sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 <= 0:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if stor106[address(arg1)][1][arg2].field_0:
                                require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                                require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                                stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                                require stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                                stor106[address(arg1)].field_0--
                                stor106[address(arg1)][1][arg2].field_0 = 0
                        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0
                        else:
                            if not arg3:
                                if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(arg1)][2][arg2].field_0 = arg3
                                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                            else:
                                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 901 len 31]
                                if ext_call.return_data[0] * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(arg1)][2][arg2].field_0 = arg3
                                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                    else:
                        if 0 > sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if stor106[address(arg1)][1][arg2].field_0:
                                require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                                require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                                stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                                require stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                                stor106[address(arg1)].field_0--
                                stor106[address(arg1)][1][arg2].field_0 = 0
                        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0
                        else:
                            if not arg3:
                                if not sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                                else:
                                    if (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256 != sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                            else:
                                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                if not sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    if ext_call.return_data[0] * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                                else:
                                    if (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256 != sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                    if ext_call.return_data[0] * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = (ext_call.return_data[0] * arg3) + (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                else:
                    if stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 / stor106[address(arg1)][2][arg2].field_0 != stor106[address(arg1)][2][arg2].field_256:
                        revert with 0, 
                                    32,
                                    33,
                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(2 * ceil32(return_data.size)) + 901 len 31]
                    if sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0 <= stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0:
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if stor106[address(arg1)][1][arg2].field_0:
                                require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                                require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                                stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                                require stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                                stor106[address(arg1)].field_0--
                                stor106[address(arg1)][1][arg2].field_0 = 0
                        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0
                        else:
                            if not arg3:
                                if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(arg1)][2][arg2].field_0 = arg3
                                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                            else:
                                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 901 len 31]
                                if ext_call.return_data[0] * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(arg1)][2][arg2].field_0 = arg3
                                stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                    else:
                        if stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0 > sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            revert with 0, 'SafeMath: division by zero'
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ext_call.return_data[0]:
                            if stor106[address(arg1)][1][arg2].field_0:
                                require stor106[address(arg1)].field_0 - 1 < stor106[address(arg1)].field_0
                                require stor106[address(arg1)][1][arg2].field_0 - 1 < stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)][1][arg2].field_0].field_0 = stor106[address(arg1)][stor106[address(arg1)].field_0].field_0
                                stor106[address(arg1)][1][stor106[address(arg1)][stor106[address(arg1)].field_0].field_0].field_0 = stor106[address(arg1)][1][arg2].field_0
                                require stor106[address(arg1)].field_0
                                stor106[address(arg1)][stor106[address(arg1)].field_0].field_0 = 0
                                stor106[address(arg1)].field_0--
                                stor106[address(arg1)][1][arg2].field_0 = 0
                        if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                            stor106[address(arg1)][2][arg2].field_0 = arg3
                            stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                            sub_efc1a9bf[arg2].field_0 = 0
                        else:
                            if not arg3:
                                if not (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = 0 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                                else:
                                    if (sub_efc1a9bf[arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256 != sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = (sub_efc1a9bf[arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                            else:
                                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                if not (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                    if ext_call.return_data[0] * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = ext_call.return_data[0] * arg3 / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
                                else:
                                    if (sub_efc1a9bf[arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256 != sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 1029 len 31]
                                    if ext_call.return_data[0] * arg3 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256:
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(arg1)][2][arg2].field_0 = arg3
                                    stor106[address(arg1)][2][arg2].field_256 = ext_call.return_data[0]
                                    sub_efc1a9bf[arg2].field_0 = (ext_call.return_data[0] * arg3) + (sub_efc1a9bf[arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) - (stor106[address(arg1)][2][arg2].field_256 * (sub_efc1a9bf[arg2].field_256 * sub_efc1a9bf[arg2].field_0) - (stor106[address(arg1)][2][arg2].field_256 * stor106[address(arg1)][2][arg2].field_0) / sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256) / ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
        sub_efc1a9bf[arg2].field_256 = ext_call.return_data[0] + sub_efc1a9bf[arg2].field_256 - stor106[address(arg1)][2][arg2].field_256
    require ext_code.size(sub_acdd8243Address)
    call sub_acdd8243Address.0x8af86cfa with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f811db68(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 26
    mem[128] = 'Provided inconsistent data' << 48
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'Provided inconsistent data', 0
    mem[164] = address(cd[4])
    mem[196] = this.address
    require ext_code.size(sub_acdd8243Address)
    staticcall sub_acdd8243Address.0xdd62ed3e with:
            gas gas_remaining wei
           args address(cd[4]), this.address
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = ceil32(return_data.size) + 224
    mem[ceil32(return_data.size) + 160] = 22
    mem[ceil32(return_data.size) + 192] = 0x566f74696e67206973206e6f7420617070726f76656400000000000000000000
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Voting is no', 0
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 103
        _3153 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3153] = 17
        mem[_3153 + 32] = 0x496e76616c696420706172616d65746572000000000000000000000000000000
        if stor103[cd[((32 * idx) + cd[36] + 36)]]:
            idx = idx + 1
            continue 
        _3154 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 17
        idx = 0
        while idx < 17:
            mem[idx + _3154 + 68] = mem[idx + _3153 + 32]
            idx = idx + 32
            continue 
        mem[_3154 + 85] = 0
        revert with memory
          from mem[64]
           len _3154 + -mem[64] + 100
    mem[mem[64] + 4] = address(cd[4])
    require ext_code.size(sub_acdd8243Address)
    staticcall sub_acdd8243Address.0x70a08231 with:
            gas gas_remaining wei
           args address(cd[4])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _3151 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _3152 = mem[_3151]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        _6278 = mem[64]
        mem[64] = mem[64] + 128
        mem[_6278] = 0
        mem[_6278 + 32] = 0
        mem[_6278 + 64] = 0
        mem[_6278 + 96] = 0
        mem[0] = cd[((32 * idx) + cd[36] + 36)]
        mem[32] = 104
        _6280 = mem[64]
        mem[64] = mem[64] + 128
        mem[_6280] = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0
        mem[_6280 + 32] = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
        mem[_6280 + 64] = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_512
        mem[_6280 + 96] = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_768
        _6281 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6281] = 32
        mem[_6281 + 32] = 'Parameter value is out of bounds'
        if cd[((32 * idx) + cd[68] + 36)] < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_512:
            _6283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 32
            idx = 0
            while idx < 32:
                mem[idx + _6283 + 68] = mem[idx + _6281 + 32]
                idx = idx + 32
                continue 
            revert with memory
              from mem[64]
               len _6283 + -mem[64] + 100
        if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_768:
            _6284 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6284] = 32
            mem[_6284 + 32] = 'Parameter value is out of bounds'
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = sha3(address(cd[4]), 106) + 1
            if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                if _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 106) + 1
                if stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                        mem[32] = 104
                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    else:
                        if not cd[((32 * idx) + cd[68] + 36)]:
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                _6506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6506] = 26
                                mem[_6506 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6506 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6560 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6560] = 26
                                mem[_6560 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6560 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6559 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6559] = 26
                                mem[_6559 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6559 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6640 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6640] = 26
                                mem[_6640 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6640 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                else:
                    stor106[address(cd[4])].field_0++
                    stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = cd[((32 * idx) + cd[36] + 36)]
                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                    mem[32] = sha3(address(cd[4]), 106) + 1
                    stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = stor106[address(cd[4])].field_0
                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                        mem[32] = 104
                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    else:
                        if not cd[((32 * idx) + cd[68] + 36)]:
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                _6507 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6507] = 26
                                mem[_6507 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6507 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6565 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6565] = 26
                                mem[_6565 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6565 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6564 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6564] = 26
                                mem[_6564 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6564 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6649 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6649] = 26
                                mem[_6649 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6649 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 += _3152
            else:
                _6301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6301] = 0
                mem[_6301 + 32] = 0
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 106) + 2
                _6309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6309] = stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0
                mem[_6309 + 32] = stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                _6312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6312] = 30
                mem[_6312 + 32] = 'SafeMath: subtraction overflow'
                if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                    _6321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6321 + 68] = mem[idx + _6312 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6321 + 68] = mem[_6321 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _6321 + -mem[64] + 100
                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                    if _3152 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if _3152:
                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                            mem[32] = 104
                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                        else:
                            if not cd[((32 * idx) + cd[68] + 36)]:
                                _6579 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6579] = 26
                                mem[_6579 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6579 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6670 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6670] = 26
                                mem[_6670 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6670 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                    else:
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        mem[32] = sha3(address(cd[4]), 106) + 1
                        if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                            else:
                                if not cd[((32 * idx) + cd[68] + 36)]:
                                    _6972 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6972] = 26
                                    mem[_6972 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _6972 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7045 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7045] = 26
                                    mem[_7045 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7045 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                            require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                            stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                            stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                            require stor106[address(cd[4])].field_0
                            stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                            stor106[address(cd[4])].field_0--
                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                            mem[32] = sha3(address(cd[4]), 106) + 1
                            stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                            else:
                                if not cd[((32 * idx) + cd[68] + 36)]:
                                    _7087 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7087] = 26
                                    mem[_7087 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7087 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7149 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7149] = 26
                                    mem[_7149 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7149 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                else:
                    if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                        if not stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                            if _3152 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _3152:
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                else:
                                    if not cd[((32 * idx) + cd[68] + 36)]:
                                        _7044 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7044] = 26
                                        mem[_7044 + 32] = 'SafeMath: division by zero'
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _7044 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7105 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7105] = 26
                                        mem[_7105 + 32] = 'SafeMath: division by zero'
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _7105 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                mem[32] = sha3(address(cd[4]), 106) + 1
                                if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7400 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7400] = 26
                                            mem[_7400 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7400 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7497 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7497] = 26
                                            mem[_7497 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7497 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                    require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                    stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                    stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                    require stor106[address(cd[4])].field_0
                                    stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                    stor106[address(cd[4])].field_0--
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7555 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7555] = 26
                                            mem[_7555 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7555 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7644 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7644] = 26
                                            mem[_7644 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7644 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 != stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 <= stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7103 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7103] = 26
                                            mem[_7103 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7103 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7178 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7178] = 26
                                            mem[_7178 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                s = 32
                                                while s < 26:
                                                    mem[s + mem[64] + 68] = mem[s + _7178 + 32]
                                                    s = s + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7494 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7494] = 26
                                                mem[_7494 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7494 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7593 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7593] = 26
                                                mem[_7593 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7593 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7640 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7640] = 26
                                                mem[_7640 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7640 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7746 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7746] = 26
                                                mem[_7746 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7746 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                _6405 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6405] = 30
                                mem[_6405 + 32] = 'SafeMath: subtraction overflow'
                                if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 > 0:
                                    _6428 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _6428 + 68] = mem[idx + _6405 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6428 + 68] = mem[_6428 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6428 + -mem[64] + 100
                                _6494 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6494] = 26
                                mem[_6494 + 32] = 'SafeMath: division by zero'
                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6494 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                _7750 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7750] = 26
                                                mem[_7750 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7750 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _7903 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7903] = 26
                                                mem[_7903 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7903 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7902 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7902] = 26
                                                mem[_7902 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7902 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8074 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8074] = 26
                                                mem[_8074 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8074 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8400 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8400] = 26
                                                    mem[_8400 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8400 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8544 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8544] = 26
                                                    mem[_8544 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8544 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8543 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8543] = 26
                                                    mem[_8543 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8543 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8670 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8670] = 26
                                                    mem[_8670 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8670 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8616 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8616] = 26
                                                    mem[_8616 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8616 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8725 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8725] = 26
                                                    mem[_8725 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8725 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8724 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8724] = 26
                                                    mem[_8724 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8724 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8853 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8853] = 26
                                                    mem[_8853 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8853 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                    else:
                        if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                            if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 <= 0:
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7101 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7101] = 26
                                            mem[_7101 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7101 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7171 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7171] = 26
                                            mem[_7171 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                s = 32
                                                while s < 26:
                                                    mem[s + mem[64] + 68] = mem[s + _7171 + 32]
                                                    s = s + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7489 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7489] = 26
                                                mem[_7489 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7489 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7585 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7585] = 26
                                                mem[_7585 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7585 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7638 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7638] = 26
                                                mem[_7638 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7638 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7738 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7738] = 26
                                                mem[_7738 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7738 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                _6404 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6404] = 30
                                mem[_6404 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    _6425 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _6425 + 68] = mem[idx + _6404 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6425 + 68] = mem[_6425 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6425 + -mem[64] + 100
                                _6491 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6491] = 26
                                mem[_6491 + 32] = 'SafeMath: division by zero'
                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6491 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                _7742 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7742] = 26
                                                mem[_7742 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7742 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _7885 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7885] = 26
                                                mem[_7885 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7885 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7884 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7884] = 26
                                                mem[_7884 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7884 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8057 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8057] = 26
                                                mem[_8057 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8057 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8391 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8391] = 26
                                                    mem[_8391 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8391 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8533 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8533] = 26
                                                    mem[_8533 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8533 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8532 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8532] = 26
                                                    mem[_8532 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8532 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8659 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8659] = 26
                                                    mem[_8659 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8659 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8610 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8610] = 26
                                                    mem[_8610 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8610 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8716 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8716] = 26
                                                    mem[_8716 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8716 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8715 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8715] = 26
                                                    mem[_8715 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8715 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8835 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8835] = 26
                                                    mem[_8835 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8835 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 != stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 <= stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7169 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7169] = 26
                                            mem[_7169 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                s = 32
                                                while s < 26:
                                                    mem[s + mem[64] + 68] = mem[s + _7169 + 32]
                                                    s = s + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7265 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7265] = 26
                                            mem[_7265 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7265 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7582 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7582] = 26
                                                mem[_7582 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7582 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7674 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7674] = 26
                                                mem[_7674 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7674 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7734 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7734] = 26
                                                mem[_7734 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7734 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7868 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7868] = 26
                                                mem[_7868 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7868 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                _6424 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6424] = 30
                                mem[_6424 + 32] = 'SafeMath: subtraction overflow'
                                if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    _6452 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _6452 + 68] = mem[idx + _6424 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6452 + 68] = mem[_6452 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6452 + -mem[64] + 100
                                _6534 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6534] = 26
                                mem[_6534 + 32] = 'SafeMath: division by zero'
                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6534 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                _7872 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7872] = 26
                                                mem[_7872 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7872 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8043 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8043] = 26
                                                mem[_8043 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8043 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8042 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8042] = 26
                                                mem[_8042 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8042 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8212 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8212] = 26
                                                mem[_8212 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8212 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8527 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8527] = 26
                                                    mem[_8527 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8527 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8651 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8651] = 26
                                                    mem[_8651 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8651 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8650 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8650] = 26
                                                    mem[_8650 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8650 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8762 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8762] = 26
                                                    mem[_8762 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8762 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8710 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8710] = 26
                                                    mem[_8710 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8710 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8822 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8822] = 26
                                                    mem[_8822 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8822 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8821 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8821] = 26
                                                    mem[_8821 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8821 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8977 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8977] = 26
                                                    mem[_8977 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8977 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
        else:
            _6288 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6288] = 32
            mem[_6288 + 32] = 'Parameter value is out of bounds'
            if cd[((32 * idx) + cd[68] + 36)] > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_768:
                _6290 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _6290 + 68] = mem[idx + _6288 + 32]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _6290 + -mem[64] + 100
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            mem[32] = sha3(address(cd[4]), 106) + 1
            if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                if _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 106) + 1
                if stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                        mem[32] = 104
                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    else:
                        if not cd[((32 * idx) + cd[68] + 36)]:
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                _6552 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6552] = 26
                                mem[_6552 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6552 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6620 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6620] = 26
                                mem[_6620 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6620 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6619 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6619] = 26
                                mem[_6619 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6619 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6716 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6716] = 26
                                mem[_6716 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6716 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                else:
                    stor106[address(cd[4])].field_0++
                    stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = cd[((32 * idx) + cd[36] + 36)]
                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                    mem[32] = sha3(address(cd[4]), 106) + 1
                    stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = stor106[address(cd[4])].field_0
                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                        mem[32] = 104
                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                    else:
                        if not cd[((32 * idx) + cd[68] + 36)]:
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                _6553 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6553] = 26
                                mem[_6553 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6553 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6625 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6625] = 26
                                mem[_6625 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6625 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6624 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6624] = 26
                                mem[_6624 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6624 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) < sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6725 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6725] = 26
                                mem[_6725 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6725 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256
                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 += _3152
            else:
                _6311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6311] = 0
                mem[_6311 + 32] = 0
                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                mem[32] = sha3(address(cd[4]), 106) + 2
                _6317 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6317] = stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0
                mem[_6317 + 32] = stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                _6320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6320] = 30
                mem[_6320 + 32] = 'SafeMath: subtraction overflow'
                if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                    _6325 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6325 + 68] = mem[idx + _6320 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6325 + 68] = mem[_6325 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _6325 + -mem[64] + 100
                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                    if _3152 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if _3152:
                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                            mem[32] = 104
                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                        else:
                            if not cd[((32 * idx) + cd[68] + 36)]:
                                _6639 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6639] = 26
                                mem[_6639 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6639 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                _6746 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6746] = 26
                                mem[_6746 + 32] = 'SafeMath: division by zero'
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6746 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                    else:
                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                        mem[32] = sha3(address(cd[4]), 106) + 1
                        if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                            else:
                                if not cd[((32 * idx) + cd[68] + 36)]:
                                    _7038 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7038] = 26
                                    mem[_7038 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7038 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7094 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7094] = 26
                                    mem[_7094 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7094 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                            require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                            stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                            stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                            require stor106[address(cd[4])].field_0
                            stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                            stor106[address(cd[4])].field_0--
                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                            mem[32] = sha3(address(cd[4]), 106) + 1
                            stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                mem[32] = 104
                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                            else:
                                if not cd[((32 * idx) + cd[68] + 36)]:
                                    _7131 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7131] = 26
                                    mem[_7131 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _7131 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    _7212 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7212] = 26
                                    mem[_7212 + 32] = 'SafeMath: division by zero'
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _7212 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                else:
                    if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                        if not stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                            if _3152 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if _3152:
                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                    mem[32] = 104
                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                else:
                                    if not cd[((32 * idx) + cd[68] + 36)]:
                                        _7093 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7093] = 26
                                        mem[_7093 + 32] = 'SafeMath: division by zero'
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _7093 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        _7158 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7158] = 26
                                        mem[_7158 + 32] = 'SafeMath: division by zero'
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _7158 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                mem[32] = sha3(address(cd[4]), 106) + 1
                                if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7476 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7476] = 26
                                            mem[_7476 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7476 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7570 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7570] = 26
                                            mem[_7570 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7570 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                    require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                    stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                    stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                    require stor106[address(cd[4])].field_0
                                    stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                    stor106[address(cd[4])].field_0--
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7629 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7629] = 26
                                            mem[_7629 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7629 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7729 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7729] = 26
                                            mem[_7729 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7729 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 != stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 <= stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7156 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7156] = 26
                                            mem[_7156 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7156 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7248 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7248] = 26
                                            mem[_7248 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7248 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7567 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7567] = 26
                                                mem[_7567 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7567 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7661 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7661] = 26
                                                mem[_7661 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7661 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7725 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7725] = 26
                                                mem[_7725 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7725 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7849 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7849] = 26
                                                mem[_7849 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7849 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                _6415 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6415] = 30
                                mem[_6415 + 32] = 'SafeMath: subtraction overflow'
                                if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 > 0:
                                    _6445 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _6445 + 68] = mem[idx + _6415 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6445 + 68] = mem[_6445 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6445 + -mem[64] + 100
                                _6526 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6526] = 26
                                mem[_6526 + 32] = 'SafeMath: division by zero'
                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6526 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                _7853 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7853] = 26
                                                mem[_7853 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7853 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8017 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8017] = 26
                                                mem[_8017 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8017 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8016 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8016] = 26
                                                mem[_8016 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8016 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8193 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8193] = 26
                                                mem[_8193 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8193 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8518 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8518] = 26
                                                    mem[_8518 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8518 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8640 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8640] = 26
                                                    mem[_8640 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8640 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8639 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8639] = 26
                                                    mem[_8639 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8639 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8751 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8751] = 26
                                                    mem[_8751 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8751 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8704 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8704] = 26
                                                    mem[_8704 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8704 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8813 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8813] = 26
                                                    mem[_8813 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8813 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8812 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8812] = 26
                                                    mem[_8812 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8812 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8959 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8959] = 26
                                                    mem[_8959 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8959 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * -1 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                    else:
                        if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256:
                            revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                            if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 <= 0:
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7154 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7154] = 26
                                            mem[_7154 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7154 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7241 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7241] = 26
                                            mem[_7241 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7241 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7562 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7562] = 26
                                                mem[_7562 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7562 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7653 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7653] = 26
                                                mem[_7653 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7653 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7723 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7723] = 26
                                                mem[_7723 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7723 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7841 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7841] = 26
                                                mem[_7841 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7841 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                _6414 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6414] = 30
                                mem[_6414 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    _6442 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _6442 + 68] = mem[idx + _6414 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6442 + 68] = mem[_6442 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6442 + -mem[64] + 100
                                _6523 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6523] = 26
                                mem[_6523 + 32] = 'SafeMath: division by zero'
                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6523 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                _7845 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7845] = 26
                                                mem[_7845 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7845 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _7999 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7999] = 26
                                                mem[_7999 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7999 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7998 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7998] = 26
                                                mem[_7998 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7998 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8176 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8176] = 26
                                                mem[_8176 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8176 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8509 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8509] = 26
                                                    mem[_8509 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8509 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8629 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8629] = 26
                                                    mem[_8629 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8629 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8628 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8628] = 26
                                                    mem[_8628 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8628 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8740 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8740] = 26
                                                    mem[_8740 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8740 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8698 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8698] = 26
                                                    mem[_8698 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8698 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8804 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8804] = 26
                                                    mem[_8804 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8804 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8803 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8803] = 26
                                                    mem[_8803 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8803 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8941 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8941] = 26
                                                    mem[_8941 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8941 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                        else:
                            if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 / stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 != stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 <= stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            _7239 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7239] = 26
                                            mem[_7239 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7239 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            _7347 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7347] = 26
                                            mem[_7347 + 32] = 'SafeMath: division by zero'
                                            if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _7347 + 32]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 'SafeMath: division by zero'
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7650 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7650] = 26
                                                mem[_7650 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7650 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7762 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7762] = 26
                                                mem[_7762 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7762 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                _7837 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7837] = 26
                                                mem[_7837 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7837 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _7982 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7982] = 26
                                                mem[_7982 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7982 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                            else:
                                _6441 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6441] = 30
                                mem[_6441 + 32] = 'SafeMath: subtraction overflow'
                                if stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 > sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0:
                                    _6475 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _6475 + 68] = mem[idx + _6441 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6475 + 68] = mem[_6475 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6475 + -mem[64] + 100
                                _6585 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6585] = 26
                                mem[_6585 + 32] = 'SafeMath: division by zero'
                                if not sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _6585 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if _3152 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if _3152:
                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                        mem[32] = 104
                                        sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                    else:
                                        if not cd[((32 * idx) + cd[68] + 36)]:
                                            if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                _7986 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_7986] = 26
                                                mem[_7986 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _7986 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _8162 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8162] = 26
                                                mem[_8162 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8162 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                        else:
                                            if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8161 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8161] = 26
                                                mem[_8161 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8161 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                _8337 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_8337] = 26
                                                mem[_8337 + 32] = 'SafeMath: division by zero'
                                                if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 32
                                                    mem[mem[64] + 36] = 26
                                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                    idx = 32
                                                    while idx < 26:
                                                        mem[idx + mem[64] + 68] = mem[idx + _8337 + 32]
                                                        idx = idx + 32
                                                        continue 
                                                    revert with 0, 'SafeMath: division by zero'
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                mem[32] = 104
                                                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                else:
                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[32] = sha3(address(cd[4]), 106) + 1
                                    if not stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0:
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8623 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8623] = 26
                                                    mem[_8623 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8623 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8732 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8732] = 26
                                                    mem[_8732 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8732 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8731 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8731] = 26
                                                    mem[_8731 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8731 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8862 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8862] = 26
                                                    mem[_8862 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8862 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                    else:
                                        require stor106[address(cd[4])].field_0 - 1 < stor106[address(cd[4])].field_0
                                        require stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 - 1 < stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0].field_0 = stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0
                                        stor106[address(cd[4])][1][stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0].field_0 = stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0
                                        require stor106[address(cd[4])].field_0
                                        stor106[address(cd[4])][stor106[address(cd[4])].field_0].field_0 = 0
                                        stor106[address(cd[4])].field_0--
                                        mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                        mem[32] = sha3(address(cd[4]), 106) + 1
                                        stor106[address(cd[4])][1][cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                            mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                            stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                            mem[32] = 104
                                            sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0
                                        else:
                                            if not cd[((32 * idx) + cd[68] + 36)]:
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    _8798 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8798] = 26
                                                    mem[_8798 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8798 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = 0 / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    _8928 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8928] = 26
                                                    mem[_8928 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8928 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                            else:
                                                if _3152 * cd[((32 * idx) + cd[68] + 36)] / cd[((32 * idx) + cd[68] + 36)] != _3152:
                                                    revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if not (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _8927 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_8927] = 26
                                                    mem[_8927 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _8927 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = _3152 * cd[((32 * idx) + cd[68] + 36)] / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                                                else:
                                                    if (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 != sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        revert with 0, 32, 33, 0x25536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if _3152 * cd[((32 * idx) + cd[68] + 36)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    _9095 = mem[64]
                                                    mem[64] = mem[64] + 64
                                                    mem[_9095] = 26
                                                    mem[_9095 + 32] = 'SafeMath: division by zero'
                                                    if not _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256:
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = 26
                                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                        idx = 32
                                                        while idx < 26:
                                                            mem[idx + mem[64] + 68] = mem[idx + _9095 + 32]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 'SafeMath: division by zero'
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0 = cd[((32 * idx) + cd[68] + 36)]
                                                    mem[0] = cd[((32 * idx) + cd[36] + 36)]
                                                    stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152
                                                    mem[32] = 104
                                                    sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0 = (_3152 * cd[((32 * idx) + cd[68] + 36)]) + (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * (sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 * sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_0) - (stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256 * stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_0) / sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256) / _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
                sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 = _3152 + sub_efc1a9bf[cd[((32 * idx) + cd[36] + 36)]].field_256 - stor106[address(cd[4])][2][cd[((32 * idx) + cd[36] + 36)]].field_256
        idx = idx + 1
        continue 
    require ext_code.size(sub_acdd8243Address)
    call sub_acdd8243Address.0x8af86cfa with:
         gas gas_remaining wei
        args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
