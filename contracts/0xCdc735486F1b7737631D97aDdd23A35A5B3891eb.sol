contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address newOwner;
address lpContractAddress;
address sub_2f4ae939Address;
uint256 totalStaked;
uint256 totalStakers;
mapping of uint256 sub_821460f5;
mapping of uint256 sub_ee740522;
mapping of uint256 claimedRewards;
uint256 apy;

function sub_2f4ae939(?) payable {
    return sub_2f4ae939Address
}

function apy() payable {
    return apy
}

function paused() payable {
    return bool(stor1)
}

function totalStaked() payable {
    return totalStaked
}

function sub_821460f5(?) payable {
    require calldata.size - 4 >= 32
    return sub_821460f5[arg1]
}

function totalStakers() payable {
    return totalStakers
}

function lpContract() payable {
    return lpContractAddress
}

function owner() payable {
    return owner
}

function claimedRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimedRewards[arg1]
}

function newOwner() payable {
    return newOwner
}

function sub_ee740522(?) payable {
    require calldata.size - 4 >= 32
    return sub_ee740522[arg1]
}

function _fallback() payable {
    revert
}

function unpause() payable {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() payable {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() payable {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function userData(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_821460f5[address(arg1)], 
           sub_ee740522[address(arg1)],
           totalStaked,
           totalStakers,
           lpContractAddress,
           claimedRewards[address(arg1)]
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor1
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function unStake() payable {
    require not stor1
    if not sub_821460f5[msg.sender]:
        revert with 0, 'you have not staked yet'
    sub_821460f5[msg.sender] = 0
    sub_ee740522[msg.sender] = 0
    claimedRewards[msg.sender] = 0
    if sub_821460f5[msg.sender] > totalStaked:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStaked -= sub_821460f5[msg.sender]
    if 1 > totalStakers:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStakers--
    require ext_code.size(lpContractAddress)
    call lpContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_821460f5[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    return 1
}

function sub_c0abc8d1(?) payable {
    require calldata.size - 4 >= 32
    require not stor1
    require ext_code.size(lpContractAddress)
    staticcall lpContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe62616c616e6365206f6620612075736572206973206c657373207468656e2076616c75,
                    mem[200 len 28]
    if not sub_821460f5[msg.sender]:
        totalStakers++
    if arg1 + sub_821460f5[msg.sender] < sub_821460f5[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    sub_821460f5[msg.sender] += arg1
    sub_ee740522[msg.sender] = block.timestamp
    if arg1 + totalStaked < totalStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalStaked += arg1
    claimedRewards[msg.sender] = 0
    require ext_code.size(lpContractAddress)
    staticcall lpContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'allowance is wrong'
    require ext_code.size(lpContractAddress)
    call lpContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer From failed'
    return 1
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor1
    if not sub_821460f5[msg.sender]:
        revert with 0, 'you are not a staker'
    if 1 == arg1:
        if sub_ee740522[msg.sender] + (2160 * 24 * 3600) < sub_ee740522[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp < sub_ee740522[msg.sender] + (2160 * 24 * 3600):
            revert with 0, '90 days not complete '
        if claimedRewards[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x65796f75206861766520616c726561647920636c61696d656420666f72207468697320,
                        mem[199 len 29]
        if not sub_821460f5[msg.sender] / 100:
            if not sub_821460f5[msg.sender] / 100:
                claimedRewards[msg.sender] = 0
            else:
                if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                claimedRewards[msg.sender] = 10 * sub_821460f5[msg.sender] / 100
            require ext_code.size(lpContractAddress)
            call lpContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_821460f5[msg.sender] / 100:
                claimedRewards[msg.sender] = 0
            else:
                if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                claimedRewards[msg.sender] = 10 * sub_821460f5[msg.sender] / 100
            require ext_code.size(lpContractAddress)
            call lpContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10 * sub_821460f5[msg.sender] / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer failed'
    else:
        if arg1 != 2:
            if arg1 != 3:
                if arg1 != 4:
                    revert with 0, 'Index is wrong'
        if 1 == arg1:
            if sub_ee740522[msg.sender] + (2160 * 24 * 3600) < sub_ee740522[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp < sub_ee740522[msg.sender] + (2160 * 24 * 3600):
                revert with 0, '90 days not complete '
            if claimedRewards[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x65796f75206861766520616c726561647920636c61696d656420666f72207468697320,
                            mem[199 len 29]
            if not sub_821460f5[msg.sender] / 100:
                if not sub_821460f5[msg.sender] / 100:
                    claimedRewards[msg.sender] = 0
                else:
                    if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    claimedRewards[msg.sender] = 10 * sub_821460f5[msg.sender] / 100
                require ext_code.size(lpContractAddress)
                call lpContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_821460f5[msg.sender] / 100:
                    claimedRewards[msg.sender] = 0
                else:
                    if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    claimedRewards[msg.sender] = 10 * sub_821460f5[msg.sender] / 100
                require ext_code.size(lpContractAddress)
                call lpContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 10 * sub_821460f5[msg.sender] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer failed'
        else:
            if 2 == arg1:
                if sub_ee740522[msg.sender] + (4320 * 24 * 3600) < sub_ee740522[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp < sub_ee740522[msg.sender] + (4320 * 24 * 3600):
                    revert with 0, '180 days not complete '
                if not sub_821460f5[msg.sender] / 100:
                    if claimedRewards[msg.sender]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x31796f752068617665206e6f7420636c61696d656420666f722071756174657220,
                                    mem[197 len 31]
                else:
                    if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if claimedRewards[msg.sender] != 10 * sub_821460f5[msg.sender] / 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x31796f752068617665206e6f7420636c61696d656420666f722071756174657220,
                                    mem[197 len 31]
                if not sub_821460f5[msg.sender] / 100:
                    if not sub_821460f5[msg.sender] / 100:
                        claimedRewards[msg.sender] = 0
                    else:
                        if 20 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 20:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        claimedRewards[msg.sender] = 20 * sub_821460f5[msg.sender] / 100
                    require ext_code.size(lpContractAddress)
                    call lpContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_821460f5[msg.sender] / 100:
                        claimedRewards[msg.sender] = 0
                    else:
                        if 20 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 20:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        claimedRewards[msg.sender] = 20 * sub_821460f5[msg.sender] / 100
                    require ext_code.size(lpContractAddress)
                    call lpContractAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 10 * sub_821460f5[msg.sender] / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer failed'
            else:
                if 3 == arg1:
                    if sub_ee740522[msg.sender] + (6480 * 24 * 3600) < sub_ee740522[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp < sub_ee740522[msg.sender] + (6480 * 24 * 3600):
                        revert with 0, '270 days not complete '
                    if not sub_821460f5[msg.sender] / 100:
                        if claimedRewards[msg.sender]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x31796f752068617665206e6f7420636c61696d656420666f722071756174657220,
                                        mem[197 len 31]
                    else:
                        if 20 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 20:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if claimedRewards[msg.sender] != 20 * sub_821460f5[msg.sender] / 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x31796f752068617665206e6f7420636c61696d656420666f722071756174657220,
                                        mem[197 len 31]
                    if not sub_821460f5[msg.sender] / 100:
                        if not sub_821460f5[msg.sender] / 100:
                            claimedRewards[msg.sender] = 0
                        else:
                            if 30 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            claimedRewards[msg.sender] = 30 * sub_821460f5[msg.sender] / 100
                        require ext_code.size(lpContractAddress)
                        call lpContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not sub_821460f5[msg.sender] / 100:
                            claimedRewards[msg.sender] = 0
                        else:
                            if 30 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            claimedRewards[msg.sender] = 30 * sub_821460f5[msg.sender] / 100
                        require ext_code.size(lpContractAddress)
                        call lpContractAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 10 * sub_821460f5[msg.sender] / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer failed'
                else:
                    if 4 == arg1:
                        if sub_ee740522[msg.sender] + (8640 * 24 * 3600) < sub_ee740522[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp < sub_ee740522[msg.sender] + (8640 * 24 * 3600):
                            revert with 0, '360 days not complete '
                        if not sub_821460f5[msg.sender] / 100:
                            if claimedRewards[msg.sender]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x32796f752068617665206e6f7420636c61696d656420666f722071756174657220,
                                            mem[197 len 31]
                        else:
                            if 30 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if claimedRewards[msg.sender] != 30 * sub_821460f5[msg.sender] / 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x32796f752068617665206e6f7420636c61696d656420666f722071756174657220,
                                            mem[197 len 31]
                        if not sub_821460f5[msg.sender] / 100:
                            if not sub_821460f5[msg.sender] / 100:
                                claimedRewards[msg.sender] = 0
                            else:
                                if 40 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 40:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                claimedRewards[msg.sender] = 40 * sub_821460f5[msg.sender] / 100
                            require ext_code.size(lpContractAddress)
                            call lpContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            if 10 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 10:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not sub_821460f5[msg.sender] / 100:
                                claimedRewards[msg.sender] = 0
                            else:
                                if 40 * sub_821460f5[msg.sender] / 100 / sub_821460f5[msg.sender] / 100 != 40:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x33536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                claimedRewards[msg.sender] = 40 * sub_821460f5[msg.sender] / 100
                            require ext_code.size(lpContractAddress)
                            call lpContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10 * sub_821460f5[msg.sender] / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer failed'
    return 0
}



}
