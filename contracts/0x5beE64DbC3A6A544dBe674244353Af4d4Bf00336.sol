contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a483d77(?)
#  - stakeFor(address arg1, uint256 arg2, uint256 arg3)
#  - unstakeFor(address arg1, uint256 arg2, uint256 arg3)
#  - exit(address arg1)
#  - claimReward(address arg1)
#  - sub_fc23a90b(?)
#
const versionRecipient = ' '


uint8 stor0;
uint8 stor0; offset 8
address trustedForwarderAddress; offset 16
uint256 stor0; offset 8
address owner;
address stakeTokenAddress;
address stableTokenAddress;
uint256 duration;
uint256 sub_ff378dd0;
uint256 periodFinish;
uint256 sub_83a6d03b;
uint256 sub_4bd5fc11;
uint256 sub_1425c3a2;
uint256 sub_c1935e81;
uint256 sub_97d8edb4;
uint256 sub_857f10df;
uint256 rewardDenominator;
uint256 sub_3ea6713e;
uint256 sub_1cb779af;
uint256 sub_f795c70f;
uint256 sub_fb49aebe;
address vaultAddress;
uint8 isStakingStarted; offset 160
uint8 sub_52487171; offset 168
uint8 sub_f78e512d; offset 176
uint128 stor19; offset 176
uint128 stor19; offset 168
address sub_357ca27bAddress;
mapping of struct totalStakedFor;
mapping of struct sub_cb27265d;
address storA7EC;
uint256 storA7EC;

function duration() payable {
    return duration
}

function sub_1425c3a2(?) payable {
    return sub_1425c3a2
}

function sub_1cb779af(?) payable {
    return sub_1cb779af
}

function sub_357ca27b(?) payable {
    return sub_357ca27bAddress
}

function sub_3ea6713e(?) payable {
    return sub_3ea6713e
}

function totalStakedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalStakedFor[address(arg1)].field_256, totalStakedFor[address(arg1)].field_512
}

function sub_4bd5fc11(?) payable {
    return sub_4bd5fc11
}

function stakeToken() payable {
    return stakeTokenAddress
}

function sub_52487171(?) payable {
    return bool(sub_52487171)
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function sub_83a6d03b(?) payable {
    return sub_83a6d03b
}

function rewardDenominator() payable {
    return rewardDenominator
}

function sub_857f10df(?) payable {
    return sub_857f10df
}

function owner() payable {
    return owner
}

function sub_97d8edb4(?) payable {
    return sub_97d8edb4
}

function stableToken() payable {
    return stableTokenAddress
}

function isStakingStarted() payable {
    return bool(isStakingStarted)
}

function sub_c1935e81(?) payable {
    return sub_c1935e81
}

function sub_cb27265d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cb27265d[arg1].field_0, sub_cb27265d[arg1].field_256
}

function periodFinish() payable {
    return periodFinish
}

function sub_f78e512d(?) payable {
    return bool(sub_f78e512d)
}

function sub_f795c70f(?) payable {
    return sub_f795c70f
}

function sub_fb49aebe(?) payable {
    return sub_fb49aebe
}

function vault() payable {
    return vaultAddress
}

function sub_ff378dd0(?) payable {
    return sub_ff378dd0
}

function getUserData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalStakedFor[address(arg1)].field_0, 
           totalStakedFor[address(arg1)].field_256,
           totalStakedFor[address(arg1)].field_512,
           totalStakedFor[address(arg1)].field_768,
           totalStakedFor[address(arg1)].field_1024,
           totalStakedFor[address(arg1)].field_1280
}

function _fallback() payable {
    revert
}

function getUnderlyingToken() payable {
    return stakeTokenAddress, stableTokenAddress
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (trustedForwarderAddress == arg1)
}

function sub_e9d354ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_cb27265d[address(arg1)].field_256:
        return 0
    return sub_cb27265d[address(arg1)].field_0
}

