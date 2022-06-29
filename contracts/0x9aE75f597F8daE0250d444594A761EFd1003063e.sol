contract main {




// =====================  Runtime code  =====================


#
#  - withdrawDeposit()
#  - mint()
#  - sub_98d46e36(?)
#
address owner;
uint8 stor2;
address nftContractAddress; offset 8
address depositTokenAddress;
uint256 sub_58ced696;
uint256 sub_d56363a1;
uint256 pricePerNFT;
uint256 maxDepositAmount;
uint256 sub_63f9a750;
uint256 sub_c29110d5;
uint256 sub_4ca91b09;
uint256 sub_3477b0fe;
array of address stor12;
mapping of uint256 depositAmount;
array of address stor14;
mapping of uint256 stor15;
mapping of uint256 stor16;
uint256 depositStartTime;
uint256 sub_cec7d7cb;
uint256 sub_5055f460;
uint256 sub_5f0119b7;
uint256 sub_8b6b4d67;
uint256 sub_6d5b5cc0;
uint256 sub_510d3016;
uint256 sub_3aa2b0b1;
uint8 stor26;
uint256 raffleState;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;

function pricePerNFT() payable {
    return pricePerNFT
}

function depositTokenAddress() payable {
    return depositTokenAddress
}

function sub_3477b0fe(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_3477b0fe
}

function sub_3aa2b0b1(?) payable {
    return sub_3aa2b0b1
}

function sub_4ca91b09(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_4ca91b09
}

function sub_5055f460(?) payable {
    return sub_5055f460
}

function sub_510d3016(?) payable {
    return sub_510d3016
}

function raffleState() payable {
    return raffleState
}

function depositStartTime() payable {
    return depositStartTime
}

function sub_58ced696(?) payable {
    return sub_58ced696
}

function paused() payable {
    return bool(stor2)
}

function sub_5f0119b7(?) payable {
    return sub_5f0119b7
}

function sub_63f9a750(?) payable {
    return sub_63f9a750
}

function sub_6d5b5cc0(?) payable {
    return sub_6d5b5cc0
}

function getDepositAmount() payable {
    return depositAmount[address(msg.sender)]
}

function sub_8b6b4d67(?) payable {
    return sub_8b6b4d67
}

function owner() payable {
    return owner
}

function maxDepositAmount() payable {
    return maxDepositAmount
}

function nftContractAddress() payable {
    return nftContractAddress
}

function sub_c29110d5(?) payable {
    return sub_c29110d5
}

function sub_cec7d7cb(?) payable {
    return sub_cec7d7cb
}

function sub_d56363a1(?) payable {
    return sub_d56363a1
}

function sub_da025e68(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor14.length
}

function _fallback() payable {
    revert
}

function sub_99fdbb63(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = 0
    raffleState = stor28
}

function sub_32afa50f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor29, stor30, stor31, stor32, stor33
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c6a4bcde(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = 1
    stor28 = raffleState
    raffleState = 7
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function sub_87e4be4c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nftContractAddress = address(arg1)
}

function sub_754f5395(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == 1:
        return stor15[address(arg1)]
    if arg2 != 2:
        return 0
    return stor16[address(arg1)]
}

function getPrizeCount() payable {
    if raffleState == 3:
        return stor15[address(msg.sender)]
    if raffleState == 1:
        return stor15[address(msg.sender)]
    if raffleState == 5:
        return stor16[address(msg.sender)]
    if raffleState != 6:
        return 0
    if sub_4ca91b09 >= sub_58ced696:
        return 0
    return 1
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

function sub_ca3acebb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time must be before End time.'
    depositStartTime = arg1
    sub_cec7d7cb = arg2
    raffleState = 1
}

function sub_a3744f6c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time must be before End time.'
    if raffleState != 4:
        revert with 0, 'Phase 2 Draw not yet executed.'
    sub_8b6b4d67 = arg1
    sub_6d5b5cc0 = arg2
    raffleState = 5
}

function sub_d83abe61(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time must be before End time.'
    if raffleState != 2:
        revert with 0, 'Phase 1 Draw not yet executed.'
    sub_5055f460 = arg1
    sub_5f0119b7 = arg2
    raffleState = 3
}

function sub_f1d0daec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Start time must be before End time.'
    if raffleState < 3:
        revert with 0, 'Phase 2 Draw not yet executed.'
    if raffleState >= 6:
        revert with 0, 'Phase 2 Draw not yet executed.'
    sub_510d3016 = arg1
    sub_3aa2b0b1 = arg2
    raffleState = 6
}

function getCollectedAmount() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor31 and sub_d56363a1 > -1 / stor31:
        revert with 'NH{q', 17
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor31 * sub_d56363a1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - (stor31 * sub_d56363a1))
}

