contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#
address owner;
address appleAddress;
address masterChefAddress;
uint256 period;
address certificateAddress;
address tokenAddress;
uint256 pid;
address taxAddress;
uint256 sub_521afe57;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function certificate() payable {
    return certificateAddress
}

function sub_521afe57(?) payable {
    return sub_521afe57
}

function masterChef() payable {
    return masterChefAddress
}

function apple() payable {
    return appleAddress
}

function owner() payable {
    return owner
}

function taxAddress() payable {
    return taxAddress
}

function period() payable {
    return period
}

function pid() payable {
    return pid
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor9, stor10, stor11
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function setTax(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'MasterChef: taxAddress not 0'
    taxAddress = arg1
}

function setRadio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 1000:
        revert with 0, 'MasterChef: taxRadio too big'
    sub_521afe57 = arg1
}

function setPid(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pid = arg1
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args pid
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    stor9 = ext_call.return_data[32]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'migrate: no migrator'
    require ext_code.size(appleAddress)
    staticcall appleAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(appleAddress)
    call appleAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdraw() payable {
    if userInfo[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userInfo[address(msg.sender)].field_512 >= period:
        require ext_code.size(appleAddress)
        staticcall appleAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(appleAddress)
        if userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
            call appleAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, userInfo[address(msg.sender)].field_0
        else:
            call appleAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
    else:
        if sub_521afe57 <= 0:
            require ext_code.size(appleAddress)
            staticcall appleAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(appleAddress)
            if userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                call appleAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, userInfo[address(msg.sender)].field_0
            else:
                call appleAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            if not userInfo[address(msg.sender)].field_0:
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if 0 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args taxAddress, 0
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args taxAddress, ext_call.return_data[0]
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * sub_521afe57 / userInfo[address(msg.sender)].field_0 != sub_521afe57:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if userInfo[address(msg.sender)].field_0 * sub_521afe57 / 1000 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args taxAddress, userInfo[address(msg.sender)].field_0 * sub_521afe57 / 1000
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args taxAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not userInfo[address(msg.sender)].field_0:
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if 0 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require userInfo[address(msg.sender)].field_0
                if (1000 * userInfo[address(msg.sender)].field_0) - (sub_521afe57 * userInfo[address(msg.sender)].field_0) / userInfo[address(msg.sender)].field_0 != -sub_521afe57 + 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if (1000 * userInfo[address(msg.sender)].field_0) - (sub_521afe57 * userInfo[address(msg.sender)].field_0) / 1000 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * userInfo[address(msg.sender)].field_0) - (sub_521afe57 * userInfo[address(msg.sender)].field_0) / 1000
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
}

function pendingOre(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= stor10:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * stor11 / userInfo[address(arg1)].field_0 != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor11 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * stor11 / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * stor11 / userInfo[address(arg1)].field_0 != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * stor11 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * stor11 / 10^12) - userInfo[address(arg1)].field_256)
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.getMultiplier(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args stor10, block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.orePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if stor11 + (0 / ext_call.return_data[0]) < stor11:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor11 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / ext_call.return_data[0]
        if 10^12 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if stor11 + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) < stor11:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (stor11 * userInfo[address(arg1)].field_0) + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor11 + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (stor11 * userInfo[address(arg1)].field_0) + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor11 * userInfo[address(arg1)].field_0) + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if stor11 + (0 / ext_call.return_data[0]) < stor11:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor11 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require 0 / ext_call.return_data[0]
        if 10^12 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if stor11 + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) < stor11:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (stor11 * userInfo[address(arg1)].field_0) + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor11 + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (stor11 * userInfo[address(arg1)].field_0) + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor11 * userInfo[address(arg1)].field_0) + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require ext_call.return_data[0] * ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] * ext_call.return_data[0] != stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if stor11 + (0 / ext_call.return_data[0]) < stor11:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor11 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((stor11 * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0]
    if 10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if stor11 + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0]) < stor11:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_0
    if (stor11 * userInfo[address(arg1)].field_0) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != stor11 + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > (stor11 * userInfo[address(arg1)].field_0) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((stor11 * userInfo[address(arg1)].field_0) + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(msg.sender)].field_0 < arg1:
        revert with 0, 'withdraw: not good'
    if block.number <= stor10:
        if not userInfo[address(msg.sender)].field_0:
            if userInfo[address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(masterChefAddress)
            call masterChefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(appleAddress)
            staticcall appleAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(appleAddress)
            if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                call appleAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[address(msg.sender)].field_256
            else:
                call appleAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        else:
            require userInfo[address(msg.sender)].field_0
            if userInfo[address(msg.sender)].field_0 * stor11 / userInfo[address(msg.sender)].field_0 != stor11:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor11 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(masterChefAddress)
            call masterChefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(appleAddress)
            staticcall appleAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(appleAddress)
            if (userInfo[address(msg.sender)].field_0 * stor11 / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                call appleAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[address(msg.sender)].field_0 * stor11 / 10^12) - userInfo[address(msg.sender)].field_256
            else:
                call appleAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > userInfo[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[address(msg.sender)].field_0 -= arg1
        if not userInfo[address(msg.sender)].field_0:
            userInfo[address(msg.sender)].field_256 = 0
        else:
            require userInfo[address(msg.sender)].field_0
            if userInfo[address(msg.sender)].field_0 * stor11 / userInfo[address(msg.sender)].field_0 != stor11:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor11 / 10^12
        if userInfo[address(msg.sender)].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - userInfo[address(msg.sender)].field_512 >= period:
            require ext_code.size(certificateAddress)
            call certificateAddress.burn(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            if sub_521afe57 <= 0:
                require ext_code.size(certificateAddress)
                call certificateAddress.burn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if not arg1:
                    require ext_code.size(certificateAddress)
                    call certificateAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args taxAddress, 0
                else:
                    require arg1
                    if arg1 * sub_521afe57 / arg1 != sub_521afe57:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(certificateAddress)
                    call certificateAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1 * sub_521afe57 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args taxAddress, arg1 * sub_521afe57 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    require ext_code.size(certificateAddress)
                    call certificateAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    require arg1
                    if (1000 * arg1) - (sub_521afe57 * arg1) / arg1 != -sub_521afe57 + 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(certificateAddress)
                    call certificateAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), (1000 * arg1) - (sub_521afe57 * arg1) / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (1000 * arg1) - (sub_521afe57 * arg1) / 1000
    else:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            stor10 = block.number
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(masterChefAddress)
                call masterChefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[address(msg.sender)].field_256
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * stor11 / userInfo[address(msg.sender)].field_0 != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor11 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(masterChefAddress)
                call masterChefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if (userInfo[address(msg.sender)].field_0 * stor11 / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[address(msg.sender)].field_0 * stor11 / 10^12) - userInfo[address(msg.sender)].field_256
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > userInfo[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[address(msg.sender)].field_0 -= arg1
            if not userInfo[address(msg.sender)].field_0:
                userInfo[address(msg.sender)].field_256 = 0
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * stor11 / userInfo[address(msg.sender)].field_0 != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor11 / 10^12
            if userInfo[address(msg.sender)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - userInfo[address(msg.sender)].field_512 >= period:
                require ext_code.size(certificateAddress)
                call certificateAddress.burn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if sub_521afe57 <= 0:
                    require ext_code.size(certificateAddress)
                    call certificateAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                else:
                    if not arg1:
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args taxAddress, 0
                    else:
                        require arg1
                        if arg1 * sub_521afe57 / arg1 != sub_521afe57:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), arg1 * sub_521afe57 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args taxAddress, arg1 * sub_521afe57 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg1:
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        require arg1
                        if (1000 * arg1) - (sub_521afe57 * arg1) / arg1 != -sub_521afe57 + 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * arg1) - (sub_521afe57 * arg1) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * arg1) - (sub_521afe57 * arg1) / 1000
        else:
            require ext_code.size(masterChefAddress)
            staticcall masterChefAddress.poolInfo(uint256 rg1) with:
                    gas gas_remaining wei
                   args pid
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            stor9 = ext_call.return_data[32]
            require ext_code.size(masterChefAddress)
            staticcall masterChefAddress.getMultiplier(uint256 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args stor10, block.number
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(masterChefAddress)
            staticcall masterChefAddress.totalAllocPoint() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(masterChefAddress)
            staticcall masterChefAddress.orePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                require ext_code.size(masterChefAddress)
                call masterChefAddress.deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if stor11 + (0 / ext_call.return_data[0]) < stor11:
                        revert with 0, 'SafeMath: addition overflow'
                    stor11 += 0 / ext_call.return_data[0]
                else:
                    require 0 / ext_call.return_data[0]
                    if 10^12 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[224 len 4]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if stor11 + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) < stor11:
                        revert with 0, 'SafeMath: addition overflow'
                    stor11 += 10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]
            else:
                require ext_call.return_data[0]
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if not ext_call.return_data[0] * ext_call.return_data[0]:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(masterChefAddress)
                    call masterChefAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if stor11 + (0 / ext_call.return_data[0]) < stor11:
                            revert with 0, 'SafeMath: addition overflow'
                        stor11 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / ext_call.return_data[0]
                        if 10^12 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[224 len 4]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if stor11 + (10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]) < stor11:
                            revert with 0, 'SafeMath: addition overflow'
                        stor11 += 10^12 * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    require ext_call.return_data[0] * ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] * ext_call.return_data[0] != stor9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[224 len 4]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(masterChefAddress)
                    call masterChefAddress.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if stor11 + (0 / ext_call.return_data[0]) < stor11:
                            revert with 0, 'SafeMath: addition overflow'
                        stor11 += 0 / ext_call.return_data[0]
                    else:
                        require ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0]
                        if 10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[224 len 4]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if stor11 + (10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0]) < stor11:
                            revert with 0, 'SafeMath: addition overflow'
                        stor11 += 10^12 * ext_call.return_data[0] * ext_call.return_data[0] * stor9 / ext_call.return_data[0] / ext_call.return_data[0]
            stor10 = block.number
            if not userInfo[address(msg.sender)].field_0:
                if userInfo[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(masterChefAddress)
                call masterChefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if -userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[address(msg.sender)].field_256
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * stor11 / userInfo[address(msg.sender)].field_0 != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                if userInfo[address(msg.sender)].field_256 > userInfo[address(msg.sender)].field_0 * stor11 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(masterChefAddress)
                call masterChefAddress.withdraw(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(appleAddress)
                staticcall appleAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(appleAddress)
                if (userInfo[address(msg.sender)].field_0 * stor11 / 10^12) - userInfo[address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[address(msg.sender)].field_0 * stor11 / 10^12) - userInfo[address(msg.sender)].field_256
                else:
                    call appleAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > userInfo[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[address(msg.sender)].field_0 -= arg1
            if not userInfo[address(msg.sender)].field_0:
                userInfo[address(msg.sender)].field_256 = 0
            else:
                require userInfo[address(msg.sender)].field_0
                if userInfo[address(msg.sender)].field_0 * stor11 / userInfo[address(msg.sender)].field_0 != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[224 len 4]
                userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * stor11 / 10^12
            if userInfo[address(msg.sender)].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - userInfo[address(msg.sender)].field_512 >= period:
                require ext_code.size(certificateAddress)
                call certificateAddress.burn(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if sub_521afe57 <= 0:
                    require ext_code.size(certificateAddress)
                    call certificateAddress.burn(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                else:
                    if not arg1:
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args taxAddress, 0
                    else:
                        require arg1
                        if arg1 * sub_521afe57 / arg1 != sub_521afe57:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[224 len 4]
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), arg1 * sub_521afe57 / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args taxAddress, arg1 * sub_521afe57 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg1:
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        require arg1
                        if (1000 * arg1) - (sub_521afe57 * arg1) / arg1 != -sub_521afe57 + 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[224 len 4]
                        require ext_code.size(certificateAddress)
                        call certificateAddress.burn(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(this.address), (1000 * arg1) - (sub_521afe57 * arg1) / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (1000 * arg1) - (sub_521afe57 * arg1) / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg1, msg.sender);
}



}
