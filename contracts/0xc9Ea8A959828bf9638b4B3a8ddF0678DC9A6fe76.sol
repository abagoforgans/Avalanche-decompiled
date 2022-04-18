contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
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
    return owner
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[arg1]
}

function start() payable {
    return start
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
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

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg5 == arg5
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if not arg1:
        revert with 0, '_beneficiary cannot be address 0'
    if arg3 > arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_duration needs to be more than _cliff'
    address(beneficiaryAddress) = arg1
    stor5 = uint8(arg5)
    duration = arg4
    if arg2 > !arg3:
        revert with 0, 17
    cliff = arg2 + arg3
    start = arg2
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
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
    if block.timestamp < cliff:
        return 0
    if start > !duration:
        revert with 0, 17
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released[address(arg1)])
    if stor7[address(arg1)]:
        return (ext_call.return_data[0] + released[address(arg1)])
    if block.timestamp < start:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 17
    if not duration:
        revert with 0, 18
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
    if block.timestamp < cliff:
        if 0 < released[address(arg1)]:
            revert with 0, 17
        return -released[address(arg1)]
    if start > !duration:
        revert with 0, 17
    if block.timestamp >= start + duration:
        if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
            revert with 0, 17
        return ext_call.return_data[0]
    if stor7[address(arg1)]:
        if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
            revert with 0, 17
        return ext_call.return_data[0]
    if block.timestamp < start:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 17
    if not duration:
        revert with 0, 18
    if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration < released[address(arg1)]:
        revert with 0, 17
    return (((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)])
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5:
        revert with 0, 'Not revocable'
    if stor7[address(arg1)]:
        revert with 0, 'Already revoked'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if block.timestamp < cliff:
        if 0 < released[address(arg1)]:
            revert with 0, 17
        if ext_call.return_data[0] < -released[address(arg1)]:
            revert with 0, 17
        stor7[address(arg1)] = 1
        mem[(2 * ceil32(return_data.size)) + 132] = owner
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + released[address(arg1)]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0.field_0)
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0] + released[address(arg1)], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0] + released[address(arg1)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0] + released[address(arg1)], 0) << 288)
    else:
        if start > !duration:
            revert with 0, 17
        if block.timestamp >= start + duration:
            if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            stor7[address(arg1)] = 1
            mem[(2 * ceil32(return_data.size)) + 132] = owner
            mem[(2 * ceil32(return_data.size)) + 164] = 0
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0.field_0)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0, 0) << 288)
        else:
            if stor7[address(arg1)]:
                if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                stor7[address(arg1)] = 1
                mem[(2 * ceil32(return_data.size)) + 132] = owner
                mem[(2 * ceil32(return_data.size)) + 164] = 0
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0.field_0)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0, 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0, 0) << 288)
            else:
                if block.timestamp < start:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
                    revert with 0, 17
                if not duration:
                    revert with 0, 18
                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration < released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]:
                    revert with 0, 17
                stor7[address(arg1)] = 1
                mem[(2 * ceil32(return_data.size)) + 132] = owner
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0.field_0)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) + released[address(arg1)], 0) << 288)
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
    emit Revoked(arg1);
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
    if block.timestamp < cliff:
        if 0 < released[address(arg1)]:
            revert with 0, 17
        if -released[address(arg1)] <= 0:
            revert with 0, 'No tokens to release'
        if released[address(arg1)] > !-released[address(arg1)]:
            revert with 0, 17
        released[address(arg1)] = 0
        mem[ceil32(return_data.size) + 132] = address(beneficiaryAddress)
        mem[ceil32(return_data.size) + 164] = -released[address(arg1)]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), -released[address(arg1)], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), -released[address(arg1)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), -released[address(arg1)], 0) << 288)
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
        emit Released(-released[address(arg1)]);
    else:
        if start > !duration:
            revert with 0, 17
        if block.timestamp >= start + duration:
            if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] <= 0:
                revert with 0, 'No tokens to release'
            if released[address(arg1)] > !ext_call.return_data[0]:
                revert with 0, 17
            released[address(arg1)] += ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = address(beneficiaryAddress)
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
            emit Released(ext_call.return_data[0]);
        else:
            if stor7[address(arg1)]:
                if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'No tokens to release'
                if released[address(arg1)] > !ext_call.return_data[0]:
                    revert with 0, 17
                released[address(arg1)] += ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = address(beneficiaryAddress)
                mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0], 0) << 288)
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
                emit Released(ext_call.return_data[0]);
            else:
                if block.timestamp < start:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - start > -1 / ext_call.return_data[0] + released[address(arg1)]:
                    revert with 0, 17
                if not duration:
                    revert with 0, 18
                if (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration < released[address(arg1)]:
                    revert with 0, 17
                if ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)] <= 0:
                    revert with 0, 'No tokens to release'
                if released[address(arg1)] > !(((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]):
                    revert with 0, 17
                released[address(arg1)] = (block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration
                mem[ceil32(return_data.size) + 132] = address(beneficiaryAddress)
                mem[ceil32(return_data.size) + 164] = ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)], 0
                mem[ceil32(return_data.size) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)], 0) << 288)
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
                emit Released((((block.timestamp * ext_call.return_data[0]) - (start * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (start * released[address(arg1)]) / duration) - released[address(arg1)]));
}



}
