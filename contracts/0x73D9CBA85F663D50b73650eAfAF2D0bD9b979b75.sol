contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - withdrawFor(address arg1, uint256 arg2, address arg3)
#  - emergencyWithdraw(address arg1)
#  - sub_97f3b304(?)
#  - depositFor(address arg1, uint256 arg2, address arg3)
#  - sub_e952fddc(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address sub_b76ae05eAddress;
uint256 sub_d6c494c8;
array of address sub_9c7e2655;
mapping of struct sub_75b1aadc;
mapping of uint8 stor105;
mapping of struct depositInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
uint8 stor109;
mapping of uint8 stor110;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function sub_07337f2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor110[arg1])
}

function poolLength() payable {
    return sub_9c7e2655.length
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function depositInfo(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return depositInfo[address(arg1)][address(arg2)].field_512
}

function sub_75b1aadc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_75b1aadc[arg1].field_0, 
           sub_75b1aadc[arg1].field_256,
           sub_75b1aadc[arg1].field_512,
           sub_75b1aadc[arg1].field_768,
           sub_75b1aadc[arg1].field_1024,
           sub_75b1aadc[arg1].field_1280,
           sub_75b1aadc[arg1].field_1536
}

function owner() payable {
    return owner
}

function sub_9c7e2655(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9c7e2655.length
    return sub_9c7e2655[arg1]
}

function sub_b76ae05e(?) payable {
    return sub_b76ae05eAddress
}

