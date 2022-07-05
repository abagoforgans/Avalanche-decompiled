contract main {




// =====================  Runtime code  =====================


#
#  - uniswap_swapExactTokensForTokens_sell(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5)
#  - withdrawTheToken(address arg1, uint256 arg2)
#  - approveForWSwap(address arg1, address arg2, uint256 arg3)
#  - approveForWSwap_for_all()
#  - withdrawTheToken_all()
#
address owner;
address sub_e110930fAddress;
address usdcAddress;
address usdtAddress;
address mimAddress;
address sub_2bbf8413Address;
address pangolin_address;
address sub_292adf1dAddress;
uint256 sub_c70ea45e;
uint256 approve_amounts;
uint256 approve_amounts_big;
mapping of uint8 stor11;
address stor12;
address stor13;
address stor14;
address stor15;

function usdcAddress() payable {
    return usdcAddress
}

function sub_292adf1d(?) payable {
    return sub_292adf1dAddress
}

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

function usdtAddress() payable {
    return usdtAddress
}

function pangolin_address() payable {
    return pangolin_address
}

function sub_c70ea45e(?) payable {
    return sub_c70ea45e
}

function mimAddress() payable {
    return mimAddress
}

function myWallets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
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

function addWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
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
    stor11[0x7d3c91427c8a91e9a5c9e2f6d19906a0f74cf47b] = 1
    stor11[0x5c102ee77a68942f617824c25e56f9fbf5b8b0d3] = 1
    stor11[0xc29c4bf900e1505b777352ddb34bf430cb56b5bd] = 1
    stor11[0x90909bcc8c4d5a600bd74dee5741400f03a69683] = 1
    stor11[0x7ae8e3937c25385654d7085a6811dcb18a70c3e4] = 1
    stor11[0x3385416c98bf6e562ca1979b7f97040452e6f31a] = 1
    stor11[0x4ddf23320bac1abb8f7020520a7105b2bf83e85] = 1
    stor11[0xa8519d6aa953f3e56835360362aa81bdbffcbe82] = 1
    stor11[0xf923189dcc1bdcb4f6e5c9b763e121c756a880d] = 1
    stor11[0x9b11e6261adabbcfde17e0931c78fea96bfa2cb9] = 1
    stor11[0x938787798fe839d01abd065257ebfbe4d6b4ca94] = 1
}

