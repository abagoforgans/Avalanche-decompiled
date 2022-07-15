contract main {




// =====================  Runtime code  =====================


const sub_51113b37(?) = 0x4483f0b6e2f5486d06958c20f8c39a7abe87bf8f

const sub_e40334f8(?) = 0x3cabf341943bc8466245e4d6f1ae0f8d071a1456

const sub_edef0085(?) = 0x25d85e17dd9e544f6e9f8d44f99602dbf5a97341

const JOE = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 poolFee;
address treasuryWalletAddress;
uint32 stor3;
address voterAddress;
uint256 stor3;
array of struct poolInfo;
uint256 stor5;
mapping of uint8 stor6;
mapping of struct sub_0d615678;

function poolLength() payable {
    return poolInfo.length
}

function poolFee() payable {
    return poolFee
}

function sub_0d615678(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_0d615678[arg1][address(arg2)].field_0
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           bool(poolInfo[arg1].field_1024),
           poolInfo[arg1].field_1280
}

function sub_32557788(?) payable {
    return bool(uint8(stor0.field_160))
}

function treasuryWallet() payable {
    return treasuryWalletAddress
}

function voter() payable {
    return address(voterAddress)
}

function sub_8695b8d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    return poolInfo[arg1].field_256
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sub_0d615678[arg1][arg2].field_0, sub_0d615678[arg1][arg2].field_256
}

function sub_a04a4d53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    return poolInfo[arg1].field_768
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

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryWalletAddress = arg1
}

function sub_e401e21c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, bool(arg1))
}

function setRewardFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 20:
        revert with 0, 'Pool Fee Too High'
    poolFee = arg1
}

function sub_9e8da899(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_1024 = uint8(bool(arg2))
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

function pendingRewards(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(arg2)].field_256:
        return 0
    if not sub_0d615678[arg1][address(arg2)].field_256:
        return 0
    if poolInfo[arg1].field_512 < sub_0d615678[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    if poolInfo[arg1].field_256 and poolInfo[arg1].field_512 - sub_0d615678[arg1][address(arg2)].field_256 > -1 / poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    return ((poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(arg2)].field_256 * poolInfo[arg1].field_256))
}

function add(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SteakMasterChef: LP already added'
    if poolInfo.length > 50:
        revert with 0, 'SteakMasterChef: Too many pools'
    stor6[address(arg1)] = 1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = arg2
    poolInfo[poolInfo.length].field_512 = block.timestamp
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = 1
    poolInfo[poolInfo.length].field_1280 = 0
    emit 0x1c482cb2: poolInfo.length, arg1
}

