contract main {




// =====================  Runtime code  =====================


#
#  - sub_2f512cff(?)
#
array of address sub_22e3dec0;
array of uint256 sub_2e9b2fe5;
address owner;

function sub_22e3dec0(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_22e3dec0.length
    return sub_22e3dec0[arg1]
}

function sub_2e9b2fe5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_2e9b2fe5.length
    return sub_2e9b2fe5[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function quote(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    0x49454e545f414d4f554e54000000000000000000000000000000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    'IENT_LIQUIDITY' << 144
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    'IENT_LIQUIDITY' << 144
    if not arg1:
        if arg2:
            return (0 / arg2)
    else:
        if arg3 * arg1 / arg1 != arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg2:
            return (arg3 * arg1 / arg2)
    ('iszero', ('param', 'arg2'))
    revert
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LogWithdraw(eth.balance(this.address), msg.sender, arg1);
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit LogWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    0x49454e545f4f55545055545f414d4f554e540000000000000000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    'IENT_LIQUIDITY' << 144
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    'IENT_LIQUIDITY' << 144
    if not arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require arg3 - arg1
        if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    if arg1 * arg2 / arg2 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg1 * arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require arg3 - arg1
        if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    if 1000 * arg1 * arg2 / arg1 * arg2 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 > arg3:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require arg3 - arg1
    if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
        revert with 0, 'SafeMath: multiplication overflow'
    require (997 * arg3) - (997 * arg1)
    if (1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1 < 1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1):
        revert with 0, 'SafeMath: addition overflow'
    return ((1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1)
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    0x49454e545f494e5055545f414d4f554e54000000000000000000000000000000
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    'IENT_LIQUIDITY' << 144
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe417262426f74556e697377617056324c6962726172793a20494e5355464649,
                    'IENT_LIQUIDITY' << 144
    if not arg1:
        if arg2:
            if 1000 * arg2 / arg2 != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if 1000 * arg2 < 1000 * arg2:
                revert with 0, 'SafeMath: addition overflow'
            if 1000 * arg2:
                return (0 / 1000 * arg2)
    else:
        if 997 * arg1 / arg1 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not 997 * arg1:
            if not arg2:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 997 * arg1:
                    return (0 / 997 * arg1)
            else:
                if 1000 * arg2 / arg2 != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (997 * arg1) + (1000 * arg2) < 1000 * arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if (997 * arg1) + (1000 * arg2):
                    return (0 / (997 * arg1) + (1000 * arg2))
        else:
            if 997 * arg3 * arg1 / 997 * arg1 != arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not arg2:
                if 997 * arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 997 * arg1:
                    return (997 * arg3 * arg1 / 997 * arg1)
            else:
                if 1000 * arg2 / arg2 != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if (997 * arg1) + (1000 * arg2) < 1000 * arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if (997 * arg1) + (1000 * arg2):
                    return (997 * arg3 * arg1 / (997 * arg1) + (1000 * arg2))
    revert
}



}