function sub_d6c494c8(?) payable {
    return sub_d6c494c8
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function sub_cdfaeab6(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor109 = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_efe33cfa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor110[address(arg1)] = uint8(bool(arg2))
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

function getPoolInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_d6c494c8, sub_75b1aadc[address(arg1)].field_256, ext_call.return_data[0], totalAllocPoint
}

function sub_3b3f0ee6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor110[msg.sender]:
        revert with 0, 'Not a Pool Manager'
    create contract with 0 wei
                    code: code.data[15974 len 7257], address(arg1), address(arg2), address(this.address), msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_5aec2722(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    if arg2 > 1000000 * 10^18:
        revert with 0, 'Emission too high'
    sub_b76ae05eAddress = address(arg1)
    sub_d6c494c8 = arg2
    startTimestamp = arg3
    totalAllocPoint = 0
    stor110[stor51] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function updatePool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > sub_75b1aadc[address(arg1)].field_512:
        require ext_code.size(sub_75b1aadc[address(arg1)].field_0)
        staticcall sub_75b1aadc[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_75b1aadc[address(arg1)].field_512 = block.timestamp
        else:
            if block.timestamp < sub_75b1aadc[address(arg1)].field_512:
                revert with 0, 17
            if block.timestamp - sub_75b1aadc[address(arg1)].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[address(arg1)].field_512:
                revert with 0, 17
            if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8) and sub_75b1aadc[address(arg1)].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_75b1aadc[address(arg1)].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            sub_75b1aadc[address(arg1)].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]
            sub_75b1aadc[address(arg1)].field_512 = block.timestamp
            emit 0x50a1a2d4: block.timestamp, ext_call.return_data[0], sub_75b1aadc[address(arg1)].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < sub_9c7e2655.length:
        mem[0] = sub_9c7e2655[idx]
        mem[32] = 104
        if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
            staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14 = mem[_13]
            if not mem[_13]:
                sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
            else:
                if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                    revert with 0, 17
                if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not mem[_13]:
                    revert with 0, 18
                if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_13]):
                    revert with 0, 17
                sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_13]
                sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _14
                mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _14)
                emit 0x50a1a2d4: block.timestamp, _14, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _14), sub_9c7e2655[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000000 * 10^18:
        revert with 0, 'Emission too high'
    idx = 0
    while idx < sub_9c7e2655.length:
        mem[0] = sub_9c7e2655[idx]
        mem[32] = 104
        if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
            staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _22 = mem[_21]
            if not mem[_21]:
                sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
            else:
                if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                    revert with 0, 17
                if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not mem[_21]:
                    revert with 0, 18
                if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_21]):
                    revert with 0, 17
                sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_21]
                sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _22
                mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _22)
                emit 0x50a1a2d4: block.timestamp, _22, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _22), sub_9c7e2655[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_d6c494c8 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function claimLock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > sub_75b1aadc[address(arg1)].field_512:
        require ext_code.size(sub_75b1aadc[address(arg1)].field_0)
        staticcall sub_75b1aadc[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_75b1aadc[address(arg1)].field_512 = block.timestamp
        else:
            if block.timestamp < sub_75b1aadc[address(arg1)].field_512:
                revert with 0, 17
            if block.timestamp - sub_75b1aadc[address(arg1)].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[address(arg1)].field_512:
                revert with 0, 17
            if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8) and sub_75b1aadc[address(arg1)].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_75b1aadc[address(arg1)].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            sub_75b1aadc[address(arg1)].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]
            sub_75b1aadc[address(arg1)].field_512 = block.timestamp
            emit 0x50a1a2d4: block.timestamp, ext_call.return_data[0], sub_75b1aadc[address(arg1)].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1
    if depositInfo[address(arg1)][msg.sender].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][msg.sender].field_0:
        revert with 0, 17
    if depositInfo[address(arg1)][msg.sender].field_0:
        if depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12 < depositInfo[address(arg1)][msg.sender].field_256:
            revert with 0, 17
        require ext_code.size(sub_b76ae05eAddress)
        call sub_b76ae05eAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_b76ae05eAddress)
        staticcall sub_b76ae05eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_b76ae05eAddress)
        if (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256 <= ext_call.return_data[0]:
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        else:
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(((depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256), msg.sender, arg1);
    depositInfo[address(arg1)][msg.sender].field_256 = depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12
    require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
    call sub_75b1aadc[address(arg1)].field_1024.getReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function TokenGNO(uint256 arg1) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if cd[36] > depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_512:
        revert with 0, 'withdraw: not good'
    if block.timestamp > sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512:
        require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_0)
        staticcall sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 = block.timestamp
        else:
            if block.timestamp < sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512:
                revert with 0, 17
            if block.timestamp - sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512:
                revert with 0, 17
            if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8) and sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint / ext_call.return_data[0]
            sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 = block.timestamp
            emit 0x50a1a2d4: block.timestamp, ext_call.return_data[0], sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint / ext_call.return_data[0]), sub_75b1aadc[address(arg1)].field_1536
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 > -1 / depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0:
        revert with 0, 17
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12 < depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256:
        revert with 0, 17
    require ext_code.size(sub_b76ae05eAddress)
    call sub_b76ae05eAddress.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, (depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_b76ae05eAddress)
    staticcall sub_b76ae05eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_b76ae05eAddress)
    if (depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256 <= ext_call.return_data[0]:
        call sub_b76ae05eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256
    else:
        call sub_b76ae05eAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Harvest(((depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256), msg.sender, sub_75b1aadc[address(arg1)].field_1536);
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 < cd[36]:
        revert with 0, 17
    depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 -= cd[36]
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_512 < cd[36]:
        revert with 0, 17
    depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_512 -= cd[36]
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 > -1 / depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0:
        revert with 0, 17
    depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256 = depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12
    if sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024:
        require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024)
        call sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024.0xe19c699 with:
             gas gas_remaining wei
            args msg.sender, cd[36], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(cd[36], msg.sender, sub_75b1aadc[address(arg1)].field_1536);
    require ext_code.size(sub_75b1aadc[address(arg1)].field_1536)
    call sub_75b1aadc[address(arg1)].field_1536.withdrawFor(uint256 arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args cd[36], cd[68], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if depositInfo[address(arg1)][msg.sender].field_512 > !cd[36]:
        revert with 0, 17
    depositInfo[address(arg1)][msg.sender].field_512 += cd[36]
    emit Unlocked(cd[36], msg.sender, address(arg1));
}

function sub_266f24b7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not stor110[msg.sender]:
        revert with 0, 'Not a Pool Manager'
    if not ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: LP token must be a valid contract'
    if ext_code.size(arg3):
        mem[0] = address(arg2)
        mem[32] = 105
        if stor105[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < sub_9c7e2655.length:
            mem[0] = sub_9c7e2655[idx]
            mem[32] = 104
            if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
                staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _134 = mem[_86]
                if not mem[_86]:
                    sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                else:
                    if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                        revert with 0, 17
                    if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not mem[_86]:
                        revert with 0, 18
                    if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_86]):
                        revert with 0, 17
                    sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_86]
                    sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _134
                    mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _134)
                    emit 0x50a1a2d4: block.timestamp, _134, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _134), sub_9c7e2655[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if address(arg3):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
        mem[0] = address(arg2)
        mem[32] = 105
        if stor105[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < sub_9c7e2655.length:
            mem[0] = sub_9c7e2655[idx]
            mem[32] = 104
            if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
                staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _137 = mem[_87]
                if not mem[_87]:
                    sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                else:
                    if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                        revert with 0, 17
                    if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not mem[_87]:
                        revert with 0, 18
                    if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_87]):
                        revert with 0, 17
                    sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_87]
                    sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _137
                    mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _137)
                    emit 0x50a1a2d4: block.timestamp, _137, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _137), sub_9c7e2655[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    sub_9c7e2655.length++
    stor9787[stor103.length] = address(arg2)
    sub_75b1aadc[address(arg2)].field_0 = address(arg2)
    sub_75b1aadc[address(arg2)].field_256 = arg1
    if block.timestamp > startTimestamp:
        sub_75b1aadc[address(arg2)].field_512 = block.timestamp
    else:
        sub_75b1aadc[address(arg2)].field_512 = startTimestamp
    sub_75b1aadc[address(arg2)].field_768 = 0
    sub_75b1aadc[address(arg2)].field_1024 = address(arg3)
    sub_75b1aadc[address(arg2)].field_1280 = address(arg4)
    sub_75b1aadc[address(arg2)].field_1536 = 0
    sub_75b1aadc[address(arg2)].field_1792 = 0
    stor105[address(arg2)] = 1
    emit 0xec85b1d1: arg1, address(arg2), address(arg3)
}

