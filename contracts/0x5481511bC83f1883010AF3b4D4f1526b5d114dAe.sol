contract main {




// =====================  Runtime code  =====================


address owner;
address controllerAddress;
array of struct stor2;

function owner() payable {
    return owner
}

function controller() payable {
    return controllerAddress
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

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    controllerAddress = arg1
}

function withdrawEth() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setTokenSwapTarget(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    stor2[arg1].field_1024 = arg2
    if arg3:
        if arg1 >= stor2.length:
            revert with 'NH{q', 50
        stor2[arg1].field_1536 = 0
        stor2[arg1].field_1792 = 0
}

function addOlympus(address arg1, address arg2, address arg3, address arg4, address arg5, string arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg6.length)) + 97 > test266151307() or ceil32(ceil32(arg6.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg6 + arg6.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2.length++
    stor2[stor2.length].field_0 = arg1
    stor2[stor2.length].field_256 = arg2
    stor2[stor2.length].field_512 = arg3
    stor2[stor2.length].field_768 = arg4
    stor2[stor2.length].field_1024 = arg5
    stor2[stor2.length].field_1280 = 0
    stor2[stor2.length].field_1536 = 0
    stor2[stor2.length].field_1792 = 0
    if stor2[stor2.length].field_2048:
        if stor2[stor2.length].field_2048 == stor2[stor2.length].field_2049 < 32:
            revert with 'NH{q', 34
        if arg6.length:
            stor[sha3((9 * stor2.length) + ('name', 'stor2', 2) + 8)][].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            stor2[stor2.length].field_2048 = 0
            idx = 0
            while stor2[stor2.length].field_2049 + 31 / 32 > idx:
                stor[idx + sha3((9 * stor2.length) + ('name', 'stor2', 2) + 8)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor2.length].field_2048 == stor2[stor2.length].field_2049 < 32:
            revert with 'NH{q', 34
        if arg6.length:
            stor[sha3((9 * stor2.length) + ('name', 'stor2', 2) + 8)][].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            stor2[stor2.length].field_2048 = 0
            idx = 0
            while stor2[stor2.length].field_2049 + 31 / 32 > idx:
                stor[idx + sha3((9 * stor2.length) + ('name', 'stor2', 2) + 8)].field_0 = 0
                idx = idx + 1
                continue 
}

function depositAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    require ext_code.size(stor2[arg1].field_0)
    staticcall stor2[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2[arg1].field_512, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2[arg1].field_512)
    call stor2[arg1].field_512.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2[arg1].field_512)
    call stor2[arg1].field_512.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2[arg1].field_1280 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    stor2[arg1].field_1280 += ext_call.return_data[0]
    require ext_code.size(stor2[arg1].field_256)
    call stor2[arg1].field_256.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2[arg1].field_512, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
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
}