function sub_0dc1b886(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_5f0119b7 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Phase 1 minting period not yet completed.'
    if block.timestamp <= sub_5f0119b7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Phase 1 minting period not yet completed.'
    if raffleState >= 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract no suitable for Phase 2 draw.'
    if stor12.length <= 0:
        revert with 0, 'No participants'
    if arg2 > stor14.length:
        revert with 0, 'End index is out of bounds'
    idx = arg1
    while idx < arg2:
        if idx >= stor14.length:
            revert with 'NH{q', 50
        mem[0] = stor14[idx]
        mem[32] = 13
        if depositAmount[stor14[idx]] >= sub_d56363a1:
            if idx >= stor14.length:
                revert with 'NH{q', 50
            if not sub_d56363a1:
                revert with 'NH{q', 18
            if idx >= stor14.length:
                revert with 'NH{q', 50
            if stor16[stor14[idx]] > -(depositAmount[stor14[idx]] / sub_d56363a1) - 1:
                revert with 'NH{q', 17
            stor16[stor14[idx]] += depositAmount[stor14[idx]] / sub_d56363a1
            if idx >= stor14.length:
                revert with 'NH{q', 50
            if not sub_d56363a1:
                revert with 'NH{q', 18
            if stor31 > -(depositAmount[stor14[idx]] / sub_d56363a1) - 1:
                revert with 'NH{q', 17
            stor31 += depositAmount[stor14[idx]] / sub_d56363a1
            if idx >= stor14.length:
                revert with 'NH{q', 50
            mem[0] = stor14[idx]
            mem[32] = 13
            depositAmount[stor14[idx]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg2 != stor14.length:
        return 0
    raffleState = 4
    return 1
}

function sub_1a4ca875(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor26:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Raffle has not ended. Cannot withdraw funds at the moment.'
    mem[100] = this.address
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Insufficient balance'
    if arg2 <= 0:
        revert with 0, 'Amount must be larger than 0'
    mem[ceil32(return_data.size) + 132] = address(arg1)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(depositTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call depositTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function collectTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor26:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Raffle has not ended. Cannot withdraw funds at the moment.'
    if stor31 and sub_d56363a1 > -1 / stor31:
        revert with 'NH{q', 17
    mem[100] = this.address
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor31 * sub_d56363a1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - (stor31 * sub_d56363a1) <= 0:
        revert with 0, 'Insufficient balance'
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - (stor31 * sub_d56363a1)
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(depositTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - (stor31 * sub_d56363a1), 0
    mem[ceil32(return_data.size) + 328] = 0
    call depositTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - (stor31 * sub_d56363a1), 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0] - (stor31 * sub_d56363a1), 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_3dc46408(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12.length <= 0:
        revert with 0, 'No participants'
    if sub_cec7d7cb <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposit period not yet completed.'
    if block.timestamp <= sub_cec7d7cb:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deposit period not yet completed.'
    if raffleState >= 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract no suitable for Phase 1 draw.'
    if sub_63f9a750 > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_63f9a750 + arg1 > sub_58ced696:
        revert with 0, 'NFT number overflow.'
    if arg1 <= stor12.length:
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < arg1:
            if not stor12.length:
                revert with 'NH{q', 18
            if block.number % stor12.length >= stor12.length:
                revert with 'NH{q', 50
            mem[32] = 13
            if depositAmount[stor12[block.number % stor12.length]] >= sub_d56363a1:
                if sub_63f9a750 == -1:
                    revert with 'NH{q', 17
                sub_63f9a750++
                if stor15[stor12[block.number % stor12.length]] > -2:
                    revert with 'NH{q', 17
                stor15[stor12[block.number % stor12.length]]++
                if stor29 > -2:
                    revert with 'NH{q', 17
                stor29++
                mem[32] = 13
                if depositAmount[stor12[block.number % stor12.length]] < sub_d56363a1:
                    revert with 'NH{q', 17
                depositAmount[stor12[block.number % stor12.length]] -= sub_d56363a1
                if sub_3477b0fe < sub_d56363a1:
                    revert with 'NH{q', 17
                sub_3477b0fe -= sub_d56363a1
            if stor12.length < 1:
                revert with 'NH{q', 17
            if stor12.length - 1 >= stor12.length:
                revert with 'NH{q', 50
            if block.number % stor12.length >= stor12.length:
                revert with 'NH{q', 50
            stor12[block.number % stor12.length] = stor12[stor12.length]
            if not stor12.length:
                revert with 'NH{q', 49
            mem[0] = 12
            stor12[stor12.length] = 0
            stor12.length--
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor12[block.number % stor12.length]
            s = block.number % stor12.length
            s = block.number
            continue 
    else:
        idx = 0
        s = 0
        s = 0
        s = 0
        while idx < stor12.length:
            if not stor12.length:
                revert with 'NH{q', 18
            if block.number % stor12.length >= stor12.length:
                revert with 'NH{q', 50
            mem[32] = 13
            if depositAmount[stor12[block.number % stor12.length]] >= sub_d56363a1:
                if sub_63f9a750 == -1:
                    revert with 'NH{q', 17
                sub_63f9a750++
                if stor15[stor12[block.number % stor12.length]] > -2:
                    revert with 'NH{q', 17
                stor15[stor12[block.number % stor12.length]]++
                if stor29 > -2:
                    revert with 'NH{q', 17
                stor29++
                mem[32] = 13
                if depositAmount[stor12[block.number % stor12.length]] < sub_d56363a1:
                    revert with 'NH{q', 17
                depositAmount[stor12[block.number % stor12.length]] -= sub_d56363a1
                if sub_3477b0fe < sub_d56363a1:
                    revert with 'NH{q', 17
                sub_3477b0fe -= sub_d56363a1
            if stor12.length < 1:
                revert with 'NH{q', 17
            if stor12.length - 1 >= stor12.length:
                revert with 'NH{q', 50
            if block.number % stor12.length >= stor12.length:
                revert with 'NH{q', 50
            stor12[block.number % stor12.length] = stor12[stor12.length]
            if not stor12.length:
                revert with 'NH{q', 49
            mem[0] = 12
            stor12[stor12.length] = 0
            stor12.length--
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor12[block.number % stor12.length]
            s = block.number % stor12.length
            s = block.number
            continue 
    if sub_63f9a750 < sub_58ced696:
        if stor12.length > 0:
            return 0
    raffleState = 2
    return 1
}



}