function getRewardLevel(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 / 10^18 < 1000:
        return 0
    if arg1 / 10^18 < 1500:
        return 1
    if arg1 / 10^18 < 2500:
        return 2
    if arg1 / 10^18 >= 3500:
        return 4
    return 3
}

function governance() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_c31630a7(?) payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    periodFinish = block.timestamp
}

function renounceOwnership() payable {
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f5288a3b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    sub_ff378dd0 = arg1
}

function sub_aca89832(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    Mask(88, 0, stor19.field_168) = Mask(88, 0, bool(arg1))
}

function sub_ca20aaa2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    Mask(80, 0, stor19.field_176) = Mask(80, 0, bool(arg1))
}

function sub_2e046e56(?) payable {
    require calldata.size - 4 >= 224
    require calldata.size - 4 >= 192
    require arg7 == address(arg7)
    if sub_357ca27bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only oldRewardDistributor can call this'
    totalStakedFor[address(arg7)].field_0 = arg1
    totalStakedFor[address(arg7)].field_256 = arg2
    totalStakedFor[address(arg7)].field_512 = arg3
    totalStakedFor[address(arg7)].field_768 = arg4
    totalStakedFor[address(arg7)].field_1024 = arg5
    totalStakedFor[address(arg7)].field_1280 = arg6
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    uint256(storA7EC) = arg1
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    duration = arg1
    if arg1 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = arg1 + block.timestamp
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_88dbe3e1(?) payable {
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if block.timestamp < periodFinish:
        totalStakedFor[0].field_1280 = block.timestamp
    else:
        totalStakedFor[0].field_1280 = periodFinish
    if isStakingStarted:
        revert with 0, 'Staking is already started'
    if not sub_83a6d03b:
        revert with 0, 'stakeTokenPrice is not set'
    isStakingStarted = 1
    if duration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = duration + block.timestamp
    emit 0xacb909ab: (duration + block.timestamp)
}

function setTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'The caller must be controller or governance'
    trustedForwarderAddress = arg1
}

function sub_70f22763(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'The caller must be controller or governance'
    if arg1 >= arg2:
        revert with 0, 'immediateWithdraw Fees should be a fraction'
    sub_f795c70f = arg1
    sub_fb49aebe = arg2
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        uint256(storA7EC) = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            uint256(storA7EC) = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                uint256(storA7EC) = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint256(storA7EC) = arg1
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function sub_1e662ab3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require ext_code.size(address(arg1))
    call address(arg1).0xee719bc8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    if stakeTokenAddress != ext_call.return_data[12 len 20]:
        revert with 0, 'stakeToken should match with old reward distributor'
    if stableTokenAddress != ext_call.return_data[44 len 20]:
        revert with 0, 'stableToken should match with old reward distributor'
    sub_357ca27bAddress = address(arg1)
}

function sub_46798563(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if msg.sender == vaultAddress:
        require ext_code.size(address(arg1))
        call address(arg1).0x2e046e56 with:
             gas gas_remaining wei
            args 0, totalStakedFor[address(arg2)].field_0, totalStakedFor[address(arg2)].field_256, totalStakedFor[address(arg2)].field_512, totalStakedFor[address(arg2)].field_768, totalStakedFor[address(arg2)].field_1024, totalStakedFor[address(arg2)].field_1280, address(arg2)
    else:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'The sender has to be the controller or vault'
        require ext_code.size(address(arg1))
        call address(arg1).0x2e046e56 with:
             gas gas_remaining wei
            args totalStakedFor[address(arg2)].field_0, totalStakedFor[address(arg2)].field_256, totalStakedFor[address(arg2)].field_512, totalStakedFor[address(arg2)].field_768, totalStakedFor[address(arg2)].field_1024, totalStakedFor[address(arg2)].field_1280, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    totalStakedFor[address(arg2)].field_0 = 0
    totalStakedFor[address(arg2)].field_256 = 0
    totalStakedFor[address(arg2)].field_512 = 0
    totalStakedFor[address(arg2)].field_768 = 0
    totalStakedFor[address(arg2)].field_1024 = 0
    totalStakedFor[address(arg2)].field_1280 = 0
}

