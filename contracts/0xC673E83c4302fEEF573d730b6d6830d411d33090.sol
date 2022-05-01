contract main {




// =====================  Runtime code  =====================


#
#  - unstake()
#  - getUserStats(address arg1)
#
address owner;
uint8 stor1; offset 160
address newOwner;
address tokenAddress;
uint256 apy;
mapping of struct user;
mapping of struct rewards;
uint256 totalStaked;
array of address stakeholders;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1].field_0, rewards[arg1].field_256, rewards[arg1].field_512
}

function sub_1cd94d9b(?) payable {
    require calldata.size - 4 >= 32
    require user[address(arg1)].field_1024 <= 2
    return user[address(arg1)].field_1280, user[address(arg1)].field_1536, user[address(arg1)].field_1024
}

function stakeholders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stakeholders.length
    return stakeholders[arg1]
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

function user(address arg1) payable {
    require calldata.size - 4 >= 32
    require user[arg1].field_1024 <= 2
    return user[arg1].field_0, 
           user[arg1].field_256,
           user[arg1].field_512,
           user[arg1].field_768,
           user[arg1].field_1024,
           user[arg1].field_1280,
           user[arg1].field_1536
}

function totalStakers() payable {
    return stakeholders.length
}

function owner() payable {
    return owner
}

function newOwner() payable {
    return newOwner
}