function lock(address arg1, uint256 arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 == arg4
    if arg2 > depositInfo[address(arg1)][msg.sender].field_512:
        revert with 0, 'lock exceeds staked'
    if depositInfo[address(arg1)][msg.sender].field_512 < arg2:
        revert with 0, 17
    depositInfo[address(arg1)][msg.sender].field_512 -= arg2
    require ext_code.size(sub_75b1aadc[address(arg1)].field_1536)
    call sub_75b1aadc[address(arg1)].field_1536.0xd18154a4 with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg3, msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512:
        require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_0)
        staticcall sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 = block.timestamp
        else:
            if block.timestamp < sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512:
                revert with 0, 17
            if block.timestamp - sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512:
                revert with 0, 17
            if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8) and sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint / ext_call.return_data[0]
            sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 = block.timestamp
            emit 0x50a1a2d4: block.timestamp, ext_call.return_data[0], sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_256) / totalAllocPoint / ext_call.return_data[0]), sub_75b1aadc[address(arg1)].field_1536
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0:
        if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 > -1 / depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0:
            revert with 0, 17
        if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12 < depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256:
            revert with 0, 17
        require ext_code.size(sub_b76ae05eAddress)
        call sub_b76ae05eAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_b76ae05eAddress)
        staticcall sub_b76ae05eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_b76ae05eAddress)
        if (depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256 <= ext_call.return_data[0]:
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256
        else:
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(((depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12) - depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256), msg.sender, sub_75b1aadc[address(arg1)].field_1536);
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 > !arg2:
        revert with 0, 17
    depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 += arg2
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_512 > !arg2:
        revert with 0, 17
    depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_512 += arg2
    if depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 > -1 / depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0:
        revert with 0, 17
    depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_256 = depositInfo[stor104[address(arg1)].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_768 / 10^12
    if not arg2:
        if not sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024:
            emit Deposit(arg2, msg.sender, sub_75b1aadc[address(arg1)].field_1536);
        else:
            require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024)
            call sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024.getReward(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024:
            require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024)
            call sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024.stakeFor(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024)
            call sub_75b1aadc[sub_75b1aadc[address(arg1)].field_1536].field_1024.getReward(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Deposit(arg2, msg.sender, sub_75b1aadc[address(arg1)].field_1536);
    emit Locked(arg2, msg.sender, arg1);
}

function sub_56a2ff68(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    mem[0] = msg.sender
    mem[32] = 110
    if not stor110[msg.sender]:
        revert with 0, 'Not a Pool Manager'
    if ext_code.size(arg3):
        if ext_code.size(arg4):
            idx = 0
            while idx < sub_9c7e2655.length:
                mem[0] = sub_9c7e2655[idx]
                mem[32] = 104
                if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
                    staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _98 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _103 = mem[_98]
                    if not mem[_98]:
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                    else:
                        if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_98]:
                            revert with 0, 18
                        if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_98]):
                            revert with 0, 17
                        sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_98]
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _103
                        mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _103)
                        emit 0x50a1a2d4: block.timestamp, _103, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _103), sub_9c7e2655[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if address(arg4):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: locker must be contract or zero'
            idx = 0
            while idx < sub_9c7e2655.length:
                mem[0] = sub_9c7e2655[idx]
                mem[32] = 104
                if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
                    staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _99 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _105 = mem[_99]
                    if not mem[_99]:
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                    else:
                        if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_99]:
                            revert with 0, 18
                        if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_99]):
                            revert with 0, 17
                        sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_99]
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _105
                        mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _105)
                        emit 0x50a1a2d4: block.timestamp, _105, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _105), sub_9c7e2655[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if address(arg3):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
        if ext_code.size(arg4):
            idx = 0
            while idx < sub_9c7e2655.length:
                mem[0] = sub_9c7e2655[idx]
                mem[32] = 104
                if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
                    staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _107 = mem[_100]
                    if not mem[_100]:
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                    else:
                        if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_100]:
                            revert with 0, 18
                        if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_100]):
                            revert with 0, 17
                        sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_100]
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _107
                        mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _107)
                        emit 0x50a1a2d4: block.timestamp, _107, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _107), sub_9c7e2655[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if address(arg4):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: locker must be contract or zero'
            idx = 0
            while idx < sub_9c7e2655.length:
                mem[0] = sub_9c7e2655[idx]
                mem[32] = 104
                if block.timestamp > sub_75b1aadc[stor103[idx]].field_512:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_75b1aadc[stor103[idx]].field_0)
                    staticcall sub_75b1aadc[stor103[idx]].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _101 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _109 = mem[_101]
                    if not mem[_101]:
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                    else:
                        if block.timestamp < sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if block.timestamp - sub_75b1aadc[stor103[idx]].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[stor103[idx]].field_512:
                            revert with 0, 17
                        if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8) and sub_75b1aadc[stor103[idx]].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_101]:
                            revert with 0, 18
                        if sub_75b1aadc[stor103[idx]].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_101]):
                            revert with 0, 17
                        sub_75b1aadc[stor103[idx]].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / mem[_101]
                        sub_75b1aadc[stor103[idx]].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = _109
                        mem[mem[64] + 64] = sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _109)
                        emit 0x50a1a2d4: block.timestamp, _109, sub_75b1aadc[stor103[idx]].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) - (sub_75b1aadc[stor103[idx]].field_512 * sub_d6c494c8 * sub_75b1aadc[stor103[idx]].field_256) / totalAllocPoint / _109), sub_9c7e2655[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if totalAllocPoint < sub_75b1aadc[address(arg1)].field_256:
        revert with 0, 17
    if totalAllocPoint - sub_75b1aadc[address(arg1)].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - sub_75b1aadc[address(arg1)].field_256 + arg2
    sub_75b1aadc[address(arg1)].field_256 = arg2
    if arg5:
        sub_75b1aadc[address(arg1)].field_1024 = address(arg3)
        sub_75b1aadc[address(arg1)].field_1536 = address(arg4)
    emit 0xfb3ab4ae: arg2, bool(arg5), address(arg1), sub_75b1aadc[address(arg1)].field_1024, sub_75b1aadc[address(arg1)].field_1536
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > depositInfo[address(arg1)][msg.sender].field_512:
        revert with 0, 'withdraw: not good'
    if block.timestamp <= sub_75b1aadc[address(arg1)].field_512:
        if depositInfo[address(arg1)][msg.sender].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][msg.sender].field_0:
            revert with 0, 17
        if depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12 < depositInfo[address(arg1)][msg.sender].field_256:
            revert with 0, 17
        mem[132] = (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        require ext_code.size(sub_b76ae05eAddress)
        call sub_b76ae05eAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[100] = this.address
        require ext_code.size(sub_b76ae05eAddress)
        staticcall sub_b76ae05eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = msg.sender
        if (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
            require ext_code.size(sub_b76ae05eAddress)
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        else:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_b76ae05eAddress)
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(((depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256), msg.sender, arg1);
        if depositInfo[address(arg1)][msg.sender].field_0 < arg2:
            revert with 0, 17
        depositInfo[address(arg1)][msg.sender].field_0 -= arg2
        if depositInfo[address(arg1)][msg.sender].field_512 < arg2:
            revert with 0, 17
        depositInfo[address(arg1)][msg.sender].field_512 -= arg2
        if depositInfo[address(arg1)][msg.sender].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][msg.sender].field_0:
            revert with 0, 17
        depositInfo[address(arg1)][msg.sender].field_256 = depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12
        if sub_75b1aadc[address(arg1)].field_1024:
            require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
            call sub_75b1aadc[address(arg1)].field_1024.0xe19c699 with:
                 gas gas_remaining wei
                args msg.sender, arg2, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_75b1aadc[address(arg1)].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call sub_75b1aadc[address(arg1)].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), Mask(224, 32, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256) >> 32 == bool(uint32(this.address), Mask(224, 32, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256) >> 32)
                if not uint32(this.address), Mask(224, 32, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256) >> 32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        require ext_code.size(sub_75b1aadc[address(arg1)].field_0)
        staticcall sub_75b1aadc[address(arg1)].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_75b1aadc[address(arg1)].field_512 = block.timestamp
        else:
            if block.timestamp < sub_75b1aadc[address(arg1)].field_512:
                revert with 0, 17
            if block.timestamp - sub_75b1aadc[address(arg1)].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[address(arg1)].field_512:
                revert with 0, 17
            if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8) and sub_75b1aadc[address(arg1)].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if sub_75b1aadc[address(arg1)].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            sub_75b1aadc[address(arg1)].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]
            sub_75b1aadc[address(arg1)].field_512 = block.timestamp
            mem[ceil32(return_data.size) + 160] = sub_75b1aadc[address(arg1)].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0])
            emit 0x50a1a2d4: block.timestamp, ext_call.return_data[0], sub_75b1aadc[address(arg1)].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]), arg1
        if depositInfo[address(arg1)][msg.sender].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][msg.sender].field_0:
            revert with 0, 17
        if depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12 < depositInfo[address(arg1)][msg.sender].field_256:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        require ext_code.size(sub_b76ae05eAddress)
        call sub_b76ae05eAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(sub_b76ae05eAddress)
        staticcall sub_b76ae05eAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        if (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
            require ext_code.size(sub_b76ae05eAddress)
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_b76ae05eAddress)
            call sub_b76ae05eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(((depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][msg.sender].field_256), msg.sender, arg1);
        if depositInfo[address(arg1)][msg.sender].field_0 < arg2:
            revert with 0, 17
        depositInfo[address(arg1)][msg.sender].field_0 -= arg2
        if depositInfo[address(arg1)][msg.sender].field_512 < arg2:
            revert with 0, 17
        depositInfo[address(arg1)][msg.sender].field_512 -= arg2
        if depositInfo[address(arg1)][msg.sender].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][msg.sender].field_0:
            revert with 0, 17
        depositInfo[address(arg1)][msg.sender].field_256 = depositInfo[address(arg1)][msg.sender].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12
        if sub_75b1aadc[address(arg1)].field_1024:
            require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
            call sub_75b1aadc[address(arg1)].field_1024.0xe19c699 with:
                 gas gas_remaining wei
                args msg.sender, arg2, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_75b1aadc[address(arg1)].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call sub_75b1aadc[address(arg1)].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(arg2, msg.sender, arg1);
}

