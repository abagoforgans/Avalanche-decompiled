contract main {




// =====================  Runtime code  =====================


#
#  - sub_6451c35d(?)
#  - withdrawTheToken(address arg1, uint256 arg2)
#  - approveForWSwap(address arg1, address arg2, uint256 arg3)
#  - approveForWSwap_for_all()
#
address owner;
address sub_e110930fAddress;
address sub_2bbf8413Address;
uint256 sub_c70ea45e;
uint256 approve_amounts;
uint256 approve_amounts_big;
mapping of uint8 stor6;
address stor7;
address stor8;

function sub_2bbf8413(?) payable {
    return sub_2bbf8413Address
}

function approve_amounts() payable {
    return approve_amounts
}

function approve_amounts_big() payable {
    return approve_amounts_big
}

function owner() payable {
    return owner
}

function sub_c70ea45e(?) payable {
    return sub_c70ea45e
}

function myWallets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_e110930f(?) payable {
    return sub_e110930fAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWallet() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[0x7d3c91427c8a91e9a5c9e2f6d19906a0f74cf47b] = 1
    stor6[0x5c102ee77a68942f617824c25e56f9fbf5b8b0d3] = 1
    stor6[0xc29c4bf900e1505b777352ddb34bf430cb56b5bd] = 1
    stor6[0x90909bcc8c4d5a600bd74dee5741400f03a69683] = 1
    stor6[0x7ae8e3937c25385654d7085a6811dcb18a70c3e4] = 1
    stor6[0x3385416c98bf6e562ca1979b7f97040452e6f31a] = 1
    stor6[0x4ddf23320bac1abb8f7020520a7105b2bf83e85] = 1
    stor6[0xa8519d6aa953f3e56835360362aa81bdbffcbe82] = 1
    stor6[0xf923189dcc1bdcb4f6e5c9b763e121c756a880d] = 1
    stor6[0x9b11e6261adabbcfde17e0931c78fea96bfa2cb9] = 1
    stor6[0x938787798fe839d01abd065257ebfbe4d6b4ca94] = 1
}

function sub_df485a25(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    mem[196] = arg3 - 576971
    require ext_code.size(stor8)
    staticcall stor8.allPairs(uint256 arg1) with:
            gas gas_remaining wei
           args (arg3 - 576971)
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[12 len 20] != sub_e110930fAddress:
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not stor6[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not the owner'
        mem[128] = sub_e110930fAddress
        mem[(4 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1
        mem[(4 * ceil32(return_data.size)) + 228] = arg2
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = approve_amounts
        require ext_code.size(stor7)
        call stor7.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _52 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _54 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _52 + (32 * _54) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _52 + 224
        t = (6 * ceil32(return_data.size)) + 224
        while idx < _54:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not stor6[address(msg.sender)]:
            revert with 0, 'Ownable: caller is not the owner'
        mem[128] = sub_e110930fAddress
        mem[(4 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1
        mem[(4 * ceil32(return_data.size)) + 228] = arg2
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = approve_amounts
        require ext_code.size(stor7)
        call stor7.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _53 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _55 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
        mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require _53 + (32 * _55) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _53 + 224
        t = (6 * ceil32(return_data.size)) + 224
        while idx < _55:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
