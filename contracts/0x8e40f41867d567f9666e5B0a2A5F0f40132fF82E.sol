contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdrawal(address arg1, uint256 arg2)
#
address owner;
address sub_c9452f3fAddress;
address sub_0414e19dAddress;
array of address enableStrategy;

function sub_0414e19d(?) payable {
    return sub_0414e19dAddress
}

function owner() payable {
    return owner
}

function enableStrategy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < enableStrategy.length
    return enableStrategy[arg1]
}

function sub_c9452f3f(?) payable {
    return sub_c9452f3fAddress
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

function sub_689ef0e5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        enableStrategy.length++
        mem[0] = 3
        enableStrategy[enableStrategy.length] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function pending() payable {
    mem[64] = 96
    idx = 0
    s = 0
    t = 0
    while idx < enableStrategy.length:
        mem[0] = 3
        require ext_code.size(enableStrategy[idx])
        staticcall enableStrategy[idx].0x57405d25 with:
                gas gas_remaining wei
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require mem[_13] == mem[_13]
        require mem[_13 + 32] == mem[_13 + 32]
        if s > -mem[_13 + 32] - 1:
            revert with 'NH{q', 17
        if t > -mem[_13] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_13 + 32]
        t = t + mem[_13]
        continue 
    return s * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length, 
           t * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length * enableStrategy.length
}

function sub_6db45e6c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    idx = 0
    while idx < enableStrategy.length:
        mem[0] = 3
        mem[96] = 0x40d6f00f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(enableStrategy[idx])
        call enableStrategy[idx].0x40d6f00f with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[100] = this.address
    require ext_code.size(sub_c9452f3fAddress)
    staticcall sub_c9452f3fAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_c9452f3fAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_c9452f3fAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
    else:
        if not arg1:
            revert with 0, 'Reward is 0'
        if ext_call.return_data[0] > 0:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(sub_c9452f3fAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 328] = 0
            call sub_c9452f3fAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
    return ext_call.return_data[0]
}



}