function sub_3e8d54e1(?) payable {
    mem[64] = 96
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
    require ('cd', 68).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] > depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_512:
            revert with 0, 'withdraw: not good'
        mem[0] = sub_75b1aadc[address(cd[4])].field_1536
        mem[32] = 104
        if block.timestamp <= sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512:
            if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 > -1 / depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0:
                revert with 0, 17
            if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12 < depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256:
                revert with 0, 17
            mem[mem[64] + 36] = (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
            require ext_code.size(sub_b76ae05eAddress)
            call sub_b76ae05eAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_b76ae05eAddress)
            staticcall sub_b76ae05eAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _180 = mem[_177]
            mem[mem[64] + 4] = msg.sender
            if (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256 <= mem[_177]:
                mem[mem[64] + 36] = (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                require ext_code.size(sub_b76ae05eAddress)
                call sub_b76ae05eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _188 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_188] == bool(mem[_188])
            else:
                mem[mem[64] + 36] = _180
                require ext_code.size(sub_b76ae05eAddress)
                call sub_b76ae05eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _180
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _189 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_189] == bool(mem[_189])
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_0)
            staticcall sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _172 = mem[_171]
            if not mem[_171]:
                sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 = block.timestamp
                if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 > -1 / depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0:
                    revert with 0, 17
                if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12 < depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256:
                    revert with 0, 17
                mem[mem[64] + 36] = (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                require ext_code.size(sub_b76ae05eAddress)
                call sub_b76ae05eAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_b76ae05eAddress)
                staticcall sub_b76ae05eAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _190 = mem[_187]
                mem[mem[64] + 4] = msg.sender
                if (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256 <= mem[_187]:
                    mem[mem[64] + 36] = (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_199] == bool(mem[_199])
                else:
                    mem[mem[64] + 36] = _190
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _190
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_200] == bool(mem[_200])
            else:
                if block.timestamp < sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512:
                    revert with 0, 17
                if block.timestamp - sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8) and sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not mem[_171]:
                    revert with 0, 18
                if sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) / totalAllocPoint / mem[_171]):
                    revert with 0, 17
                sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) / totalAllocPoint / mem[_171]
                sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 = block.timestamp
                mem[mem[64] + 64] = sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) / totalAllocPoint / mem[_171])
                emit 0x50a1a2d4: block.timestamp, _172, sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) - (sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_512 * sub_d6c494c8 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_256) / totalAllocPoint / _172), sub_75b1aadc[address(cd[4])].field_1536
                if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 > -1 / depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0:
                    revert with 0, 17
                if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12 < depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256:
                    revert with 0, 17
                mem[mem[64] + 36] = (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                require ext_code.size(sub_b76ae05eAddress)
                call sub_b76ae05eAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_b76ae05eAddress)
                staticcall sub_b76ae05eAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _215 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _224 = mem[_215]
                mem[mem[64] + 4] = msg.sender
                if (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256 <= mem[_215]:
                    mem[mem[64] + 36] = (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_245] == bool(mem[_245])
                else:
                    mem[mem[64] + 36] = _224
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _224
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _246 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_246] == bool(mem[_246])
        emit Harvest(((depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12) - depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256), msg.sender, sub_75b1aadc[address(cd[4])].field_1536);
        if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 < cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 -= cd[((32 * idx) + cd[36] + 36)]
        if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_512 < cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_512 -= cd[((32 * idx) + cd[36] + 36)]
        if depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 and sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 > -1 / depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0:
            revert with 0, 17
        depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_256 = depositInfo[stor104[address(cd[4])].field_1536][address(msg.sender)].field_0 * sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_768 / 10^12
        mem[0] = sub_75b1aadc[address(cd[4])].field_1536
        mem[32] = 104
        if sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_1024:
            require ext_code.size(sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_1024)
            call sub_75b1aadc[sub_75b1aadc[address(cd[4])].field_1536].field_1024.0xe19c699 with:
                 gas gas_remaining wei
                args msg.sender, cd[((32 * idx) + cd[36] + 36)], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit Withdraw(cd[((32 * idx) + cd[36] + 36)], msg.sender, sub_75b1aadc[address(cd[4])].field_1536);
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 68] = msg.sender
        require ext_code.size(sub_75b1aadc[address(cd[4])].field_1536)
        call sub_75b1aadc[address(cd[4])].field_1536.withdrawFor(uint256 arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)], msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if depositInfo[address(cd[4])][msg.sender].field_512 > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        depositInfo[address(cd[4])][msg.sender].field_512 += cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = cd[((32 * idx) + cd[36] + 36)]
        emit Unlocked(cd[((32 * idx) + cd[36] + 36)], msg.sender, address(cd[4]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ad05e627(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[0] = address(arg2)
    mem[32] = sha3(address(arg1), 106)
    mem[100] = this.address
    require ext_code.size(sub_75b1aadc[address(arg1)].field_0)
    staticcall sub_75b1aadc[address(arg1)].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= sub_75b1aadc[address(arg1)].field_512:
        if depositInfo[address(arg1)][address(arg2)].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][address(arg2)].field_0:
            revert with 0, 17
        if depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12 < depositInfo[address(arg1)][address(arg2)].field_256:
            revert with 0, 17
        if not sub_75b1aadc[address(arg1)].field_1024:
            mem[ceil32(return_data.size) + 96] = (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
            return (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _17 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _21 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require _17 + _21 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_21)] = mem[ceil32(return_data.size) + _17 + 128 len ceil32(_21)]
        if ceil32(_21) <= _21:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
            staticcall sub_75b1aadc[address(arg1)].field_1024.earned(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _122 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _128 = mem[_122]
            mem[mem[64]] = (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
            mem[mem[64] + 32] = address(arg3)
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _21
            mem[mem[64] + 160 len ceil32(_21)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_21)]
            if ceil32(_21) > _21:
                mem[_21 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _128
            return (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
                   address(arg3),
                   Array(len=_21, data=mem[mem[64] + 160 len ceil32(_21)]),
                   _128
        mem[_21 + (2 * ceil32(return_data.size)) + 128] = 0
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
        staticcall sub_75b1aadc[address(arg1)].field_1024.earned(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _129 = mem[_123]
        mem[mem[64]] = (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
        mem[mem[64] + 32] = address(arg3)
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _21
        mem[mem[64] + 160 len ceil32(_21)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_21)]
        if ceil32(_21) > _21:
            mem[_21 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _129
        return (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
               address(arg3),
               Array(len=_21, data=mem[mem[64] + 160 len ceil32(_21)]),
               _129
    if not ext_call.return_data[0]:
        if depositInfo[address(arg1)][address(arg2)].field_0 and sub_75b1aadc[address(arg1)].field_768 > -1 / depositInfo[address(arg1)][address(arg2)].field_0:
            revert with 0, 17
        if depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12 < depositInfo[address(arg1)][address(arg2)].field_256:
            revert with 0, 17
        if not sub_75b1aadc[address(arg1)].field_1024:
            mem[ceil32(return_data.size) + 96] = (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
            return (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _19 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _24 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require _19 + _24 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_24)] = mem[ceil32(return_data.size) + _19 + 128 len ceil32(_24)]
        if ceil32(_24) <= _24:
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(arg3)
            require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
            staticcall sub_75b1aadc[address(arg1)].field_1024.earned(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(arg3)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _130 = mem[_124]
            mem[mem[64]] = (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
            mem[mem[64] + 32] = address(arg3)
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _24
            mem[mem[64] + 160 len ceil32(_24)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_24)]
            if ceil32(_24) > _24:
                mem[_24 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _130
            return (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
                   address(arg3),
                   Array(len=_24, data=mem[mem[64] + 160 len ceil32(_24)]),
                   _130
        mem[_24 + (2 * ceil32(return_data.size)) + 128] = 0
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
        staticcall sub_75b1aadc[address(arg1)].field_1024.earned(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _131 = mem[_125]
        mem[mem[64]] = (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
        mem[mem[64] + 32] = address(arg3)
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _24
        mem[mem[64] + 160 len ceil32(_24)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_24)]
        if ceil32(_24) > _24:
            mem[_24 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _131
        return (depositInfo[address(arg1)][address(arg2)].field_0 * sub_75b1aadc[address(arg1)].field_768 / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
               address(arg3),
               Array(len=_24, data=mem[mem[64] + 160 len ceil32(_24)]),
               _131
    if block.timestamp < sub_75b1aadc[address(arg1)].field_512:
        revert with 0, 17
    if block.timestamp - sub_75b1aadc[address(arg1)].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[address(arg1)].field_512:
        revert with 0, 17
    if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8) and sub_75b1aadc[address(arg1)].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_75b1aadc[address(arg1)].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if depositInfo[address(arg1)][address(arg2)].field_0 and sub_75b1aadc[address(arg1)].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / depositInfo[address(arg1)][address(arg2)].field_0:
        revert with 0, 17
    if (sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12 < depositInfo[address(arg1)][address(arg2)].field_256:
        revert with 0, 17
    if not sub_75b1aadc[address(arg1)].field_1024:
        mem[ceil32(return_data.size) + 96] = ((sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
        mem[ceil32(return_data.size) + 128] = 0
        mem[ceil32(return_data.size) + 160] = 128
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
            mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
        return ((sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
               0,
               128,
               0,
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
    mem[ceil32(return_data.size) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _63 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _67 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _63 + _67 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_67)] = mem[ceil32(return_data.size) + _63 + 128 len ceil32(_67)]
    if ceil32(_67) <= _67:
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(arg3)
        require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
        staticcall sub_75b1aadc[address(arg1)].field_1024.earned(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(arg3)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _126 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _132 = mem[_126]
        mem[mem[64]] = ((sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
        mem[mem[64] + 32] = address(arg3)
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _67
        mem[mem[64] + 160 len ceil32(_67)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_67)]
        if ceil32(_67) > _67:
            mem[_67 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _132
        return ((sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
               address(arg3),
               Array(len=_67, data=mem[mem[64] + 160 len ceil32(_67)]),
               _132
    mem[_67 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64] + 4] = address(arg2)
    mem[mem[64] + 36] = address(arg3)
    require ext_code.size(sub_75b1aadc[address(arg1)].field_1024)
    staticcall sub_75b1aadc[address(arg1)].field_1024.earned(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _127 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _133 = mem[_127]
    mem[mem[64]] = ((sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256
    mem[mem[64] + 32] = address(arg3)
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = _67
    mem[mem[64] + 160 len ceil32(_67)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_67)]
    if ceil32(_67) > _67:
        mem[_67 + mem[64] + 160] = 0
    mem[mem[64] + 96] = _133
    return ((sub_75b1aadc[address(arg1)].field_768 * depositInfo[address(arg1)][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) - (sub_75b1aadc[address(arg1)].field_512 * sub_d6c494c8 * sub_75b1aadc[address(arg1)].field_256) / totalAllocPoint / ext_call.return_data[0] * depositInfo[address(arg1)][address(arg2)].field_0) / 10^12) - depositInfo[address(arg1)][address(arg2)].field_256, 
           address(arg3),
           Array(len=_67, data=mem[mem[64] + 160 len ceil32(_67)]),
           _133
}

function sub_17e54830(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 104
        if block.timestamp <= sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
            if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                revert with 0, 17
            if not depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                    mem[mem[64] + 4] = address(cd[36])
                    require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                    call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                         gas gas_remaining wei
                        args address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_111] == bool(mem[_111])
            else:
                if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12 < depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256:
                    revert with 0, 17
                mem[mem[64] + 36] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                require ext_code.size(sub_b76ae05eAddress)
                call sub_b76ae05eAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_b76ae05eAddress)
                staticcall sub_b76ae05eAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _123 = mem[_119]
                mem[mem[64] + 4] = address(cd[36])
                if (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 <= mem[_119]:
                    mem[mem[64] + 36] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_132] == bool(mem[_132])
                    mem[mem[64]] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    emit Harvest(((depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256), address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
                    if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                        revert with 0, 17
                    depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                    if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                        call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_167] == bool(mem[_167])
                else:
                    mem[mem[64] + 36] = _123
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), _123
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_133] == bool(mem[_133])
                    mem[mem[64]] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    emit Harvest(((depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256), address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
                    if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                        revert with 0, 17
                    depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                    if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                        call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_168] == bool(mem[_168])
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
            staticcall sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_107]
            if not mem[_107]:
                sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = block.timestamp
                if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                    revert with 0, 17
                if not depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                    depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                    if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                        call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_120] == bool(mem[_120])
                else:
                    if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12 < depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256:
                        revert with 0, 17
                    mem[mem[64] + 36] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_b76ae05eAddress)
                    staticcall sub_b76ae05eAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _134 = mem[_131]
                    mem[mem[64] + 4] = address(cd[36])
                    if (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 <= mem[_131]:
                        mem[mem[64] + 36] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        require ext_code.size(sub_b76ae05eAddress)
                        call sub_b76ae05eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_143] == bool(mem[_143])
                        mem[mem[64]] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        emit Harvest(((depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256), address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
                        if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                            revert with 0, 17
                        depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                        if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                            call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                                 gas gas_remaining wei
                                args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _179 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_179] == bool(mem[_179])
                    else:
                        mem[mem[64] + 36] = _134
                        require ext_code.size(sub_b76ae05eAddress)
                        call sub_b76ae05eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), _134
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _144 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_144] == bool(mem[_144])
                        mem[mem[64]] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        emit Harvest(((depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256), address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
                        if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                            revert with 0, 17
                        depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                        if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                            call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                                 gas gas_remaining wei
                                args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _180 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_180] == bool(mem[_180])
            else:
                if block.timestamp < sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 17
                if block.timestamp - sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 and sub_d6c494c8 > -1 / block.timestamp - sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8) and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256 > -1 / (block.timestamp * sub_d6c494c8) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not mem[_107]:
                    revert with 0, 18
                if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > !(10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / mem[_107]):
                    revert with 0, 17
                sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / mem[_107]
                sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _108
                mem[mem[64] + 64] = sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / _108)
                emit 0x50a1a2d4: block.timestamp, _108, sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^12 * (block.timestamp * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) - (sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_512 * sub_d6c494c8 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_256) / totalAllocPoint / _108), address(cd[((32 * idx) + cd[4] + 36)])
                if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                    revert with 0, 17
                if not depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                    depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                    if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                        call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_157] == bool(mem[_157])
                else:
                    if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12 < depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256:
                        revert with 0, 17
                    mem[mem[64] + 36] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    require ext_code.size(sub_b76ae05eAddress)
                    call sub_b76ae05eAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_b76ae05eAddress)
                    staticcall sub_b76ae05eAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _172 = mem[_169]
                    mem[mem[64] + 4] = address(cd[36])
                    if (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 <= mem[_169]:
                        mem[mem[64] + 36] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        require ext_code.size(sub_b76ae05eAddress)
                        call sub_b76ae05eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_185] == bool(mem[_185])
                        mem[mem[64]] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        emit Harvest(((depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256), address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
                        if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                            revert with 0, 17
                        depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                        if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                            call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                                 gas gas_remaining wei
                                args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _197 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_197] == bool(mem[_197])
                    else:
                        mem[mem[64] + 36] = _172
                        require ext_code.size(sub_b76ae05eAddress)
                        call sub_b76ae05eAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(cd[36]), _172
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_186] == bool(mem[_186])
                        mem[mem[64]] = (depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256
                        emit Harvest(((depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12) - depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256), address(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
                        if depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 and sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 > -1 / depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0:
                            revert with 0, 17
                        depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_256 = depositInfo[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[36])].field_0 * sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_768 / 10^12
                        if sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024:
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024)
                            call sub_75b1aadc[address(cd[((32 * idx) + cd[4] + 36)])].field_1024.getReward(address arg1) with:
                                 gas gas_remaining wei
                                args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _198 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_198] == bool(mem[_198])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