function token() payable {
    return tokenAddress
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

function isStakeholder(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stakeholders.length:
        mem[0] = 7
        if stakeholders[idx] != arg1:
            idx = idx + 1
            continue 
        return 1, idx
    return 0
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

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not stor1
    if arg1 < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x20416d6f756e742073686f756c642062652067726561746572207468656e206f7220657175616c20746f20,
                    mem[207 len 21]
    if user[msg.sender].field_0:
        revert with 0, 'User already staked '
    if user[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x645573657220616c7265616479207374616b65642c20746f74616c2072657761726420636f6c6c656374696f6e206973206e6f74207a6572,
                    mem[220 len 8]
    if user[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x315573657220616c7265616479207374616b65642c206c6173742072657761726420636c61696d6564206973206e6f74207a6572,
                    mem[216 len 12]
    if user[msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x6f5573657220616c7265616479207374616b65642c206c617374207374616b65642074696d65206973206e6f74207a6572,
                    mem[213 len 15]
    user[msg.sender].field_0 = arg1
    if arg1 + totalStaked < totalStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalStaked += arg1
    user[msg.sender].field_768 = block.timestamp
    user[msg.sender].field_512 = 0
    user[msg.sender].field_1024 = 1
    idx = 0
    while idx < stakeholders.length:
        mem[0] = 7
        if stakeholders[idx] != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transfer From failed'
        emit Staked(arg1, user[msg.sender].field_0, msg.sender);
    stakeholders.length++
    stakeholders[stakeholders.length] = msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer From failed'
    emit Staked(arg1, user[msg.sender].field_0, msg.sender);
}

function getRewardStats(address arg1) payable {
    require calldata.size - 4 >= 32
    if not user[address(arg1)].field_0:
        require user[address(arg1)].field_1024 <= 2
        if not user[address(arg1)].field_1024:
            return 0
    if not user[address(arg1)].field_0:
        require user[address(arg1)].field_1024 <= 2
        if user[address(arg1)].field_1024 == 2:
            if rewards[address(arg1)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600 <= rewards[address(arg1)].field_256:
                if not block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600:
                    if user[address(arg1)].field_768 > user[address(arg1)].field_1536:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewards[address(arg1)].field_256:
                        if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                            if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if user[address(arg1)].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return 0, 
                                   0,
                                   0,
                                   0,
                                   rewards[address(arg1)].field_0,
                                   block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                                   (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                                   block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                                   0
                        if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if 0 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if user[address(arg1)].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 0, 
                               rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                               0,
                               rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                               rewards[address(arg1)].field_0,
                               block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                               (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                               block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                               0
                    if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 / rewards[address(arg1)].field_256 != rewards[address(arg1)].field_0:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if user[address(arg1)].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 0, 
                               -1 * rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                               rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                               0,
                               rewards[address(arg1)].field_0,
                               block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                               (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                               block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                               0
                    if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if user[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, 
                           (rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - (rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256),
                           rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           rewards[address(arg1)].field_0,
                           block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                           block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                           0
                if rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600 / block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if user[address(arg1)].field_768 > user[address(arg1)].field_1536:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewards[address(arg1)].field_256:
                    if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if user[address(arg1)].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600, 
                               0,
                               0,
                               0,
                               rewards[address(arg1)].field_0,
                               block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                               (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                               block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                               rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600
                    if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 0 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if user[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600, 
                           rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           0,
                           rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           rewards[address(arg1)].field_0,
                           block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                           block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                           rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600
                if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 / rewards[address(arg1)].field_256 != rewards[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if user[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600, 
                           -1 * rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                           0,
                           rewards[address(arg1)].field_0,
                           block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                           block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                           rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600
                if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if user[address(arg1)].field_768 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600, 
                       (rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - (rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256),
                       rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       rewards[address(arg1)].field_0,
                       block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                       block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600,
                       rewards[address(arg1)].field_0 * block.timestamp - rewards[address(arg1)].field_512 / 168 * 24 * 3600
            if not rewards[address(arg1)].field_256:
                if user[address(arg1)].field_768 > user[address(arg1)].field_1536:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewards[address(arg1)].field_256:
                    if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if user[address(arg1)].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return 0, 
                               0,
                               0,
                               0,
                               rewards[address(arg1)].field_0,
                               block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                               (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                               rewards[address(arg1)].field_256,
                               0
                    if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 0 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if user[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, 
                           rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           0,
                           rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           rewards[address(arg1)].field_0,
                           block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_256,
                           0
                if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 / rewards[address(arg1)].field_256 != rewards[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if user[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return 0, 
                           -1 * rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                           0,
                           rewards[address(arg1)].field_0,
                           block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_256,
                           0
                if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if user[address(arg1)].field_768 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                return 0, 
                       (rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - (rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256),
                       rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       rewards[address(arg1)].field_0,
                       block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_256,
                       0
            if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 / rewards[address(arg1)].field_256 != rewards[address(arg1)].field_0:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if user[address(arg1)].field_768 > user[address(arg1)].field_1536:
                revert with 0, 'SafeMath: subtraction overflow'
            if not rewards[address(arg1)].field_256:
                if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if user[address(arg1)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256, 
                           0,
                           0,
                           0,
                           rewards[address(arg1)].field_0,
                           block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                           (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_256,
                           rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256
                if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if 0 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if user[address(arg1)].field_768 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256, 
                       rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       0,
                       rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       rewards[address(arg1)].field_0,
                       block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256
            if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 / rewards[address(arg1)].field_256 != rewards[address(arg1)].field_0:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if user[address(arg1)].field_768 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                return rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256, 
                       -1 * rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                       0,
                       rewards[address(arg1)].field_0,
                       block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                       (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_256,
                       rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256
            if rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 / user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600 != rewards[address(arg1)].field_0:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256 > rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                revert with 0, 'SafeMath: subtraction overflow'
            if rewards[address(arg1)].field_256 > user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600:
                revert with 0, 'SafeMath: subtraction overflow'
            if user[address(arg1)].field_768 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            return rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256, 
                   (rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - (rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256),
                   rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256,
                   rewards[address(arg1)].field_0 * user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600,
                   rewards[address(arg1)].field_0,
                   block.timestamp - user[address(arg1)].field_768 / 168 * 24 * 3600,
                   (user[address(arg1)].field_1536 - user[address(arg1)].field_768 / 168 * 24 * 3600) - rewards[address(arg1)].field_256,
                   rewards[address(arg1)].field_256,
                   rewards[address(arg1)].field_0 * rewards[address(arg1)].field_256
    if user[address(arg1)].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 <= 30:
        if not apy:
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 0, 0, 0, 0, block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7, 0, 0, 0
        if 10^18 * apy / apy != 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not 10^18 * apy / 36500:
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 0, 0, 0, 0, block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7, 0, 0, 0
        if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not 7 * 10^18 * apy / 36500:
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 0, 0, 0, 0, block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7, 0, 0, 0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(arg1)].field_0:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                return 0, 
                       0,
                       0,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       0,
                       0,
                       0
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            return 0, 
                   0,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   0,
                   0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            return 0, 
                   0,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   0,
                   0
        if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        return 0, 
               0,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               0,
               0,
               0
    if 30 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600:
        revert with 0, 'SafeMath: subtraction overflow'
    if not user[address(arg1)].field_512:
        if 0 > (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        if not apy:
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                if 0 / (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   0,
                   0,
                   0,
                   0,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0
        if 10^18 * apy / apy != 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 10^18 * apy / 36500:
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                if 0 / (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   0,
                   0,
                   0,
                   0,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0
        if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not 7 * 10^18 * apy / 36500:
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                if 0 / (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            return 0, 
                   0,
                   0,
                   0,
                   0,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(arg1)].field_0:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if not block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            if not (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                    return 0, 
                           0,
                           0,
                           0,
                           7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                           block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                           0,
                           (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                           0
                if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0, 
                       0,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       0,
                       (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       0
            if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 / (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                return 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7, 
                       0,
                       0,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       0,
                       (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       0
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7, 
                   0,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                return 0, 
                       0,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       0,
                       (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       0
            if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return 0, 
                   0,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 / (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if 0 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            return 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7, 
                   0,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0
        if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7, 
               0,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               0,
               (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               0
    if user[address(arg1)].field_768 > user[address(arg1)].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if 30 > user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600:
        revert with 0, 'SafeMath: subtraction overflow'
    if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > (block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
        revert with 0, 'SafeMath: subtraction overflow'
    if not apy:
        if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            if 0 / ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            if 0 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, 
               0,
               0,
               0,
               0,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if 10^18 * apy / apy != 10^18:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
    if not 10^18 * apy / 36500:
        if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            if 0 / ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            if 0 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, 
               0,
               0,
               0,
               0,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
    if not 7 * 10^18 * apy / 36500:
        if block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            if 0 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            if 0 / ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            if 0 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, 
               0,
               0,
               0,
               0,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(arg1)].field_0:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
    if not block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
        if not ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            if not (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
                if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                    return 0, 
                           0,
                           0,
                           0,
                           7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                           block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                           (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                           ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                           0
                if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                return 0, 
                       0,
                       (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                       0
            if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
            if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                return 0, 
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       0,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                       0
            if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            return 0, 
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                   0
        if ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if not (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
                       0,
                       0,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                       0
            if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                   0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                   0
        if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
               0,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
    if not ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
        if not (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
            if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
                revert with 0, 'SafeMath: subtraction overflow'
            if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
                return 0, 
                       0,
                       0,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                       block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                       (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                       ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                       0
            if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
            return 0, 
                   0,
                   (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                   0
        if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            return 0, 
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                   0
        if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        return 0, 
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
    if not (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7:
        if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
            return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
                   0,
                   0,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
                   block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
                   (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
                   ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
                   0
        if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
        return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
               0,
               (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 / (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
    if (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7:
        revert with 0, 'SafeMath: subtraction overflow'
    if not 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18:
        return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               0,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
               block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
               (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
               ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
               0
    if (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7):
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
    return ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18), 
           7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
           (block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18),
           7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
           7 * user[address(arg1)].field_0 * 10^18 * apy / 36500 / 10^18,
           block.timestamp - user[address(arg1)].field_768 / 24 * 3600 / 7,
           (user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7,
           ((block.timestamp - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(arg1)].field_512 - user[address(arg1)].field_768 / 24 * 3600) - 30 / 7),
           0
}

function claimReward() payable {
    require not stor1
    require user[msg.sender].field_1024 <= 2
    if not user[msg.sender].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6f4e6f205265776172647320746f20636c61696d2c20796f752068617665206e6f74207374616b6564207965,
                    mem[208 len 20]
    require user[msg.sender].field_1024 <= 2
    if user[msg.sender].field_1024 == 2:
        if not rewards[msg.sender].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe4e6f205265776172647320546f20636c61696d206e6f772c20756e7374616b6564,
                        mem[198 len 30]
        if rewards[msg.sender].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 <= rewards[msg.sender].field_256:
            if not block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600:
                if block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 > rewards[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                rewards[msg.sender].field_256 -= block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600
                if not block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600:
                    if rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if 168 * 24 * 3600 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 / block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 != 168 * 24 * 3600:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if (168 * 24 * 3600 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600) + rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[msg.sender].field_512 += 168 * 24 * 3600 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if rewards[msg.sender].field_0 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 / block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 != rewards[msg.sender].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if rewards[msg.sender].field_0 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 > rewards[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                rewards[msg.sender].field_256 -= block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600
                if not block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600:
                    if rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if 168 * 24 * 3600 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 / block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600 != 168 * 24 * 3600:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if (168 * 24 * 3600 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600) + rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[msg.sender].field_512 += 168 * 24 * 3600 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, rewards[msg.sender].field_0 * block.timestamp - rewards[msg.sender].field_512 / 168 * 24 * 3600
        else:
            if not rewards[msg.sender].field_256:
                if rewards[msg.sender].field_256 > rewards[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                rewards[msg.sender].field_256 = 0
                if not rewards[msg.sender].field_256:
                    if rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if 168 * 24 * 3600 * rewards[msg.sender].field_256 / rewards[msg.sender].field_256 != 168 * 24 * 3600:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if (168 * 24 * 3600 * rewards[msg.sender].field_256) + rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[msg.sender].field_512 += 168 * 24 * 3600 * rewards[msg.sender].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if rewards[msg.sender].field_0 * rewards[msg.sender].field_256 / rewards[msg.sender].field_256 != rewards[msg.sender].field_0:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if rewards[msg.sender].field_0 * rewards[msg.sender].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if rewards[msg.sender].field_256 > rewards[msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                rewards[msg.sender].field_256 = 0
                if not rewards[msg.sender].field_256:
                    if rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if 168 * 24 * 3600 * rewards[msg.sender].field_256 / rewards[msg.sender].field_256 != 168 * 24 * 3600:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if (168 * 24 * 3600 * rewards[msg.sender].field_256) + rewards[msg.sender].field_512 < rewards[msg.sender].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[msg.sender].field_512 += 168 * 24 * 3600 * rewards[msg.sender].field_256
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, rewards[msg.sender].field_0 * rewards[msg.sender].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if user[msg.sender].field_0:
            if not user[address(msg.sender)].field_0:
                require user[address(msg.sender)].field_1024 <= 2
                if not user[address(msg.sender)].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                42,
                                0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976,
                                mem[206 len 22]
            if user[address(msg.sender)].field_0:
                if user[address(msg.sender)].field_768 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 <= 30:
                    if not apy:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 10^18 * apy / apy != 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not 10^18 * apy / 36500:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not 7 * 10^18 * apy / 36500:
                                if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                    if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[590 len 22]
                if 30 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not user[address(msg.sender)].field_512:
                    if 0 > (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not apy:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                    if 10^18 * apy / apy != 10^18:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not 10^18 * apy / 36500:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                    if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    if not 7 * 10^18 * apy / 36500:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                        if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 <= 0:
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                        if not user[msg.sender].field_512:
                            if user[msg.sender].field_768 + (720 * 24 * 3600) < user[msg.sender].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_512 = user[msg.sender].field_768 + (720 * 24 * 3600)
                        if (168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_512 < user[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        user[msg.sender].field_512 += 168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7
                        if (7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_256 < user[msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        user[msg.sender].field_256 += 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if user[address(msg.sender)].field_768 > user[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 30 > user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not apy:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                            if 0 / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                    if 10^18 * apy / apy != 10^18:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                    if not 10^18 * apy / 36500:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                            if 0 / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                    if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                    if not 7 * 10^18 * apy / 36500:
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                            if 0 / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(msg.sender)].field_0:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                    if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                    if not ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                    if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                    if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                    if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                        if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                    if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) <= 0:
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                    if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18):
                        if not user[msg.sender].field_512:
                            if user[msg.sender].field_768 + (720 * 24 * 3600) < user[msg.sender].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_512 = user[msg.sender].field_768 + (720 * 24 * 3600)
                        if (168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - (168 * 24 * 3600 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_512 < user[msg.sender].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        user[msg.sender].field_512 = (168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - (168 * 24 * 3600 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_512
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) + user[msg.sender].field_256 < user[msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        user[msg.sender].field_256 = ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) + user[msg.sender].field_256
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
            else:
                require user[address(msg.sender)].field_1024 <= 2
                if user[address(msg.sender)].field_1024 == 2:
                    if rewards[address(msg.sender)].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600 <= rewards[address(msg.sender)].field_256:
                        if not block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600:
                            if user[address(msg.sender)].field_768 > user[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not rewards[address(msg.sender)].field_256:
                                if user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 0 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 / rewards[address(msg.sender)].field_256 != rewards[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            if rewards[address(msg.sender)].field_256 > user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if user[address(msg.sender)].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[718 len 22]
                        if rewards[address(msg.sender)].field_0 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600 / block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if user[address(msg.sender)].field_768 > user[address(msg.sender)].field_1536:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewards[address(msg.sender)].field_256:
                            if user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if 0 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 / rewards[address(msg.sender)].field_256 != rewards[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        if rewards[address(msg.sender)].field_256 > user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if user[address(msg.sender)].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if rewards[address(msg.sender)].field_0 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600 <= 0:
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[718 len 22]
                        if rewards[address(msg.sender)].field_0 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600:
                            if not user[msg.sender].field_512:
                                if user[msg.sender].field_768 + (720 * 24 * 3600) < user[msg.sender].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                user[msg.sender].field_512 = user[msg.sender].field_768 + (720 * 24 * 3600)
                            if (168 * 24 * 3600 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600) + user[msg.sender].field_512 < user[msg.sender].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_512 += 168 * 24 * 3600 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600
                            if (rewards[address(msg.sender)].field_0 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600) + user[msg.sender].field_256 < user[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_256 += rewards[address(msg.sender)].field_0 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, rewards[address(msg.sender)].field_0 * block.timestamp - rewards[address(msg.sender)].field_512 / 168 * 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if not rewards[address(msg.sender)].field_256:
                            if user[address(msg.sender)].field_768 > user[address(msg.sender)].field_1536:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not rewards[address(msg.sender)].field_256:
                                if user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if 0 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 / rewards[address(msg.sender)].field_256 != rewards[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            if rewards[address(msg.sender)].field_256 > user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if user[address(msg.sender)].field_768 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[718 len 22]
                        if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 / rewards[address(msg.sender)].field_256 != rewards[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if user[address(msg.sender)].field_768 > user[address(msg.sender)].field_1536:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not rewards[address(msg.sender)].field_256:
                            if user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if 0 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 / rewards[address(msg.sender)].field_256 != rewards[address(msg.sender)].field_0:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 / user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600 != rewards[address(msg.sender)].field_0:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 > rewards[address(msg.sender)].field_0 * user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        if rewards[address(msg.sender)].field_256 > user[address(msg.sender)].field_1536 - user[address(msg.sender)].field_768 / 168 * 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if user[address(msg.sender)].field_768 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256 <= 0:
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[718 len 22]
                        if rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256:
                            if not user[msg.sender].field_512:
                                if user[msg.sender].field_768 + (720 * 24 * 3600) < user[msg.sender].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                user[msg.sender].field_512 = user[msg.sender].field_768 + (720 * 24 * 3600)
                            if (168 * 24 * 3600 * rewards[address(msg.sender)].field_256) + user[msg.sender].field_512 < user[msg.sender].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_512 += 168 * 24 * 3600 * rewards[address(msg.sender)].field_256
                            if (rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256) + user[msg.sender].field_256 < user[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_256 += rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, rewards[address(msg.sender)].field_0 * rewards[address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    if user[address(msg.sender)].field_768 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 <= 30:
                        if not apy:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 10^18 * apy / apy != 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not 10^18 * apy / 36500:
                                if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not 7 * 10^18 * apy / 36500:
                                    if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(msg.sender)].field_0:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[590 len 22]
                    if 30 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not user[address(msg.sender)].field_512:
                        if 0 > (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not apy:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 0 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                        if 10^18 * apy / apy != 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not 10^18 * apy / 36500:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 0 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                        if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        if not 7 * 10^18 * apy / 36500:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 0 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 / (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if 0 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 <= 0:
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[782 len 22]
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if not user[msg.sender].field_512:
                                if user[msg.sender].field_768 + (720 * 24 * 3600) < user[msg.sender].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                user[msg.sender].field_512 = user[msg.sender].field_768 + (720 * 24 * 3600)
                            if (168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_512 < user[msg.sender].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_512 += 168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7
                            if (7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_256 < user[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_256 += 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        if user[address(msg.sender)].field_768 > user[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 30 > user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not apy:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                if 0 / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 0 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                        if 10^18 * apy / apy != 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                        if not 10^18 * apy / 36500:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                if 0 / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 0 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                        if 7 * 10^18 * apy / 36500 / 10^18 * apy / 36500 != 7:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                        if not 7 * 10^18 * apy / 36500:
                            if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                if 0 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                if 0 / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 0 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 7 * 10^18 * apy / 36500 != user[address(msg.sender)].field_0:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                        if block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 / block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if not ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                                if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                            if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) / ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7:
                            if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 / (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 != 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 > block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18:
                            if (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) / 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18 != (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600 / 7) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7):
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) <= 0:
                            revert with 0, 32, 42, 0x774e6f207265776172647320746f20436c61696d2c20737461747573203d207374616b696e67206c6976, mem[1038 len 22]
                        if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18):
                            if not user[msg.sender].field_512:
                                if user[msg.sender].field_768 + (720 * 24 * 3600) < user[msg.sender].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                user[msg.sender].field_512 = user[msg.sender].field_768 + (720 * 24 * 3600)
                            if (168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - (168 * 24 * 3600 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_512 < user[msg.sender].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_512 = (168 * 24 * 3600 * (block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) - (168 * 24 * 3600 * (user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7) + user[msg.sender].field_512
                            if ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) + user[msg.sender].field_256 < user[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            user[msg.sender].field_256 = ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) + user[msg.sender].field_256
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ((block.timestamp - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18) - ((user[address(msg.sender)].field_512 - user[address(msg.sender)].field_768 / 24 * 3600) - 30 / 7 * 7 * user[address(msg.sender)].field_0 * 10^18 * apy / 36500 / 10^18)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
}



}