function olympus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor2.length
    if stor2[arg1].field_2048:
        if stor2[arg1].field_2048 == stor2[arg1].field_2049 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_2048:
            if stor2[arg1].field_2048 == stor2[arg1].field_2049 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_2049:
                if 31 >= stor2[arg1].field_2049:
                    mem[128] = 256 * stor2[arg1].field_2056
                else:
                    mem[128] = stor[sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_2049 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_2048 == stor2[arg1].field_2049 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_2049:
                if 31 >= stor2[arg1].field_2049:
                    mem[128] = 256 * stor2[arg1].field_2056
                else:
                    mem[128] = stor[sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_2049 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor2[arg1].field_0, 
               stor2[arg1].field_256,
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               stor2[arg1].field_1024,
               stor2[arg1].field_1280,
               stor2[arg1].field_1536,
               stor2[arg1].field_1792,
               Array(len=2 * Mask(256, -1, stor2[arg1].field_2049), data=mem[128 len ceil32(stor2[arg1].field_2049)])
    if stor2[arg1].field_2048 == stor2[arg1].field_2049 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_2048:
        if stor2[arg1].field_2048 == stor2[arg1].field_2049 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_2049:
            if 31 >= stor2[arg1].field_2049:
                mem[128] = 256 * stor2[arg1].field_2056
            else:
                mem[128] = stor[sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_2049 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_2048 == stor2[arg1].field_2049 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_2049:
            if 31 >= stor2[arg1].field_2049:
                mem[128] = 256 * stor2[arg1].field_2056
            else:
                mem[128] = stor[sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_2049 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor2', 2) + 8)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor2[arg1].field_0, 
           stor2[arg1].field_256,
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           stor2[arg1].field_1024,
           stor2[arg1].field_1280,
           stor2[arg1].field_1536,
           stor2[arg1].field_1792,
           Array(len=stor2[arg1].field_2048, data=mem[128 len ceil32(stor2[arg1].field_2049)])
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    mem[100] = this.address
    require ext_code.size(stor2[arg1].field_256)
    staticcall stor2[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = stor2[arg1].field_512
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(stor2[arg1].field_256)
    call stor2[arg1].field_256.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2[arg1].field_512, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 1
    require ext_code.size(stor2[arg1].field_512)
    call stor2[arg1].field_512.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(stor2[arg1].field_0)
    staticcall stor2[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stor2[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call stor2[arg1].field_0 with:
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
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor2[arg1].field_1280 = 0
}

function farm(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if controllerAddress != msg.sender:
        revert with 0, '!ctrl'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    mem[0] = 2
    require ext_code.size(stor2[arg1].field_512)
    call stor2[arg1].field_512.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 2
    mem[128] = stor2[arg1].field_0
    mem[160] = stor2[arg1].field_1024
    mem[196] = stor2[arg1].field_768
    mem[228] = arg2
    require ext_code.size(stor2[arg1].field_0)
    call stor2[arg1].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2[arg1].field_768, arg2
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -301:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = arg3
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = owner
    mem[ceil32(return_data.size) + 324] = block.timestamp + 300
    require ext_code.size(stor2[arg1].field_768)
    call stor2[arg1].field_768.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), owner, block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _33 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _34 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _34
    require _33 + (32 * _34) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _33 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _34:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2[arg1].field_256)
    staticcall stor2[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _48 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_48] == mem[_48]
    stor2[arg1].field_1280 = mem[_48]
    if 0 >= _34:
        revert with 'NH{q', 50
    if stor2[arg1].field_1536 > -mem[(2 * ceil32(return_data.size)) + 224] - 1:
        revert with 'NH{q', 17
    stor2[arg1].field_1536 += mem[(2 * ceil32(return_data.size)) + 224]
    if 1 >= _34:
        revert with 'NH{q', 50
    if stor2[arg1].field_1792 > -mem[(2 * ceil32(return_data.size)) + 256] - 1:
        revert with 'NH{q', 17
    stor2[arg1].field_1792 += mem[(2 * ceil32(return_data.size)) + 256]
}

function farmHalf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if controllerAddress != msg.sender:
        revert with 0, '!ctrl'
    if arg1 >= stor2.length:
        revert with 'NH{q', 50
    mem[100] = this.address
    require ext_code.size(stor2[arg1].field_256)
    staticcall stor2[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor2[arg1].field_1280:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - stor2[arg1].field_1280 / 2 > 0:
        if controllerAddress != msg.sender:
            revert with 0, '!ctrl'
        if arg1 >= stor2.length:
            revert with 'NH{q', 50
        mem[0] = 2
        require ext_code.size(stor2[arg1].field_512)
        call stor2[arg1].field_512.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args Mask(255, 1, ext_call.return_data[0] - stor2[arg1].field_1280), 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor2[arg1].field_0
        mem[ceil32(return_data.size) + 160] = stor2[arg1].field_1024
        mem[ceil32(return_data.size) + 196] = stor2[arg1].field_768
        mem[ceil32(return_data.size) + 228] = ext_call.return_data[0] - stor2[arg1].field_1280 / 2
        require ext_code.size(stor2[arg1].field_0)
        call stor2[arg1].field_0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor2[arg1].field_768, ext_call.return_data[0] - stor2[arg1].field_1280 / 2
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if block.timestamp > -301:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] - stor2[arg1].field_1280 / 2
        mem[(2 * ceil32(return_data.size)) + 228] = 0
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = owner
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 300
        require ext_code.size(stor2[arg1].field_768)
        call stor2[arg1].field_768.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _40 = mem[_39]
        require mem[_39] <= test266151307()
        require _39 + mem[_39] + 31 < _39 + return_data.size
        _41 = mem[_39 + mem[_39]]
        if mem[_39 + mem[_39]] > test266151307():
            revert with 'NH{q', 65
        if _39 + ceil32(return_data.size) + floor32(mem[_39 + mem[_39]]) + 1 > test266151307() or floor32(mem[_39 + mem[_39]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _39 + ceil32(return_data.size) + floor32(mem[_39 + mem[_39]]) + 1
        mem[_39 + ceil32(return_data.size)] = _41
        require _40 + (32 * _41) + 32 <= return_data.size
        idx = 0
        s = _39 + _40 + 32
        t = _39 + ceil32(return_data.size) + 32
        while idx < _41:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor2[arg1].field_256)
        staticcall stor2[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == mem[_55]
        stor2[arg1].field_1280 = mem[_55]
        if 0 >= _41:
            revert with 'NH{q', 50
        if stor2[arg1].field_1536 > -mem[_39 + ceil32(return_data.size) + 32] - 1:
            revert with 'NH{q', 17
        stor2[arg1].field_1536 += mem[_39 + ceil32(return_data.size) + 32]
        if 1 >= _41:
            revert with 'NH{q', 50
        if stor2[arg1].field_1792 > -mem[_39 + ceil32(return_data.size) + 64] - 1:
            revert with 'NH{q', 17
        stor2[arg1].field_1792 += mem[_39 + ceil32(return_data.size) + 64]
}



}
