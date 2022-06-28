contract main {




// =====================  Runtime code  =====================


#
#  - release(address arg1)
#  - sub_86f3b157(?)
#
uint32 stor0;
address owner;
uint256 stor0;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint256 sub_da10c75c;
uint8 revocable;
address portfolioAddress; offset 8
uint256 stor8;
uint256 percentage;
mapping of uint256 sub_553fd907;
mapping of uint256 released;
mapping of uint8 stor12;

function getPercentage() payable {
    return percentage
}

function duration() payable {
    return duration
}

function cliff() payable {
    return cliff
}

function beneficiary() payable {
    return beneficiaryAddress
}

function sub_553fd907(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_553fd907[address(arg1)]
}

function revocable() payable {
    return bool(revocable)
}

function owner() payable {
    return address(owner)
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function start() payable {
    return start
}

function getPortfolio() payable {
    return portfolioAddress
}

function sub_da10c75c(?) payable {
    return sub_da10c75c
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_25dc2e66(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_da10c75c = arg1
}

function setPercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    percentage = arg1
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_59abb5ad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if beneficiaryAddress != address(arg1):
        return (beneficiaryAddress == address(arg1))
    if block.timestamp <= sub_da10c75c:
        return (block.timestamp > sub_da10c75c)
    return (block.timestamp < start)
}

function setPortfolio(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenVesting: portfolio is the zero address'
    portfolioAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function stringToBytes32(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not arg1.length:
        return 0
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_73091f77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_da10c75c:
        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor12[address(arg1)]:
        if stor8 and percentage > -1 / stor8:
            revert with 0, 17
        return (stor8 * percentage / 100)
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 17
    return ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100)
}

function sub_5c7f3436(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if beneficiaryAddress != address(arg2):
        return (beneficiaryAddress == address(arg2))
    if block.timestamp <= start:
        return (block.timestamp > start)
    if block.timestamp < sub_da10c75c:
        if 0 > sub_553fd907[address(arg1)]:
            return (0 > sub_553fd907[address(arg1)])
    else:
        require ext_code.size(address(arg1))
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor12[address(arg1)]:
            if stor8 and percentage > -1 / stor8:
                revert with 0, 17
            if stor8 * percentage / 100 > sub_553fd907[address(arg1)]:
                return (stor8 * percentage / 100 > sub_553fd907[address(arg1)])
        else:
            if ext_call.return_data[0] > !released[address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
                revert with 0, 17
            if (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100 > sub_553fd907[address(arg1)]:
                return ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100 > sub_553fd907[address(arg1)])
    return (block.timestamp > cliff)
}

function vestedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < sub_da10c75c:
        if ext_call.return_data[0] > !released[address(arg1)]:
            revert with 0, 17
        if ext_call.return_data[0] + released[address(arg1)] < 0:
            revert with 0, 17
        if block.timestamp < cliff:
            return 0
        if start > !duration:
            revert with 0, 17
        if block.timestamp >= start + duration:
            return (ext_call.return_data[0] + released[address(arg1)])
        if stor12[address(arg1)]:
            return (ext_call.return_data[0] + released[address(arg1)])
        if block.timestamp < cliff:
            revert with 0, 17
        if cliff < start:
            revert with 0, 17
        if duration < cliff - start:
            revert with 0, 17
        if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)]:
            revert with 0, 17
        if not duration - cliff + start:
            revert with 0, 18
        return ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start)
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor12[address(arg1)]:
        if stor8 and percentage > -1 / stor8:
            revert with 0, 17
        if ext_call.return_data[0] > !released[address(arg1)]:
            revert with 0, 17
        if ext_call.return_data[0] + released[address(arg1)] < stor8 * percentage / 100:
            revert with 0, 17
        if block.timestamp < cliff:
            return 0
        if start > !duration:
            revert with 0, 17
        if block.timestamp >= start + duration:
            return (ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100))
        if stor12[address(arg1)]:
            return (ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100))
        if block.timestamp < cliff:
            revert with 0, 17
        if cliff < start:
            revert with 0, 17
        if duration < cliff - start:
            revert with 0, 17
        if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100):
            revert with 0, 17
        if not duration - cliff + start:
            revert with 0, 18
        return ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start)
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] < (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100:
        revert with 0, 17
    if block.timestamp < cliff:
        return 0
    if start > !duration:
        revert with 0, 17
    if block.timestamp >= start + duration:
        return (ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100))
    if stor12[address(arg1)]:
        return (ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100))
    if block.timestamp < cliff:
        revert with 0, 17
    if cliff < start:
        revert with 0, 17
    if duration < cliff - start:
        revert with 0, 17
    if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
        revert with 0, 17
    if not duration - cliff + start:
        revert with 0, 18
    return ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start)
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not revocable:
        revert with 0, 'TokenVesting: cannot revoke'
    if stor12[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenVesting: token already revoked'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !released[address(arg1)]:
        revert with 0, 17
    stor8 = ext_call.return_data[0] + released[address(arg1)]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < sub_da10c75c:
        if block.timestamp < sub_da10c75c:
            if ext_call.return_data[0] > !released[address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] + released[address(arg1)] < 0:
                revert with 0, 17
            if block.timestamp < cliff:
                if 0 < released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] < -released[address(arg1)]:
                    revert with 0, 17
                stor12[address(arg1)] = 1
                emit TokenVestingRevoked(arg1);
                mem[(2 * ceil32(return_data.size)) + 132] = address(owner)
                mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + released[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0) << 288)
            else:
                if start > !duration:
                    revert with 0, 17
                if block.timestamp >= start + duration:
                    if ext_call.return_data[0] + released[address(arg1)] > -1:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    stor12[address(arg1)] = 1
                    emit TokenVestingRevoked(arg1);
                    mem[(2 * ceil32(return_data.size)) + 132] = address(owner)
                    mem[(2 * ceil32(return_data.size)) + 164] = 0
                    mem[(2 * ceil32(return_data.size)) + 96] = 68
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(2 * ceil32(return_data.size)) + 196] = 32
                    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
                    mem[(2 * ceil32(return_data.size)) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
                else:
                    if stor12[address(arg1)]:
                        if ext_call.return_data[0] + released[address(arg1)] > -1:
                            revert with 0, 17
                        if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(2 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
                    else:
                        if block.timestamp < cliff:
                            revert with 0, 17
                        if cliff < start:
                            revert with 0, 17
                        if duration < cliff - start:
                            revert with 0, 17
                        if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)]:
                            revert with 0, 17
                        if not duration - cliff + start:
                            revert with 0, 18
                        if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start > -1:
                            revert with 0, 17
                        if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - released[address(arg1)]:
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(2 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + released[address(arg1)]
                        mem[(2 * ceil32(return_data.size)) + 96] = 68
                        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(2 * ceil32(return_data.size)) + 196] = 32
                        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + released[address(arg1)], 0
                        mem[(2 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + released[address(arg1)], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + released[address(arg1)], 0) << 288)
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
        else:
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor12[address(arg1)]:
                if stor8 and percentage > -1 / stor8:
                    revert with 0, 17
                if ext_call.return_data[0] > !released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] < stor8 * percentage / 100:
                    revert with 0, 17
                if block.timestamp < cliff:
                    if 0 < released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] < -released[address(arg1)]:
                        revert with 0, 17
                    stor12[address(arg1)] = 1
                    emit TokenVestingRevoked(arg1);
                    mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + released[address(arg1)]
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0) << 288)
                else:
                    if start > !duration:
                        revert with 0, 17
                    if block.timestamp >= start + duration:
                        if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) > -1:
                            revert with 0, 17
                        if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] - (stor8 * percentage / 100):
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(4 * ceil32(return_data.size)) + 164] = stor8 * percentage / 100
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), stor8 * percentage / 100, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), stor8 * percentage / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), stor8 * percentage / 100, 0) << 288)
                    else:
                        if stor12[address(arg1)]:
                            if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) > -1:
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] - (stor8 * percentage / 100):
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = stor8 * percentage / 100
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), stor8 * percentage / 100, 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), stor8 * percentage / 100, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), stor8 * percentage / 100, 0) << 288)
                        else:
                            if block.timestamp < cliff:
                                revert with 0, 17
                            if cliff < start:
                                revert with 0, 17
                            if duration < cliff - start:
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100):
                                revert with 0, 17
                            if not duration - cliff + start:
                                revert with 0, 18
                            if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start > -1:
                                revert with 0, 17
                            if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - released[address(arg1)]:
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + released[address(arg1)]
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + released[address(arg1)], 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + released[address(arg1)], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + released[address(arg1)], 0) << 288)
            else:
                if ext_call.return_data[0] > !released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] > !released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] < (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100:
                    revert with 0, 17
                if block.timestamp < cliff:
                    if 0 < released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] < -released[address(arg1)]:
                        revert with 0, 17
                    stor12[address(arg1)] = 1
                    emit TokenVestingRevoked(arg1);
                    mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + released[address(arg1)]
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] + released[address(arg1)], 0) << 288)
                else:
                    if start > !duration:
                        revert with 0, 17
                    if block.timestamp >= start + duration:
                        if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) > -1:
                            revert with 0, 17
                        if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(4 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) << 288)
                    else:
                        if stor12[address(arg1)]:
                            if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) > -1:
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) << 288)
                        else:
                            if block.timestamp < cliff:
                                revert with 0, 17
                            if cliff < start:
                                revert with 0, 17
                            if duration < cliff - start:
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            if not duration - cliff + start:
                                revert with 0, 18
                            if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start > -1:
                                revert with 0, 17
                            if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - released[address(arg1)]:
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + released[address(arg1)]
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + released[address(arg1)], 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + released[address(arg1)], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + released[address(arg1)], 0) << 288)
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
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if stor12[address(arg1)]:
            if stor8 and percentage > -1 / stor8:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < sub_da10c75c:
                if ext_call.return_data[0] > !released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] < 0:
                    revert with 0, 17
                if block.timestamp < cliff:
                    if 0 > !(stor8 * percentage / 100):
                        revert with 0, 17
                    if stor8 * percentage / 100 < released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] < (stor8 * percentage / 100) - released[address(arg1)]:
                        revert with 0, 17
                    stor12[address(arg1)] = 1
                    emit TokenVestingRevoked(arg1);
                    mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)]
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0) << 288)
                else:
                    if start > !duration:
                        revert with 0, 17
                    if block.timestamp >= start + duration:
                        if ext_call.return_data[0] + released[address(arg1)] > !(stor8 * percentage / 100):
                            revert with 0, 17
                        if ext_call.return_data[0] + released[address(arg1)] + (stor8 * percentage / 100) < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] + (stor8 * percentage / 100):
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(4 * ceil32(return_data.size)) + 164] = -stor8 * percentage / 100
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -stor8 * percentage / 100, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -stor8 * percentage / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -stor8 * percentage / 100, 0) << 288)
                    else:
                        if stor12[address(arg1)]:
                            if ext_call.return_data[0] + released[address(arg1)] > !(stor8 * percentage / 100):
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] + (stor8 * percentage / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] + (stor8 * percentage / 100):
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = -stor8 * percentage / 100
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -stor8 * percentage / 100, 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -stor8 * percentage / 100, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -stor8 * percentage / 100, 0) << 288)
                        else:
                            if block.timestamp < cliff:
                                revert with 0, 17
                            if cliff < start:
                                revert with 0, 17
                            if duration < cliff - start:
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)]:
                                revert with 0, 17
                            if not duration - cliff + start:
                                revert with 0, 18
                            if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start > !(stor8 * percentage / 100):
                                revert with 0, 17
                            if ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + (stor8 * percentage / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + (stor8 * percentage / 100) - released[address(arg1)]:
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)]
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor12[address(arg1)]:
                    if stor8 and percentage > -1 / stor8:
                        revert with 0, 17
                    if ext_call.return_data[0] > !released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] < stor8 * percentage / 100:
                        revert with 0, 17
                    if block.timestamp < cliff:
                        if 0 > !(stor8 * percentage / 100):
                            revert with 0, 17
                        if stor8 * percentage / 100 < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < (stor8 * percentage / 100) - released[address(arg1)]:
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)]
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0) << 288)
                    else:
                        if start > !duration:
                            revert with 0, 17
                        if block.timestamp >= start + duration:
                            if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) > !(stor8 * percentage / 100):
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(6 * ceil32(return_data.size)) + 164] = 0
                            mem[(6 * ceil32(return_data.size)) + 96] = 68
                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 196] = 32
                            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
                            mem[(6 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
                        else:
                            if stor12[address(arg1)]:
                                if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) > !(stor8 * percentage / 100):
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = 0
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
                            else:
                                if block.timestamp < cliff:
                                    revert with 0, 17
                                if cliff < start:
                                    revert with 0, 17
                                if duration < cliff - start:
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100):
                                    revert with 0, 17
                                if not duration - cliff + start:
                                    revert with 0, 18
                                if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start > !(stor8 * percentage / 100):
                                    revert with 0, 17
                                if ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + (stor8 * percentage / 100) < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + (stor8 * percentage / 100) - released[address(arg1)]:
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)]
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0) << 288)
                else:
                    if ext_call.return_data[0] > !released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] > !released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] < (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100:
                        revert with 0, 17
                    if block.timestamp < cliff:
                        if 0 > !(stor8 * percentage / 100):
                            revert with 0, 17
                        if stor8 * percentage / 100 < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < (stor8 * percentage / 100) - released[address(arg1)]:
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)]
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - (stor8 * percentage / 100) + released[address(arg1)], 0) << 288)
                    else:
                        if start > !duration:
                            revert with 0, 17
                        if block.timestamp >= start + duration:
                            if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) > !(stor8 * percentage / 100):
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (stor8 * percentage / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (stor8 * percentage / 100):
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(6 * ceil32(return_data.size)) + 164] = ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100)
                            mem[(6 * ceil32(return_data.size)) + 96] = 68
                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 196] = 32
                            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100), 0
                            mem[(6 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100), 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100), 0) << 288)
                        else:
                            if stor12[address(arg1)]:
                                if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) > !(stor8 * percentage / 100):
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (stor8 * percentage / 100) < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (stor8 * percentage / 100):
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100)
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100), 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100), 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - (stor8 * percentage / 100), 0) << 288)
                            else:
                                if block.timestamp < cliff:
                                    revert with 0, 17
                                if cliff < start:
                                    revert with 0, 17
                                if duration < cliff - start:
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                if not duration - cliff + start:
                                    revert with 0, 18
                                if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start > !(stor8 * percentage / 100):
                                    revert with 0, 17
                                if ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + (stor8 * percentage / 100) < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + (stor8 * percentage / 100) - released[address(arg1)]:
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)]
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - (stor8 * percentage / 100) + released[address(arg1)], 0) << 288)
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if ext_call.return_data[0] > !released[address(arg1)]:
                revert with 0, 17
            if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < sub_da10c75c:
                if ext_call.return_data[0] > !released[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] + released[address(arg1)] < 0:
                    revert with 0, 17
                if block.timestamp < cliff:
                    if 0 > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                        revert with 0, 17
                    if (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100 < released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] < ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - released[address(arg1)]:
                        revert with 0, 17
                    stor12[address(arg1)] = 1
                    emit TokenVestingRevoked(arg1);
                    mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)]
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call arg1 with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) << 288)
                else:
                    if start > !duration:
                        revert with 0, 17
                    if block.timestamp >= start + duration:
                        if ext_call.return_data[0] + released[address(arg1)] > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                            revert with 0, 17
                        if ext_call.return_data[0] + released[address(arg1)] + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(4 * ceil32(return_data.size)) + 164] = -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100
                        mem[(4 * ceil32(return_data.size)) + 96] = 68
                        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(4 * ceil32(return_data.size)) + 196] = 32
                        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0
                        mem[(4 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) << 288)
                    else:
                        if stor12[address(arg1)]:
                            if ext_call.return_data[0] + released[address(arg1)] > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), -(ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100, 0) << 288)
                        else:
                            if block.timestamp < cliff:
                                revert with 0, 17
                            if cliff < start:
                                revert with 0, 17
                            if duration < cliff - start:
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)]:
                                revert with 0, 17
                            if not duration - cliff + start:
                                revert with 0, 18
                            if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            if ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - released[address(arg1)]:
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(4 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)]
                            mem[(4 * ceil32(return_data.size)) + 96] = 68
                            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(4 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 196] = 32
                            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0
                            mem[(4 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                        if not mem[(4 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor12[address(arg1)]:
                    if stor8 and percentage > -1 / stor8:
                        revert with 0, 17
                    if ext_call.return_data[0] > !released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] < stor8 * percentage / 100:
                        revert with 0, 17
                    if block.timestamp < cliff:
                        if 0 > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                            revert with 0, 17
                        if (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100 < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - released[address(arg1)]:
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)]
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) << 288)
                    else:
                        if start > !duration:
                            revert with 0, 17
                        if block.timestamp >= start + duration:
                            if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0] - (stor8 * percentage / 100) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(6 * ceil32(return_data.size)) + 164] = (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100)
                            mem[(6 * ceil32(return_data.size)) + 96] = 68
                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 196] = 32
                            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100), 0
                            mem[(6 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100), 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100), 0) << 288)
                        else:
                            if stor12[address(arg1)]:
                                if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ext_call.return_data[0] - (stor8 * percentage / 100) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100)
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100), 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100), 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), (stor8 * percentage / 100) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100), 0) << 288)
                            else:
                                if block.timestamp < cliff:
                                    revert with 0, 17
                                if cliff < start:
                                    revert with 0, 17
                                if duration < cliff - start:
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - (stor8 * percentage / 100):
                                    revert with 0, 17
                                if not duration - cliff + start:
                                    revert with 0, 18
                                if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                if ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - released[address(arg1)]:
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)]
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * stor8 * percentage / 100) + (cliff * stor8 * percentage / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) << 288)
                else:
                    if ext_call.return_data[0] > !released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] and percentage > -1 / ext_call.return_data[0] + released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] > !released[address(arg1)]:
                        revert with 0, 17
                    if ext_call.return_data[0] + released[address(arg1)] < (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100:
                        revert with 0, 17
                    if block.timestamp < cliff:
                        if 0 > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                            revert with 0, 17
                        if (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100 < released[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - released[address(arg1)]:
                            revert with 0, 17
                        stor12[address(arg1)] = 1
                        emit TokenVestingRevoked(arg1);
                        mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)]
                        mem[(6 * ceil32(return_data.size)) + 96] = 68
                        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                        mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(6 * ceil32(return_data.size)) + 196] = 32
                        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0
                        mem[(6 * ceil32(return_data.size)) + 328] = 0
                        call arg1 with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) << 288)
                    else:
                        if start > !duration:
                            revert with 0, 17
                        if block.timestamp >= start + duration:
                            if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                revert with 0, 17
                            if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            stor12[address(arg1)] = 1
                            emit TokenVestingRevoked(arg1);
                            mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                            mem[(6 * ceil32(return_data.size)) + 164] = 0
                            mem[(6 * ceil32(return_data.size)) + 96] = 68
                            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                            mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(6 * ceil32(return_data.size)) + 196] = 32
                            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
                            mem[(6 * ceil32(return_data.size)) + 328] = 0
                            call arg1 with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
                        else:
                            if stor12[address(arg1)]:
                                if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = 0
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), 0, 0) << 288)
                            else:
                                if block.timestamp < cliff:
                                    revert with 0, 17
                                if cliff < start:
                                    revert with 0, 17
                                if duration < cliff - start:
                                    revert with 0, 17
                                if ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) and block.timestamp - cliff > -1 / ext_call.return_data[0] + released[address(arg1)] - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                if not duration - cliff + start:
                                    revert with 0, 18
                                if (block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start > !((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100):
                                    revert with 0, 17
                                if ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) < released[address(arg1)]:
                                    revert with 0, 17
                                if ext_call.return_data[0] < ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) + ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) - released[address(arg1)]:
                                    revert with 0, 17
                                stor12[address(arg1)] = 1
                                emit TokenVestingRevoked(arg1);
                                mem[(6 * ceil32(return_data.size)) + 132] = address(owner)
                                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)]
                                mem[(6 * ceil32(return_data.size)) + 96] = 68
                                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor0)
                                mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
                                mem[(6 * ceil32(return_data.size)) + 196] = 32
                                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(arg1):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0
                                mem[(6 * ceil32(return_data.size)) + 328] = 0
                                call arg1 with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0]) - (cliff * ext_call.return_data[0]) + (block.timestamp * released[address(arg1)]) - (cliff * released[address(arg1)]) - (block.timestamp * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + (cliff * (ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) / duration - cliff + start) - ((ext_call.return_data[0] * percentage) + (released[address(arg1)] * percentage) / 100) + released[address(arg1)], 0) << 288)
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
