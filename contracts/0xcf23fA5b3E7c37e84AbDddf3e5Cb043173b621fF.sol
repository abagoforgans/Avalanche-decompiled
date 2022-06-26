contract main {




// =====================  Runtime code  =====================


const denominator = 10000


address owner;
mapping of uint256 allocations;
mapping of uint256 sub_3f0bcfa0;
mapping of uint256 sub_db370dd3;
uint256 startTime;
uint256 totalBonus;
uint256 sub_91c3d749;
address sub_90842d7aAddress;
uint256 storEE60;

function sub_3f0bcfa0(?) payable {
    require calldata.size - 4 >= 32
    return sub_3f0bcfa0[arg1]
}

function allocations(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return allocations[arg1]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function sub_90842d7a(?) payable {
    return sub_90842d7aAddress
}

function sub_91c3d749(?) payable {
    return sub_91c3d749
}

function totalBonus() payable {
    return totalBonus
}

function sub_db370dd3(?) payable {
    require calldata.size - 4 >= 32
    return sub_db370dd3[arg1]
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

function sub_6ba5bb71(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0, 'Airdrop has already started'
    startTime = arg1
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

function getBonusAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < storEE60:
        return 0
    if allocations[address(arg1)] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if 10^9 * allocations[address(arg1)] and totalBonus > -1 / 10^9 * allocations[address(arg1)]:
        revert with 0, 17
    if not sub_91c3d749:
        revert with 0, 18
    return (10^9 * allocations[address(arg1)] * totalBonus / sub_91c3d749 / 10^9)
}

function register(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2.length == arg1.length
    require block.timestamp <= startTime
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        allocations[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        if idx >= arg2.length:
            revert with 0, 50
        if sub_91c3d749 > !cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        sub_91c3d749 += cd[((32 * idx) + arg2 + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getClaimableAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not allocations[address(arg1)]:
        return 0
    idx = 0
    s = 0
    while idx < 5:
        mem[0] = idx
        mem[32] = 2
        if block.timestamp < sub_3f0bcfa0[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 3
        if allocations[address(arg1)] and sub_db370dd3[idx] > -1 / allocations[address(arg1)]:
            revert with 0, 17
        if s > !(allocations[address(arg1)] * sub_db370dd3[idx]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (allocations[address(arg1)] * sub_db370dd3[idx])
        continue 
    if block.timestamp < storEE60:
        if s / 10000 > -1:
            revert with 0, 17
        return (s / 10000)
    if allocations[address(arg1)] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if 10^9 * allocations[address(arg1)] and totalBonus > -1 / 10^9 * allocations[address(arg1)]:
        revert with 0, 17
    if not sub_91c3d749:
        revert with 0, 18
    if s / 10000 > !(10^9 * allocations[address(arg1)] * totalBonus / sub_91c3d749 / 10^9):
        revert with 0, 17
    return ((s / 10000) + (10^9 * allocations[address(arg1)] * totalBonus / sub_91c3d749 / 10^9))
}

function claim() payable {
    if not allocations[address(msg.sender)]:
        revert with 0, 'Nothing to claim'
    idx = 0
    s = 0
    while idx < 5:
        mem[0] = idx
        mem[32] = 2
        if block.timestamp < sub_3f0bcfa0[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 3
        if allocations[address(msg.sender)] and sub_db370dd3[idx] > -1 / allocations[address(msg.sender)]:
            revert with 0, 17
        if s > !(allocations[address(msg.sender)] * sub_db370dd3[idx]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (allocations[address(msg.sender)] * sub_db370dd3[idx])
        continue 
    if block.timestamp < storEE60:
        if s / 10000 > -1:
            revert with 0, 17
        if s / 10000 <= 0:
            revert with 0, 'Nothing to claim'
        mem[100] = this.address
        require ext_code.size(sub_90842d7aAddress)
        staticcall sub_90842d7aAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s / 10000 > ext_call.return_data[0]:
            revert with 0, 'Not enough balance in contract'
        if sub_91c3d749 < allocations[msg.sender]:
            revert with 0, 17
        sub_91c3d749 -= allocations[msg.sender]
        if s / 10000 <= allocations[msg.sender]:
            if allocations[msg.sender] < s / 10000:
                revert with 0, 17
            if totalBonus > !(allocations[msg.sender] - (s / 10000)):
                revert with 0, 17
            totalBonus = totalBonus + allocations[msg.sender] - (s / 10000)
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = s / 10000
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_90842d7aAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, s / 10000, 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_90842d7aAddress with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, s / 10000, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, s / 10000, 0) << 288)
    else:
        if allocations[address(msg.sender)] > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
            revert with 0, 17
        if 10^9 * allocations[address(msg.sender)] and totalBonus > -1 / 10^9 * allocations[address(msg.sender)]:
            revert with 0, 17
        if not sub_91c3d749:
            revert with 0, 18
        if s / 10000 > !(10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9):
            revert with 0, 17
        if (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9) <= 0:
            revert with 0, 'Nothing to claim'
        mem[100] = this.address
        require ext_code.size(sub_90842d7aAddress)
        staticcall sub_90842d7aAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9) > ext_call.return_data[0]:
            revert with 0, 'Not enough balance in contract'
        if sub_91c3d749 < allocations[msg.sender]:
            revert with 0, 17
        sub_91c3d749 -= allocations[msg.sender]
        if (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9) <= allocations[msg.sender]:
            if allocations[msg.sender] < (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9):
                revert with 0, 17
            if totalBonus > !(allocations[msg.sender] - (s / 10000) - (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9)):
                revert with 0, 17
            totalBonus = totalBonus + allocations[msg.sender] - (s / 10000) - (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9)
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_90842d7aAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9), 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_90842d7aAddress with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, (s / 10000) + (10^9 * allocations[address(msg.sender)] * totalBonus / sub_91c3d749 / 10^9), 0) << 288)
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
}



}
