contract main {




// =====================  Runtime code  =====================


#
#  - claimRewards()
#  - unStake(uint256 arg1)
#  - stake(uint256 arg1)
#
address owner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stakingTokenAddress;
address migratorAddress;
uint256 totalStake;
uint256 startTime;
uint256 endTime;
uint256 APY;
mapping of uint256 stakedBalance;
mapping of uint256 claimableRewards;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 sub_ef12969b;
mapping of uint256 sub_8442d414;

function getClaimableRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimableRewards[address(arg1)]
}

function endTime() payable {
    return endTime
}

function getStakedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakedBalance[address(arg1)]
}

function isStarted() payable {
    return bool(uint8(stor2.field_160))
}

function stakingToken() payable {
    return stakingTokenAddress
}

function startTime() payable {
    return startTime
}

function migrator() payable {
    return migratorAddress
}

function sub_8442d414(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8442d414[address(arg1)]
}

function totalStake() payable {
    return totalStake
}

function owner() payable {
    return owner
}

function sub_ef12969b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_8442d414[address(arg1)] < 1:
        revert with 0, 17
    return sub_ef12969b[address(arg1)][stor13[address(arg1)] - 1]
}

function APY() payable {
    return APY
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

function updateAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'UpdateAPY:: Invalid APY'
    emit 0x3067d56c: APY, arg1, block.timestamp
    APY = arg1
}

function sub_d5826f4e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, bool(arg1))
    emit 0xce50aa73: bool(arg1), block.timestamp
}

function updatePoolStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UpdatePoolStartTime:: Newtime can not be zero'
    emit 0xee88afc5: startTime, arg1, block.timestamp
    startTime = arg1
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

function updatePoolEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UpdatePoolEndTime:: Newtime can not be past time'
    emit 0x8f3b6b49: endTime, arg1, block.timestamp
    endTime = arg1
}

function updateMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UpdateMigrator:: Migrator can not be zero address'
    emit 0x92bcc425: migratorAddress, address(arg1), block.timestamp
    migratorAddress = arg1
}

function getHistory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_8442d414[address(arg1)]:
        idx = 0
        while idx < sub_8442d414[address(arg1)]:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = idx
            mem[32] = sha3(address(arg1), 11)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor11[address(arg1)][idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[192 len 2048] = mem[128], 64, mem[192 len 1984]
    else:
        if 0 >= mem[96]:
            revert with 0, 50
        if 0 >= mem[96]:
            revert with 0, 50
        mem[192 len 2048] = 0, 64, mem[192 len 1984]
    return 64, 2144, 64, mem[192 len 2048], 64, 2144, 64, mem[192 len 1984]
}

function sub_0931753c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if migratorAddress != msg.sender:
        revert with 0, 'UpdateRewards:: Unauthorized'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'UpdateRewards:: Invalid Lengths'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if claimableRewards[address(cd[((32 * idx) + cd[4] + 36)])] > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 9
        claimableRewards[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 64] = block.timestamp
        emit 0xca40132a: address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Withdraw:: _to Can not be Zero Address'
    mem[100] = this.address
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call stakingTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit UnStaked(address(arg1), block.timestamp, ext_call.return_data[0]);
}

function sub_7f2f2c8e(?) payable {
    mem[64] = 96
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
    if migratorAddress != msg.sender:
        revert with 0, 'MigrateUsers:: Unauthorized'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'MigrateUsers:: Invalid Lengths'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'MigrateUsers:: Invalid Lengths'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if stakedBalance[address(cd[((32 * idx) + cd[4] + 36)])] > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stakedBalance[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if claimableRewards[address(cd[((32 * idx) + cd[4] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        claimableRewards[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        stor10[address(cd[((32 * idx) + cd[4] + 36)])][stor13[address(cd[((32 * idx) + cd[4] + 36)])]] = cd[((32 * idx) + cd[36] + 36)]
        stor11[address(cd[((32 * idx) + cd[4] + 36)])][stor13[address(cd[((32 * idx) + cd[4] + 36)])]] = 1
        sub_ef12969b[address(cd[((32 * idx) + cd[4] + 36)])][stor13[address(cd[((32 * idx) + cd[4] + 36)])]] = block.timestamp
        if 1 > !sub_8442d414[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 17
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 13
        sub_8442d414[address(cd[((32 * idx) + cd[4] + 36)])]++
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 64] = cd[((32 * idx) + cd[68] + 36)]
        emit Migrated(address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