function sub_fe270703(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if calldata.size < 24:
        staticcall address(ext_call.return_data[0]).0x5c63cacb with:
                gas gas_remaining wei
               args msg.sender
    else:
        if trustedForwarderAddress != msg.sender:
            staticcall address(ext_call.return_data[0]).0x5c63cacb with:
                    gas gas_remaining wei
                   args msg.sender
        else:
            staticcall address(ext_call.return_data[0]).0x5c63cacb with:
                    gas gas_remaining wei
                   args (Mask(64, 96, cd[(calldata.size - 20)]) >> 96)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).0x5aa6e675 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if calldata.size < 24:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'only saver or governace can call'
        else:
            if trustedForwarderAddress != msg.sender:
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'only saver or governace can call'
            else:
                if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != ext_call.return_data[12 len 20]:
                    revert with 0, 'only saver or governace can call'
    sub_83a6d03b = cd[4]
}

function recoverExcessToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
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
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
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
    emit RecoverToken(arg1, arg2);
}

function sub_183abcc6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = msg.sender
    require ext_code.size(address(storA7EC))
    staticcall address(storA7EC).isController(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if sub_1cb779af:
            sub_1cb779af = 0
            mem[ceil32(return_data.size) + 132] = address(arg1)
            mem[ceil32(return_data.size) + 164] = sub_1cb779af
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakeTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_1cb779af, 0
            mem[ceil32(return_data.size) + 328] = 0
            call stakeTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_1cb779af, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_1cb779af, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
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
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(address(storA7EC))
        staticcall address(storA7EC).isGovernance(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'The caller must be controller or governance'
        if sub_1cb779af:
            sub_1cb779af = 0
            mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
            mem[(2 * ceil32(return_data.size)) + 164] = sub_1cb779af
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stakeTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_1cb779af, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call stakeTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_1cb779af, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, sub_1cb779af, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
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
}

function getRewardBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < periodFinish:
        if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(arg1)].field_512:
            if sub_83a6d03b <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_83a6d03b
            if block.timestamp < periodFinish:
                if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalStakedFor[address(arg1)].field_256:
                    if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require rewardDenominator
                    if sub_3ea6713e <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_3ea6713e
                    if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                        revert with 0, 'SafeMath: addition overflow'
                    return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
                if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                    if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require rewardDenominator
                    if sub_3ea6713e <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_3ea6713e
                    if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                        revert with 0, 'SafeMath: addition overflow'
                    return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
                if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
            if totalStakedFor[address(arg1)].field_1280 > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if (block.timestamp * totalStakedFor[address(arg1)].field_512) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512) / totalStakedFor[address(arg1)].field_512 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * totalStakedFor[address(arg1)].field_512) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512):
            if sub_83a6d03b <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_83a6d03b
            if block.timestamp < periodFinish:
                if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalStakedFor[address(arg1)].field_256:
                    if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require rewardDenominator
                    if sub_3ea6713e <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_3ea6713e
                    if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                        revert with 0, 'SafeMath: addition overflow'
                    return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
                if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                    if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require rewardDenominator
                    if sub_3ea6713e <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_3ea6713e
                    if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                        revert with 0, 'SafeMath: addition overflow'
                    return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
                if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
            if totalStakedFor[address(arg1)].field_1280 > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if (block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_512) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512) != totalStakedFor[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024):
            if sub_83a6d03b <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_83a6d03b
            if block.timestamp < periodFinish:
                if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not totalStakedFor[address(arg1)].field_256:
                    if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require rewardDenominator
                    if sub_3ea6713e <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_3ea6713e
                    if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                        revert with 0, 'SafeMath: addition overflow'
                    return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
                if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                    if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                        revert with 0, 'SafeMath: addition overflow'
                    if rewardDenominator <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require rewardDenominator
                    if sub_3ea6713e <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_3ea6713e
                    if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                        revert with 0, 'SafeMath: addition overflow'
                    return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
                if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
            if totalStakedFor[address(arg1)].field_1280 > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_83a6d03b <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_83a6d03b
        if block.timestamp < periodFinish:
            if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if totalStakedFor[address(arg1)].field_1280 > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(arg1)].field_256:
            if (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
            if (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) < (10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * block.timestamp * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
    if totalStakedFor[address(arg1)].field_1280 > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalStakedFor[address(arg1)].field_512:
        if sub_83a6d03b <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_83a6d03b
        if block.timestamp < periodFinish:
            if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if totalStakedFor[address(arg1)].field_1280 > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(arg1)].field_256:
            if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
            if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
    if (periodFinish * totalStakedFor[address(arg1)].field_512) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512) / totalStakedFor[address(arg1)].field_512 != periodFinish - totalStakedFor[address(arg1)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (periodFinish * totalStakedFor[address(arg1)].field_512) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512):
        if sub_83a6d03b <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_83a6d03b
        if block.timestamp < periodFinish:
            if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if totalStakedFor[address(arg1)].field_1280 > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(arg1)].field_256:
            if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
            if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
    if (periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_512) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512) != totalStakedFor[address(arg1)].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024):
        if sub_83a6d03b <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_83a6d03b
        if block.timestamp < periodFinish:
            if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not totalStakedFor[address(arg1)].field_256:
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
                if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                    revert with 0, 'SafeMath: addition overflow'
                if rewardDenominator <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require rewardDenominator
                if sub_3ea6713e <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_3ea6713e
                if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                    revert with 0, 'SafeMath: addition overflow'
                return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
        if totalStakedFor[address(arg1)].field_1280 > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(arg1)].field_256:
            if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
            if 0 / sub_83a6d03b < 0 / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < 0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + (0 / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) < 0 / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + (0 / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
    if (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_83a6d03b <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_83a6d03b
    if block.timestamp < periodFinish:
        if totalStakedFor[address(arg1)].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not totalStakedFor[address(arg1)].field_256:
            if (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != block.timestamp - totalStakedFor[address(arg1)].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
            if (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
                revert with 0, 'SafeMath: addition overflow'
            if rewardDenominator <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardDenominator
            if sub_3ea6713e <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_3ea6713e
            if totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
                revert with 0, 'SafeMath: addition overflow'
            return (totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
        if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (block.timestamp * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((block.timestamp * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
    if totalStakedFor[address(arg1)].field_1280 > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not totalStakedFor[address(arg1)].field_256:
        if (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
    if (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) / totalStakedFor[address(arg1)].field_256 != periodFinish - totalStakedFor[address(arg1)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256):
        if (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
            revert with 0, 'SafeMath: addition overflow'
        if rewardDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardDenominator
        if sub_3ea6713e <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_3ea6713e
        if totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e) < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e:
            revert with 0, 'SafeMath: addition overflow'
        return (totalStakedFor[address(arg1)].field_768 + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b / rewardDenominator / sub_3ea6713e))
    if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) / (periodFinish * totalStakedFor[address(arg1)].field_256) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256) != totalStakedFor[address(arg1)].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) < (10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b:
        revert with 0, 'SafeMath: addition overflow'
    if rewardDenominator <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rewardDenominator
    if sub_3ea6713e <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_3ea6713e
    if totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e) < (periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e:
        revert with 0, 'SafeMath: addition overflow'
    return (totalStakedFor[address(arg1)].field_768 + ((periodFinish * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) - (totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_256 * totalStakedFor[address(arg1)].field_1024) + ((10^18 * periodFinish * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) - (10^18 * totalStakedFor[address(arg1)].field_1280 * totalStakedFor[address(arg1)].field_512 * totalStakedFor[address(arg1)].field_1024) / sub_83a6d03b) / rewardDenominator / sub_3ea6713e))
}



}
