contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
uint32 stor1;
address beneficiaryAddress;
uint256 stor1;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor5;
mapping of uint256 released;
mapping of uint8 stor7;

function duration() payable {
    return duration
}

function cliff() payable {
    return cliff
}

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function revocable() payable {
    return bool(stor5)
}

function owner() payable {
    return address(owner)
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    return released[address(arg1)]
}

function start() payable {
    return start
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5:
        revert with 0, 'TokenVesting: cannot revoke'
    if stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73546f6b656e56657374696e673a20746f6b656e20616c7265616479207265766f6b65,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
        revert with 0, 'SafeMath: Add Overflow'
    if block.timestamp < cliff:
        if -released[address(arg1)] > 0:
            revert with 0, 'SafeMath: Underflow'
        if ext_call.return_data[0] + released[address(arg1)] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: Underflow'
        stor7[address(arg1)] = 1
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, ext_call.return_data[0] + released[address(arg1)]) >> 32
        call arg1 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] + released[address(arg1)]) << 224, mem[260 len 4]
    else:
        if start + duration < duration:
            revert with 0, 'SafeMath: Add Overflow'
        if block.timestamp >= start + duration:
            if -released[address(arg1)] > 0:
                revert with 0, 'SafeMath: Underflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: Underflow'
            stor7[address(arg1)] = 1
            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args 0, mem[260 len 4]
        else:
            if stor7[address(arg1)]:
                if -released[address(arg1)] > 0:
                    revert with 0, 'SafeMath: Underflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: Underflow'
                stor7[address(arg1)] = 1
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0
                call arg1 with:
                   funct uint32(stor0)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), 0) << 256, mem[260 len 4]
            else:
                if block.timestamp - start > block.timestamp:
                    revert with 0, 'SafeMath: Underflow'
                if not block.timestamp - start:
                    if duration <= 0:
                        revert with 0, 'SafeMath: Div by Zero'
                    require duration
                    if (0 / duration) - released[address(arg1)] > 0 / duration:
                        revert with 0, 'SafeMath: Underflow'
                    if ext_call.return_data[0] - (0 / duration) + released[address(arg1)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: Underflow'
                    stor7[address(arg1)] = 1
                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]) >> 32
                    call arg1 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (0 / duration) + released[address(arg1)]) << 224, mem[260 len 4]
                else:
                    require block.timestamp - start
                    if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / block.timestamp - start != ext_call.return_data[0] + released[address(arg1)]:
                        revert with 0, 'SafeMath: Mul Overflow'
                    if duration <= 0:
                        revert with 0, 'SafeMath: Div by Zero'
                    require duration
                    if ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] > (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
                        revert with 0, 'SafeMath: Underflow'
                    if ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: Underflow'
                    stor7[address(arg1)] = 1
                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)]) >> 32
                    call arg1 with:
                       funct uint32(stor0)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)]) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: Transfer failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'SafeERC20: Transfer failed'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: Transfer failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'SafeERC20: Transfer failed'
    emit TokenVestingRevoked(arg1);
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
        revert with 0, 'SafeMath: Add Overflow'
    if block.timestamp < cliff:
        if -released[address(arg1)] > 0:
            revert with 0, 'SafeMath: Underflow'
        revert with 0, 'TokenVesting: no tokens are due'
    if start + duration < duration:
        revert with 0, 'SafeMath: Add Overflow'
    if block.timestamp >= start + duration:
        if -released[address(arg1)] > 0:
            revert with 0, 'SafeMath: Underflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'TokenVesting: no tokens are due'
        if released[address(arg1)] < 0:
            revert with 0, 'SafeMath: Add Overflow'
        released[address(arg1)] += ext_call.return_data[0]
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(stor1)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: Transfer failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                revert with 0, 'SafeERC20: Transfer failed'
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: Transfer failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 'SafeERC20: Transfer failed'
        emit TokensReleased(address(arg1), ext_call.return_data[0]);
    else:
        if stor7[address(arg1)]:
            if -released[address(arg1)] > 0:
                revert with 0, 'SafeMath: Underflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'TokenVesting: no tokens are due'
            if released[address(arg1)] < 0:
                revert with 0, 'SafeMath: Add Overflow'
            released[address(arg1)] += ext_call.return_data[0]
            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: Transfer failed'
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                    revert with 0, 'SafeERC20: Transfer failed'
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: Transfer failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 'SafeERC20: Transfer failed'
            emit TokensReleased(address(arg1), ext_call.return_data[0]);
        else:
            if block.timestamp - start > block.timestamp:
                revert with 0, 'SafeMath: Underflow'
            if not block.timestamp - start:
                if duration <= 0:
                    revert with 0, 'SafeMath: Div by Zero'
                require duration
                if (0 / duration) - released[address(arg1)] > 0 / duration:
                    revert with 0, 'SafeMath: Underflow'
                if (0 / duration) - released[address(arg1)] <= 0:
                    revert with 0, 'TokenVesting: no tokens are due'
                if released[address(arg1)] < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                released[address(arg1)] = 0 / duration
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, (0 / duration) - released[address(arg1)]) >> 32
                call arg1 with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, (0 / duration) - released[address(arg1)]) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: Transfer failed'
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                        revert with 0, 'SafeERC20: Transfer failed'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: Transfer failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'SafeERC20: Transfer failed'
                emit TokensReleased(address(arg1), (0 / duration) - released[address(arg1)]);
            else:
                require block.timestamp - start
                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / block.timestamp - start != ext_call.return_data[0] + released[address(arg1)]:
                    revert with 0, 'SafeMath: Mul Overflow'
                if duration <= 0:
                    revert with 0, 'SafeMath: Div by Zero'
                require duration
                if ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] > (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
                    revert with 0, 'SafeMath: Underflow'
                if ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] <= 0:
                    revert with 0, 'TokenVesting: no tokens are due'
                if released[address(arg1)] < 0:
                    revert with 0, 'SafeMath: Add Overflow'
                released[address(arg1)] = (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]) >> 32
                call arg1 with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]) << 224, mem[260 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: Transfer failed'
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
                        revert with 0, 'SafeERC20: Transfer failed'
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: Transfer failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[228]:
                            revert with 0, 'SafeERC20: Transfer failed'
                emit TokensReleased(address(arg1), ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]);
}



}
