contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - add(uint256 arg1, address arg2, bool arg3)
#  - enterStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - massUpdatePools()
#  - set(uint256 arg1, uint256 arg2, bool arg3)
#  - getMultiplier(uint256 arg1, uint256 arg2)
#  - pendingMochi(uint256 arg1, address arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address mochiAddress;
address sub_70e0ae70Address;
address devaddr;
uint256 mochiPerBlock;
array of uint256 blockDeltaStartStage;
array of uint256 blockDeltaEndStage;
array of uint256 userFeeStage;
array of uint256 devFeeStage;
array of struct poolInfo;
mapping of uint256 poolId1;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function mochiPerBlock() payable {
    return mochiPerBlock
}

function blockDeltaStartStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaStartStage.length
    return blockDeltaStartStage[arg1]
}

function sub_70e0ae70(?) payable {
    return sub_70e0ae70Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024,
           userInfo[arg1][arg2].field_1280,
           userInfo[arg1][arg2].field_1536
}

function devFeeStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < devFeeStage.length
    return devFeeStage[arg1]
}

function mochi() payable {
    return mochiAddress
}

function blockDeltaEndStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaEndStage.length
    return blockDeltaEndStage[arg1]
}

function poolId1(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolId1[arg1]
}

function userFeeStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userFeeStage.length
    return userFeeStage[arg1]
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_51836be2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mochiAddress = arg1
}

function sub_2d2528eb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mochiPerBlock = arg1
}

function sub_3c427166(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_70e0ae70Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7878773f(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= startBlock:
        if arg2 < stor1:
            return 25
    if arg1 >= stor1:
        if arg2 < stor2:
            return 20
    if arg1 >= stor2:
        if arg2 < stor3:
            return 15
    if arg1 >= stor3:
        if arg2 < stor4:
            return 12
    if arg1 >= stor4:
        if arg2 < stor5:
            return 10
    if arg1 >= stor5:
        if arg2 < stor6:
            return 8
    if arg1 >= stor6:
        if arg2 < stor7:
            return 6
    if arg1 >= stor7:
        if arg2 < stor8:
            return 5
    if arg1 >= stor8:
        if arg2 < stor9:
            return 4
    if arg1 >= stor9:
        if arg2 < stor10:
            return 3
    if arg1 < stor10:
        return 1
    if arg2 >= stor11:
        return 1
    return 2
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x6c416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}



}