function uniswap_swapTokensForExactTokens_buy(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    mem[96] = 2
    if not arg5:
        mem[196] = arg3 + -block.gasprice + -eth.balance(sub_292adf1dAddress) - 576971
        require ext_code.size(stor13)
        staticcall stor13.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (arg3 + -block.gasprice + -eth.balance(sub_292adf1dAddress) - 576971)
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
        if ext_call.return_data[12 len 20] != arg4:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[0] = msg.sender
            mem[32] = 11
            if not stor11[address(msg.sender)]:
                revert with 0, 'Ownable: caller is not the owner'
            mem[128] = arg4
            if not arg5:
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
                require ext_code.size(stor12)
                call stor12.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _229 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _241 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require _229 + (32 * _241) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _229 + 224
                t = (6 * ceil32(return_data.size)) + 224
                while idx < _241:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if arg5 == 1:
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
                    require ext_code.size(stor14)
                    call stor14.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _228 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _240 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require _228 + (32 * _240) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _228 + 224
                    t = (6 * ceil32(return_data.size)) + 224
                    while idx < _240:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[0] = msg.sender
            mem[32] = 11
            if not stor11[address(msg.sender)]:
                revert with 0, 'Ownable: caller is not the owner'
            mem[128] = arg4
            if not arg5:
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
                require ext_code.size(stor12)
                call stor12.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _231 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _243 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require _231 + (32 * _243) + 32 <= return_data.size
                idx = 0
                s = (4 * ceil32(return_data.size)) + _231 + 224
                t = (6 * ceil32(return_data.size)) + 224
                while idx < _243:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if arg5 == 1:
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
                    require ext_code.size(stor14)
                    call stor14.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _230 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _242 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require _230 + (32 * _242) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _230 + 224
                    t = (6 * ceil32(return_data.size)) + 224
                    while idx < _242:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    else:
        if arg5 != 1:
            require ext_code.size(0)
            staticcall 0x0.token0() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0)
            if ext_call.return_data[12 len 20] != arg4:
                staticcall 0x0.token0() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[0] = msg.sender
                mem[32] = 11
                if not stor11[address(msg.sender)]:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[128] = arg4
                if not arg5:
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = approve_amounts
                    require ext_code.size(stor12)
                    call stor12.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _221 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _233 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require _221 + (32 * _233) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _221 + 224
                    t = (4 * ceil32(return_data.size)) + 224
                    while idx < _233:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 == 1:
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg1
                        mem[(2 * ceil32(return_data.size)) + 228] = arg2
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = approve_amounts
                        require ext_code.size(stor14)
                        call stor14.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _220 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _232 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require _220 + (32 * _232) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _220 + 224
                        t = (4 * ceil32(return_data.size)) + 224
                        while idx < _232:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                staticcall 0x0.0xd21220a7 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[0] = msg.sender
                mem[32] = 11
                if not stor11[address(msg.sender)]:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[128] = arg4
                if not arg5:
                    mem[(2 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                    mem[(2 * ceil32(return_data.size)) + 228] = arg2
                    mem[(2 * ceil32(return_data.size)) + 260] = 160
                    mem[(2 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = 128
                    t = (2 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 292] = this.address
                    mem[(2 * ceil32(return_data.size)) + 324] = approve_amounts
                    require ext_code.size(stor12)
                    call stor12.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _223 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                    _235 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require _223 + (32 * _235) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + _223 + 224
                    t = (4 * ceil32(return_data.size)) + 224
                    while idx < _235:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 == 1:
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg1
                        mem[(2 * ceil32(return_data.size)) + 228] = arg2
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = 128
                        t = (2 * ceil32(return_data.size)) + 388
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = this.address
                        mem[(2 * ceil32(return_data.size)) + 324] = approve_amounts
                        require ext_code.size(stor14)
                        call stor14.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _222 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
                        _234 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                        require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                        mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require _222 + (32 * _234) + 32 <= return_data.size
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + _222 + 224
                        t = (4 * ceil32(return_data.size)) + 224
                        while idx < _234:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[196] = arg3 + -block.gasprice + -eth.balance(sub_292adf1dAddress) - 576971
            require ext_code.size(stor15)
            staticcall stor15.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg3 + -block.gasprice + -eth.balance(sub_292adf1dAddress) - 576971)
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
            if ext_call.return_data[12 len 20] != arg4:
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[0] = msg.sender
                mem[32] = 11
                if not stor11[address(msg.sender)]:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[128] = arg4
                if not arg5:
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
                    require ext_code.size(stor12)
                    call stor12.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _225 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _237 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require _225 + (32 * _237) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _225 + 224
                    t = (6 * ceil32(return_data.size)) + 224
                    while idx < _237:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 == 1:
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
                        require ext_code.size(stor14)
                        call stor14.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _224 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _236 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require _224 + (32 * _236) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _224 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _236:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                staticcall address(ext_call.return_data[0]).0xd21220a7 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[0] = msg.sender
                mem[32] = 11
                if not stor11[address(msg.sender)]:
                    revert with 0, 'Ownable: caller is not the owner'
                mem[128] = arg4
                if not arg5:
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
                    require ext_code.size(stor12)
                    call stor12.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _227 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _239 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                    require _227 + (32 * _239) + 32 <= return_data.size
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + _227 + 224
                    t = (6 * ceil32(return_data.size)) + 224
                    while idx < _239:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if arg5 == 1:
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
                        require ext_code.size(stor14)
                        call stor14.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg1, arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), approve_amounts
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _226 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _238 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                        require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0
                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                        require _226 + (32 * _238) + 32 <= return_data.size
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + _226 + 224
                        t = (6 * ceil32(return_data.size)) + 224
                        while idx < _238:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
}



}
