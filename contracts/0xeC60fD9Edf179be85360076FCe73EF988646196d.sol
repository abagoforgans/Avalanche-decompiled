contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address beneficiaryAddress;
uint256 stor0;
uint256 cliff;
uint256 start;
uint256 duration;
mapping of uint256 released;

function duration() payable {
    return duration
}

function cliff() payable {
    return cliff
}

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[arg1]
}

function start() payable {
    return start
}

function _fallback() payable {
    revert
}

function vestedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < cliff:
        return 0
    if start > !duration:
        revert with 0, 17
    if start + duration < start:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released[address(arg1)])
    if start > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < start:
        revert with 0, 17
    if not ext_call.return_data[0] + released[address(arg1)]:
        if not duration:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / duration)
    if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 17
    if not ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 18
    if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] != block.timestamp - start:
        revert with 0, 'SafeMath: multiplication overflow'
    if not duration:
        revert with 0, 'SafeMath: division by zero', 0
    return ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration)
}

function releasableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < cliff:
        if released[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < released[address(arg1)]:
            revert with 0, 17
        return -released[address(arg1)]
    if start > !duration:
        revert with 0, 17
    if start + duration < start:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp >= start + duration:
        if released[address(arg1)] > ext_call.return_data[0] + released[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
            revert with 0, 17
        return ext_call.return_data[0]
    if start > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < start:
        revert with 0, 17
    if not ext_call.return_data[0] + released[address(arg1)]:
        if not duration:
            revert with 0, 'SafeMath: division by zero', 0
        if released[address(arg1)] > 0 / duration:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / duration < released[address(arg1)]:
            revert with 0, 17
        return ((0 / duration) - released[address(arg1)])
    if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 17
    if not ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 18
    if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] != block.timestamp - start:
        revert with 0, 'SafeMath: multiplication overflow'
    if not duration:
        revert with 0, 'SafeMath: division by zero', 0
    if released[address(arg1)] > (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration < released[address(arg1)]:
        revert with 0, 17
    return (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)])
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < cliff:
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if released[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < released[address(arg1)]:
            revert with 0, 17
        require -released[address(arg1)] > 0
        if released[address(arg1)] > !-released[address(arg1)]:
            revert with 0, 17
        if 0 < released[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        released[address(arg1)] = 0
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), -released[address(arg1)], mem[ceil32(return_data.size) + 260 len 28]
        call arg1.mem[ceil32(return_data.size) + 260 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 264 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, '!TRANSFER_FAILED'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, '!TRANSFER_FAILED'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, '!TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, '!TRANSFER_FAILED'
        emit Released(-released[address(arg1)]);
    else:
        if start > !duration:
            revert with 0, 17
        if start + duration < start:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if block.timestamp >= start + duration:
            if released[address(arg1)] > ext_call.return_data[0] + released[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                revert with 0, 17
            require ext_call.return_data[0] > 0
            if released[address(arg1)] > !ext_call.return_data[0]:
                revert with 0, 17
            if released[address(arg1)] + ext_call.return_data[0] < released[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            released[address(arg1)] += ext_call.return_data[0]
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[ceil32(return_data.size) + 260 len 28]
            call arg1.mem[ceil32(return_data.size) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, '!TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, '!TRANSFER_FAILED'
            emit Released(ext_call.return_data[0]);
        else:
            if start > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp < start:
                revert with 0, 17
            if not ext_call.return_data[0] + released[address(arg1)]:
                if not duration:
                    revert with 0, 'SafeMath: division by zero', 0
                if released[address(arg1)] > 0 / duration:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / duration < released[address(arg1)]:
                    revert with 0, 17
                require (0 / duration) - released[address(arg1)] > 0
                if released[address(arg1)] > !((0 / duration) - released[address(arg1)]):
                    revert with 0, 17
                if 0 / duration < released[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                released[address(arg1)] = 0 / duration
                mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), (0 / duration) - released[address(arg1)], mem[ceil32(return_data.size) + 388 len 28]
                call arg1.mem[ceil32(return_data.size) + 388 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 392 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!TRANSFER_FAILED'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, '!TRANSFER_FAILED'
                else:
                    mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                        if not mem[ceil32(return_data.size) + 420]:
                            revert with 0, '!TRANSFER_FAILED'
                emit Released(((0 / duration) - released[address(arg1)]));
            else:
                if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
                    revert with 0, 17
                if not ext_call.return_data[0] + released[address(arg1)]:
                    revert with 0, 18
                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / ext_call.return_data[0] + released[address(arg1)] != block.timestamp - start:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not duration:
                    revert with 0, 'SafeMath: division by zero', 0
                if released[address(arg1)] > (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration < released[address(arg1)]:
                    revert with 0, 17
                require ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] > 0
                if released[address(arg1)] > !(((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]):
                    revert with 0, 17
                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration < released[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                released[address(arg1)] = (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)], mem[ceil32(return_data.size) + 388 len 28]
                call arg1.mem[ceil32(return_data.size) + 388 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 392 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, '!TRANSFER_FAILED'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, '!TRANSFER_FAILED'
                else:
                    mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, '!TRANSFER_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                        if not mem[ceil32(return_data.size) + 420]:
                            revert with 0, '!TRANSFER_FAILED'
                emit Released((((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]));
}



}