function sub_b554efd6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = address(voterAddress)
    require ext_code.size(0x4483f0b6e2f5486d06958c20f8c39a7abe87bf8f)
    staticcall 0x4483f0b6e2f5486d06958c20f8c39a7abe87bf8f.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args arg1, address(voterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 == mem[96 len 4], Mask(224, 32, arg1) >> 32
    require uint32(arg1), Mask(224, 0, stor3) == address(voterAddress)
    _6 = uint32(stor3), mem[164 len 28]
    require uint32(stor3), mem[164 len 28] <= test266151307()
    require uint32(stor3), mem[164 len 28] + 127 < return_data.size + 96
    _7 = mem[uint32(stor3), mem[164 len 28] + 96]
    if mem[uint32(stor3), mem[164 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[uint32(stor3), mem[164 len 28] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[uint32(stor3), mem[164 len 28] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = mem[uint32(stor3), mem[164 len 28] + 96]
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) > _7:
        mem[ceil32(return_data.size) + _7 + 128] = 0
    require mem[192] == mem[192]
    return _4
}

function _claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if not sub_0d615678[arg1][address(msg.sender)].field_256:
        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
    if not poolInfo[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SteakMasterChef: Rewards Pool Not Currently Enabled'
    if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'SteakMasterChef: Reject, Rewards not Ready; wait for next transaction'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(msg.sender)].field_256:
        if False and poolFee > 0:
            revert with 'NH{q', 17
        if 100 < poolFee:
            revert with 'NH{q', 17
        if False and -poolFee + 100 > 0:
            revert with 'NH{q', 17
        require ext_code.size(address(voterAddress))
        call address(voterAddress).0x79fcf671 with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
             gas gas_remaining wei
            args treasuryWalletAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
        emit Claim(0, msg.sender, arg1);
    else:
        if not sub_0d615678[arg1][address(msg.sender)].field_256:
            if False and poolFee > 0:
                revert with 'NH{q', 17
            if 100 < poolFee:
                revert with 'NH{q', 17
            if False and -poolFee + 100 > 0:
                revert with 'NH{q', 17
            require ext_code.size(address(voterAddress))
            call address(voterAddress).0x79fcf671 with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryWalletAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
            emit Claim(0, msg.sender, arg1);
        else:
            if poolInfo[arg1].field_512 < sub_0d615678[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_256 and poolInfo[arg1].field_512 - sub_0d615678[arg1][address(msg.sender)].field_256 > -1 / poolInfo[arg1].field_256:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) and poolFee > -1 / (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256):
                revert with 'NH{q', 17
            if 100 < poolFee:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) and -poolFee + 100 > -1 / (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256):
                revert with 'NH{q', 17
            require ext_code.size(address(voterAddress))
            call address(voterAddress).0x79fcf671 with:
                 gas gas_remaining wei
                args ((poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (100 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (poolFee * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (100 * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) + (poolFee * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
            call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                 gas gas_remaining wei
                args treasuryWalletAddress, (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolFee) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256 * poolFee) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
            emit Claim(((100 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (poolFee * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (100 * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) + (poolFee * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) / 100), msg.sender, arg1);
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SteakHut MasterChef: Protocol Not Enabled'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if sub_0d615678[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SteakMasterChef: withdraw not good'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if poolInfo[arg1].field_512 > sub_0d615678[arg1][address(msg.sender)].field_256:
        if sub_0d615678[arg1][address(msg.sender)].field_256:
            if poolInfo[arg1].field_512 < sub_0d615678[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_256 and poolInfo[arg1].field_512 - sub_0d615678[arg1][address(msg.sender)].field_256 > -1 / poolInfo[arg1].field_256:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) > 0:
                if arg1 >= poolInfo.length:
                    revert with 'NH{q', 50
                if not sub_0d615678[arg1][address(msg.sender)].field_256:
                    sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                if not poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SteakMasterChef: Rewards Pool Not Currently Enabled'
                if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(msg.sender)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SteakMasterChef: Reject, Rewards not Ready; wait for next transaction'
                if arg1 >= poolInfo.length:
                    revert with 'NH{q', 50
                if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(msg.sender)].field_256:
                    if False and poolFee > 0:
                        revert with 'NH{q', 17
                    if 100 < poolFee:
                        revert with 'NH{q', 17
                    if False and -poolFee + 100 > 0:
                        revert with 'NH{q', 17
                    require ext_code.size(address(voterAddress))
                    call address(voterAddress).0x79fcf671 with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                    call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                    call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                         gas gas_remaining wei
                        args treasuryWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                    emit Claim(0, msg.sender, arg1);
                else:
                    if not sub_0d615678[arg1][address(msg.sender)].field_256:
                        if False and poolFee > 0:
                            revert with 'NH{q', 17
                        if 100 < poolFee:
                            revert with 'NH{q', 17
                        if False and -poolFee + 100 > 0:
                            revert with 'NH{q', 17
                        require ext_code.size(address(voterAddress))
                        call address(voterAddress).0x79fcf671 with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args treasuryWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                        emit Claim(0, msg.sender, arg1);
                    else:
                        if poolInfo[arg1].field_512 < sub_0d615678[arg1][address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_256 and poolInfo[arg1].field_512 - sub_0d615678[arg1][address(msg.sender)].field_256 > -1 / poolInfo[arg1].field_256:
                            revert with 'NH{q', 17
                        if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) and poolFee > -1 / (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256):
                            revert with 'NH{q', 17
                        if 100 < poolFee:
                            revert with 'NH{q', 17
                        if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) and -poolFee + 100 > -1 / (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256):
                            revert with 'NH{q', 17
                        require ext_code.size(address(voterAddress))
                        call address(voterAddress).0x79fcf671 with:
                             gas gas_remaining wei
                            args ((poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (poolFee * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (100 * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) + (poolFee * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args treasuryWalletAddress, (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolFee) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256 * poolFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                        emit Claim(((100 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (poolFee * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (100 * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) + (poolFee * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) / 100), msg.sender, arg1);
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(voterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(voterAddress))
    call address(voterAddress).0x49904b46 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(voterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 'NH{q', 18
    poolInfo[arg1].field_256 = 0 / block.timestamp - poolInfo[arg1].field_512
    poolInfo[arg1].field_512 = block.timestamp
    if poolInfo[arg1].field_1280 > -1:
        revert with 'NH{q', 17
    if sub_0d615678[arg1][address(msg.sender)].field_0 < arg2:
        revert with 'NH{q', 17
    if arg2:
        sub_0d615678[arg1][address(msg.sender)].field_0 -= arg2
        if poolInfo[arg1].field_768 < arg2:
            revert with 'NH{q', 17
        poolInfo[arg1].field_768 -= arg2
        if stor5 < arg2:
            revert with 'NH{q', 17
        stor5 -= arg2
    if not sub_0d615678[arg1][address(msg.sender)].field_256:
        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg2, msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if not uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SteakHut MasterChef: Protocol Not Enabled'
    if not poolInfo[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SteakHut MasterChef: Current Pool Not Enabled'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if poolInfo[arg1].field_512 > sub_0d615678[arg1][address(msg.sender)].field_256:
        if sub_0d615678[arg1][address(msg.sender)].field_256:
            if poolInfo[arg1].field_512 < sub_0d615678[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_256 and poolInfo[arg1].field_512 - sub_0d615678[arg1][address(msg.sender)].field_256 > -1 / poolInfo[arg1].field_256:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) > 0:
                if arg1 >= poolInfo.length:
                    revert with 'NH{q', 50
                if not sub_0d615678[arg1][address(msg.sender)].field_256:
                    sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                if not poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SteakMasterChef: Rewards Pool Not Currently Enabled'
                if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(msg.sender)].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'SteakMasterChef: Reject, Rewards not Ready; wait for next transaction'
                if arg1 >= poolInfo.length:
                    revert with 'NH{q', 50
                if poolInfo[arg1].field_512 <= sub_0d615678[arg1][address(msg.sender)].field_256:
                    if False and poolFee > 0:
                        revert with 'NH{q', 17
                    if 100 < poolFee:
                        revert with 'NH{q', 17
                    if False and -poolFee + 100 > 0:
                        revert with 'NH{q', 17
                    require ext_code.size(address(voterAddress))
                    call address(voterAddress).0x79fcf671 with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                    call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                    call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                         gas gas_remaining wei
                        args treasuryWalletAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                    emit Claim(0, msg.sender, arg1);
                else:
                    if not sub_0d615678[arg1][address(msg.sender)].field_256:
                        if False and poolFee > 0:
                            revert with 'NH{q', 17
                        if 100 < poolFee:
                            revert with 'NH{q', 17
                        if False and -poolFee + 100 > 0:
                            revert with 'NH{q', 17
                        require ext_code.size(address(voterAddress))
                        call address(voterAddress).0x79fcf671 with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args treasuryWalletAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                        emit Claim(0, msg.sender, arg1);
                    else:
                        if poolInfo[arg1].field_512 < sub_0d615678[arg1][address(msg.sender)].field_256:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_256 and poolInfo[arg1].field_512 - sub_0d615678[arg1][address(msg.sender)].field_256 > -1 / poolInfo[arg1].field_256:
                            revert with 'NH{q', 17
                        if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) and poolFee > -1 / (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256):
                            revert with 'NH{q', 17
                        if 100 < poolFee:
                            revert with 'NH{q', 17
                        if (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) and -poolFee + 100 > -1 / (poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256):
                            revert with 'NH{q', 17
                        require ext_code.size(address(voterAddress))
                        call address(voterAddress).0x79fcf671 with:
                             gas gas_remaining wei
                            args ((poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256))
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (100 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (poolFee * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (100 * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) + (poolFee * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
                        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
                             gas gas_remaining wei
                            args treasuryWalletAddress, (poolInfo[arg1].field_512 * poolInfo[arg1].field_256 * poolFee) - (sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256 * poolFee) / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
                        emit Claim(((100 * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (poolFee * poolInfo[arg1].field_512 * poolInfo[arg1].field_256) - (100 * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) + (poolFee * sub_0d615678[arg1][address(msg.sender)].field_256 * poolInfo[arg1].field_256) / 100), msg.sender, arg1);
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(voterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args address(voterAddress), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(voterAddress), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(voterAddress))
    call address(voterAddress).0x486704a4 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(voterAddress), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(voterAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 'NH{q', 18
    poolInfo[arg1].field_256 = 0 / block.timestamp - poolInfo[arg1].field_512
    poolInfo[arg1].field_512 = block.timestamp
    if poolInfo[arg1].field_1280 > -1:
        revert with 'NH{q', 17
    if sub_0d615678[arg1][address(msg.sender)].field_0 > -1:
        revert with 'NH{q', 17
    if not sub_0d615678[arg1][address(msg.sender)].field_256:
        sub_0d615678[arg1][address(msg.sender)].field_256 = block.timestamp
    emit Deposit(0, msg.sender, arg1);
}



}
